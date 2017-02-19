function RaceUIDraw()
  sprite = trackLapList[currentLap].layers["Sprites"].sprite
  -- SHOW DEBUG INFO --
  if DEBUG then
    -- world collision
    love.graphics.setColor(255, 255, 0, 255)
    for i = 1,lapTotal do
      trackLapList[i]:box2d_draw()
    end

    -- player collision box
    love.graphics.setColor(255, 0, 0, 255)
    love.graphics.polygon('line', sprite.body:getWorldPoints(sprite.shape:getPoints()))

    love.graphics.setColor(0,0,255,255)
    love.graphics.rectangle('line', sprite.x-32, sprite.y-32, 64, 64)

		-- player location offset
		love.graphics.setColor(255,255,255,255)
		love.graphics.circle('fill', sprite.x, sprite.y, 5)

    love.graphics.pop()

    -- FPS counter
		love.graphics.setColor(0,255,0,255)
		local fps = "FPS: " .. love.timer.getFPS()
    love.graphics.printf(fps, 0, 0, ww, 'center')

    -- rider speed
    love.graphics.printf(TrimNum(sprite.body:getLinearVelocity(), 2), 0, 33, ww, 'center')

    -- rider STATE
    if sprite.riderState == IDLE then
      love.graphics.setColor(255,255,255,255)
      love.graphics.printf("IDLE", 0, 65, ww, 'center')
    elseif sprite.riderState == COAST then
      love.graphics.setColor(0,0,255,255)
      love.graphics.printf("COAST", 0, 65, ww, 'center')
    elseif sprite.riderState == GAS then
      love.graphics.setColor(0,255,0,255)
      love.graphics.printf("GAS", 0, 65, ww, 'center')
    elseif sprite.riderState == BRAKE then
      love.graphics.setColor(255,0,0,255)
      love.graphics.printf("BRAKE", 0, 65, ww, 'center')
    end

    love.graphics.setColor(0,0,0,120)
    love.graphics.rectangle('fill', ww/2 - 85, 44, 170, 60)
  else -- DEBUG
    love.graphics.pop()
  end

  love.graphics.setColor(255,255,255,255)

  -- UI BACKGROUNDS --
  love.graphics.setColor(0, 0, 0, 120)
  -- leaderboard, bike heat
  love.graphics.rectangle('fill', 0, 0, ww - 235, 44)
  -- timer
  love.graphics.rectangle('fill', ww - 235, -10, 275, 100, 10)

  -- LEADER BOARD --
  LeaderBoardDraw()

  -- TIMER -
  LapTimerDraw()

  love.graphics.setFont(gameFont)

  -- BIKE DASHBOARD --
	local blue = {0,0,255,255}
	local yellow = {255,255,0,255}
	local orange = {255,128,0,255}
	local red = {255,0,0,255}

	local heat = {
		[1] = blue,
		[2] = yellow,
		[3] = orange,
		[4] = red,
	}

	local heatStr = {}
	for i=1,sprite.heat do
		local color = heat[math.floor(i / 3) + 1]
		table.insert(heatStr, color)
		table.insert(heatStr, ">")
	end

	love.graphics.printf(heatStr, 250, 0, ww+4, 'left', 0, 1.3, 1.3)

  -- LAP COUNTER --
  love.graphics.setColor(255, 255, 255, 180)
  if currentLap == lapTotal then
    love.graphics.setColor(255,255,255,255)
    love.graphics.printf("FINAL LAP!", 5, 4, ww - 4, 'left')
  else
    love.graphics.printf("LAP: " .. currentLap .. " / " .. lapTotal, 5, 4, ww - 4, 'left')
  end

  love.graphics.setColor(255,255,255,255)

end
