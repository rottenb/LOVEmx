function race_uiDraw()
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

		-- player location offset
		love.graphics.setColor(255,255,255,255)
		love.graphics.circle('fill', sprite.x, sprite.y, 5)

    love.graphics.pop()

    -- FPS counter
		love.graphics.setFont(lapFont)
		love.graphics.setColor(0,255,0,200)
		local fps = "FPS: " .. love.timer.getFPS()
    love.graphics.printf(fps, 0, 0, ww, 'center')
  else
    love.graphics.pop()
  end

  love.graphics.setColor(255,255,255,255)

  -- UI BACKGROUNDS --
  love.graphics.setColor(0, 0, 0, 50)
  -- bike info, lap counter
  love.graphics.rectangle('fill', 0, 0, ww, 36)
  -- leaderboard
  love.graphics.rectangle('fill', 0, wh - 30, ww, wh)

  -- LEADER BOARD --
  love.graphics.setFont(leaderBoardFont)
  for i = 1, 5 do
    love.graphics.setColor(leaderBoard[i][1])
    love.graphics.print(i .. ". " .. leaderBoard[i][2], 5 + (ww/5) * (i-1), wh - 29)
  end

  -- BIKE DASHBOARD --
	love.graphics.setFont(lapFont)
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

	love.graphics.printf(heatStr, 5, 0, ww, 'left')

  -- LAP COUNTER --
  love.graphics.setColor(255, 255, 255, 100)
  love.graphics.setFont(lapFont)
  if currentLap == lapTotal then
    love.graphics.setColor(255,255,255,255)
    love.graphics.printf("FINAL LAP!", 0, 0, ww, 'right')
  else
    love.graphics.printf("LAP: " .. currentLap .. " / " .. lapTotal, 0, 0, ww, 'right')
  end

  love.graphics.setColor(255,255,255,255)

end
