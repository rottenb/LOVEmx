

-- RIDER STATE CONSTANTS
IDLE = 1
FORWARD = 3
COAST = 5
LEFT = 7
RIGHT = 9
WHEELIEUP = 13
WHEELIEDOWN = 15

function riderInit(spawnX, spawnY, spriteLayer)
    local playerOne = spriteLayer
    local imageMap = love.graphics.newImage("resources/sprites/rider_48.png")
    local imageWidth = imageMap:getWidth()
    local imageHeight = imageMap:getHeight()

    local frameSize = 48

    local ALT_FRAME = frameSize
    local IDLE_FRAME = frameSize * 0
    local FWD_FRAME = frameSize * 1
    local COAST_FRAME = frameSize * 2
    local LEFT_FRAME = frameSize * 3
    local RIGHT_FRAME = frameSize * 4
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
      -- animation frames
      animFrame = 0,
      riderState = IDLE,
      frames = {
        love.graphics.newQuad(IDLE_FRAME, 0, frameSize, frameSize, imageWidth, imageHeight),
        love.graphics.newQuad(IDLE_FRAME, ALT_FRAME, frameSize, frameSize, imageWidth, imageHeight),

        love.graphics.newQuad(FWD_FRAME, 0, frameSize, frameSize, imageWidth, imageHeight),
        love.graphics.newQuad(FWD_FRAME, ALT_FRAME, frameSize, frameSize, imageWidth, imageHeight),

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
    playerOne.sprite.body:setMass(100)
  	playerOne.sprite.body:setLinearDamping(10)
  	playerOne.sprite.body:setFixedRotation(true)

  	playerOne.sprite.shape   = love.physics.newRectangleShape(48, 24)
  	playerOne.sprite.fixture = love.physics.newFixture(playerOne.sprite.body, playerOne.sprite.shape)

  	-- Override Update callback
  	function playerOne:update(dt)
      local sprite = trackLapList[currentLap].layers["Sprites"].sprite
    	local x, y = 0, 0

      if joystick ~= nil then
        -- 1 = gas, 2 = brake

        if joystick:isDown(1) then
          sprite.riderState = FORWARD
          if sprite.speed < 8000 then
            sprite.speed = sprite.speed + 500
          end

          x = sprite.speed
        end

        if joystick:isDown(2) then
          sprite.riderState = COAST
          if sprite.speed > 0 then
            sprite.speed = sprite.speed - 4000
          end
          if sprite.speed < 0 then
            sprite.speed = 0
          end
          x = sprite.speed
        end

        if joystick:getHat(1) == 'u' and sprite.speed > 0 then
          sprite.riderState = LEFT
          y = -sprite.speed
        elseif joystick:getHat(1) == 'd' and sprite.speed > 0 then
          sprite.riderState = RIGHT
          y = sprite.speed
        end
      end

      sprite.body:applyForce(x, y)
    	sprite.x, sprite.y = sprite.body:getWorldCenter()

      local endx = trackLapList[currentLap].width *32 * currentLap
      if math.floor(sprite.x) >= endx then
        if currentLap ~= lapTotal then
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
  		local image = self.sprite.image
      local frame = self.sprite.frames[self.sprite.riderState + self.sprite.animFrame]
  		local x = math.floor(self.sprite.x)
  		local y = math.floor(self.sprite.y)
      local ox = 24 -- collision box
      local oy = 38 -- just the bike
      -- love.graphics.draw( drawable, quad, x, y, r, sx, sy, ox, oy, kx, ky )
  		love.graphics.draw(image, frame, x, y, r, sx, sy, ox, oy)
  	end -- playerOne:draw()

end
