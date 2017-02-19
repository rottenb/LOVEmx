HEAT_ELAPSED = 0
HEAT_FLIP = 10

FRAME_SIZE = 64

-- RIDER STATE CONSTANTS
IDLE = 1
GAS = 3
BRAKE = 5
COAST = 7
LEFT = 9
RIGHT = 11

function RiderInit(spawnX, spawnY, spriteLayer)
    local playerOne = spriteLayer
    local imageMap = love.graphics.newImage("resources/sprites/rider_64_brake.png")
    local imageWidth = imageMap:getWidth()
    local imageHeight = imageMap:getHeight()

    local frameSize = FRAME_SIZE

    local ALT_FRAME = frameSize
    local IDLE_FRAME = frameSize * 0
    local GAS_FRAME = frameSize * 1
    local BRAKE_FRAME = frameSize * 2
    local COAST_FRAME = frameSize * 3
    local LEFT_FRAME = frameSize * 4
    local RIGHT_FRAME = frameSize * 5
    local WLI1_FRAME = frameSize * 6
    local WLI2_FRAME = frameSize * 7
    local WLI3_FRAME = frameSize * 8
    local WLI4_FRAME = frameSize * 9
    local WLI5_FRAME = frameSize * 10

    -- RIDER OBJECT
    playerOne.sprite = {
      -- image data
      image = imageMap,
      -- spawn position
      x = spawnX,
      y = spawnY,
      -- player attributes
      speed = 0,
      heat = 0,
      jump = 0,
      -- animation frames
      animFrame = 0,
      riderState = IDLE,
      effects = {
        slow = false,
        offsetZ = 0,
        jumpZ = 10,
        rotate = 0,
      },
      frames = {
        love.graphics.newQuad(IDLE_FRAME, 0, frameSize, frameSize, imageWidth, imageHeight),
        love.graphics.newQuad(IDLE_FRAME, ALT_FRAME, frameSize, frameSize, imageWidth, imageHeight),

        love.graphics.newQuad(GAS_FRAME, 0, frameSize, frameSize, imageWidth, imageHeight),
        love.graphics.newQuad(GAS_FRAME, ALT_FRAME, frameSize, frameSize, imageWidth, imageHeight),

        love.graphics.newQuad(BRAKE_FRAME, 0, frameSize, frameSize, imageWidth, imageHeight),
        love.graphics.newQuad(BRAKE_FRAME, ALT_FRAME, frameSize, frameSize, imageWidth, imageHeight),

        love.graphics.newQuad(COAST_FRAME, 0, frameSize, frameSize, imageWidth, imageHeight),
        love.graphics.newQuad(COAST_FRAME, ALT_FRAME, frameSize, frameSize, imageWidth, imageHeight),

        love.graphics.newQuad(LEFT_FRAME, 0, frameSize, frameSize, imageWidth, imageHeight),
        love.graphics.newQuad(LEFT_FRAME, ALT_FRAME, frameSize, frameSize, imageWidth, imageHeight),

        love.graphics.newQuad(RIGHT_FRAME, 0, frameSize, frameSize, imageWidth, imageHeight),
        love.graphics.newQuad(RIGHT_FRAME, ALT_FRAME, frameSize, frameSize, imageWidth, imageHeight),

        love.graphics.newQuad(WLI1_FRAME, 0, frameSize, frameSize, imageWidth, imageHeight),
        love.graphics.newQuad(WLI1_FRAME, ALT_FRAME, frameSize, frameSize, imageWidth, imageHeight),
        love.graphics.newQuad(WLI2_FRAME, 0, frameSize, frameSize, imageWidth, imageHeight),
        love.graphics.newQuad(WLI2_FRAME, ALT_FRAME, frameSize, frameSize, imageWidth, imageHeight),
        love.graphics.newQuad(WLI3_FRAME, 0, frameSize, frameSize, imageWidth, imageHeight),
        love.graphics.newQuad(WLI3_FRAME, ALT_FRAME, frameSize, frameSize, imageWidth, imageHeight),
        love.graphics.newQuad(WLI4_FRAME, 0, frameSize, frameSize, imageWidth, imageHeight),
        love.graphics.newQuad(WLI4_FRAME, ALT_FRAME, frameSize, frameSize, imageWidth, imageHeight),
        love.graphics.newQuad(WLI5_FRAME, 0, frameSize, frameSize, imageWidth, imageHeight),
        love.graphics.newQuad(WLI5_FRAME, ALT_FRAME, frameSize, frameSize, imageWidth, imageHeight),
      }
    }

  	playerOne.sprite.body = love.physics.newBody(gameWorld, playerOne.sprite.x/2, playerOne.sprite.y, "dynamic")
    playerOne.sprite.body:setMass(400)
  	playerOne.sprite.body:setLinearDamping(0)
  	playerOne.sprite.body:setFixedRotation(true)

    local shapeX = FRAME_SIZE/2
    local shapeY = FRAME_SIZE/2
  	playerOne.sprite.shape   = love.physics.newRectangleShape(shapeX, shapeY)
  	playerOne.sprite.fixture = love.physics.newFixture(playerOne.sprite.body, playerOne.sprite.shape)

  	-- Override Update callback
  	function playerOne:update(dt)
      local sprite = self.sprite
      local vX, vY = sprite.body:getLinearVelocity()
    	local fX, fY = 0, 0
      local forceX = 1300
      local forceY = 1500

      if sprite.riderState == COAST then
        if vX <= 0 then
          fX = 0
        else
          fX = -forceX/2
        end
      end

      -- joystck controls
      if joystick ~= nil then
        if joystick:isDown(1) then
          sprite.riderState = GAS
          if vX >= forceX then
            fX = 0
          else
            fX = forceX*2.3
          end
        end

        if joystick:isDown(2) then
          sprite.riderState = BRAKE
          if vX <= 0 then
            fX = 0
            sprite.riderState = COAST
          else
            fX = -forceX*3
          end
        end

      --  if vX > 0 then
          if joystick:getHat(1) == 'u' then
            sprite.riderState = LEFT
            if vY > -forceY then
              fY = -50
            else
              fY = 0
            end
          elseif joystick:getHat(1) == 'd' then
            sprite.riderState = RIGHT
            if vY < forceY then
              fY = 50
            else
              fY = 0
            end
          else
            fY = 0
          end

          --sprite.body:applyLinearImpulse(0, fY)
        end
      --end

      if sprite.body:getLinearVelocity() <= 0 then
        sprite.body:setLinearVelocity(0,0)
      end

      sprite.body:applyForce(fX, fY)
    	sprite.x, sprite.y = sprite.body:getWorldCenter()


      local endx = trackLapList[currentLap].width *32 * currentLap
      if math.floor(sprite.x) >= endx then
        local pos = 5 - (currentLap - 1)
        if currentLap ~= lapTotal then
          if pos > 1 then
            swapRiders(pos, pos - 1)
          end
          currentLap = currentLap + 1
        end
        trackLapList[currentLap].layers["Sprites"].sprite = sprite
        if currentLap ~= lapTotal then
          trackLapList[currentLap-1]:removeLayer("Sprites")
        end
      end

      gameWorld:update(dt)

    end -- playerOne:update()

  	-- Override Draw callback
  	function playerOne:draw()
      self.sprite.y = self.sprite.y - self.sprite.effects["offsetZ"]

  		local image = self.sprite.image
      local frame = self.sprite.frames[self.sprite.riderState + self.sprite.animFrame]
  		local x = math.floor(self.sprite.x)
      local y = math.floor(self.sprite.y)
  		--local y = math.floor(self.sprite.y - self.sprite.effects["offsetZ"] - self.sprite.effects["jumpZ"])
      local ox = 32
      local oy = 32
      local r = math.rad(self.sprite.effects["rotate"])
  		love.graphics.draw(image, frame, x, y, r, sx, sy, ox, oy)
  	end -- playerOne:draw()

end
