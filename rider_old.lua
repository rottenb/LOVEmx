	function playerOne:update(dt)
    local sprite = trackLapList[currentLap].layers["Sprites"].sprite
    local x, y = 0, 0
    local s = 200

    -- joystck controlls
    if joystick ~= nil then
      -- 1 = gas, 2 = brake
      if joystick:isDown(1) then
        sprite.riderState = GAS
        local speedX = s

        if sprite.effects["slow"] then
          speedX = s / 1.5
        else
          speedX = s
        end

        if sprite.speed < speedX then
          sprite.speed = sprite.speed + 25
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
        if sprite.speed > -s then
          sprite.speed = sprite.speed - 60
        end

        if sprite.speed < -s then
          sprite.speed = -s
        end

        if sprite.heat > 0 then
          sprite.heat = sprite.heat - 1
        end

        x = sprite.speed
      end

      if sprite.speed > 0 and sprite.jump == 0 then
        if joystick:getHat(1) == 'u' then
          sprite.riderState = LEFT
          y = -sprite.speed
        elseif joystick:getHat(1) == 'd' then
          sprite.riderState = RIGHT
          y = sprite.speed
        end
      end
    end
--[[
    -- keyboard
    if love.keyboard.isDown("right") then
      sprite.riderState = GAS
      local speedX = s

      if sprite.effects["slow"] then
        speedX = s / 3
      else
        speedX = s
      end

      if sprite.speed < speedX then
        sprite.speed = sprite.speed + 5
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

    if sprite.speed > 0 and sprite.jump == 0 then
      if love.keyboard.isDown("w") then
        sprite.riderState = LEFT
        y = -sprite.speed
      elseif love.keyboard.isDown("s") then
        sprite.riderState = RIGHT
        y = sprite.speed
      end
    end
]]
    local jumpCount = 25
    local jumpArch = { 0,   5,  10,  20,  30,
                      40,  50,  60,  80,  80,
                      90, 100, 100, 100,  90,
                      80,  80,  60,  50,  40,
                      30,  20,  10,   5,   0 }

    local jumpAngle = {-40, -30, -20, -15, -10,
                        -5,  -5,  -5,   0,   0,
                         0,   0,   0,   0,   0,
                         0,   0,   0,  10,  10,
                        10,  10,   5,   5,   0 }

    local whoopCount
    local whoop = { 0, 5, 10, 15, 20 }

    if sprite.jump > 0 and sprite.jump <= jumpCount then
      sprite.effects["jumpZ"] = jumpArch[sprite.jump]
      sprite.effects["rotate"] = math.rad(jumpAngle[sprite.jump])
      sprite.jump = sprite.jump + 1
    else
      sprite.jump = 0
      sprite.effects["jumpZ"] = 0
    end

    sprite.body:applyForce(x, y)
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
