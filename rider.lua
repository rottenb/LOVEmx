HEAT_ELAPSED = 0
HEAT_FLIP = 10

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
      heat = 0,
      -- animation frames
      animFrame = 0,
      riderState = IDLE,
      effects = {
        slow = false,
        offsetZ = 0,
        rotate = 0,
      },
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
  	playerOne.sprite.body:setLinearDamping(10)
  	playerOne.sprite.body:setFixedRotation(true)

    local shapeX = 48
    local shapeY = 24
    shapeX, shapeY = 24, 12
  	playerOne.sprite.shape   = love.physics.newRectangleShape(shapeX, shapeY)
  	playerOne.sprite.fixture = love.physics.newFixture(playerOne.sprite.body, playerOne.sprite.shape)

  	-- Override Update callback
  	function playerOne:update(dt)
      local sprite = trackLapList[currentLap].layers["Sprites"].sprite
    	local x, y = 0, 0

      if sprite.riderState == COAST then
        if sprite.heat > 0 then
          sprite.heat = sprite.heat - 1
          if HEAT_ELAPSED > 0 then
            HEAT_ELAPSED = HEAT_ELAPSED - 1
          end
        end
      end

      if joystick ~= nil then
        -- 1 = gas, 2 = brake
        local s = 2000
        if joystick:isDown(1) then
          sprite.riderState = FORWARD
          local speedX = s

          if sprite.effects["slow"] then
            speedX = s / 3
          else
            speedX = s
          end

          if sprite.speed < speedX then
            sprite.speed = sprite.speed + 50
          else
            sprite.speed = speedX
          end

          if sprite.heat < 12 and HEAT_ELAPSED == HEAT_FLIP then
            sprite.heat = sprite.heat + 1
            HEAT_ELAPSED = 0
          else
            HEAT_ELAPSED = HEAT_ELAPSED + 1
          end

          x = sprite.speed
        end

        if joystick:isDown(2) then
          sprite.riderState = COAST
          if sprite.speed > 0 then
            sprite.speed = sprite.speed - 100
          end
          if sprite.speed < 0 then
            sprite.speed = 0
          end

          if sprite.heat > 0 then
            sprite.heat = sprite.heat - 1
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
  		local y = math.floor(self.sprite.y - self.sprite.effects["offsetZ"])
      local ox = 24
      local oy = 40
      local r = self.sprite.effects["rotate"]
  		love.graphics.draw(image, frame, x, y, r, sx, sy, ox, oy)
  	end -- playerOne:draw()

end
