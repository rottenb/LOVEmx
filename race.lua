ANIM_ELAPSED = 0
WHEELIE_COUNTER = -1

-- WHAT TO DO DURING A RACE --
function raceUpdate(dt)
	  trackLapList[currentLap]:update(dt)

	-- Update sprite's coordinates
	local sprite = trackLapList[currentLap].layers["Sprites"].sprite

  ANIM_ELAPSED = ANIM_ELAPSED + dt
  if ANIM_ELAPSED >= 0.05 then
    ANIM_ELAPSED = 0
    if sprite.animFrame == 0 then
      sprite.animFrame = 1
    else
      sprite.animFrame = 0
    end
  end

	if WHEELIE_COUNTER > -1 and WHEELIE_COUNTER < 4 then
		sprite.riderState = WHEELIEUP + 1
		WHEELIE_COUNTER = WHEELIE_COUNTER + 1
	end

end

function raceDraw(ww, wh)
  local sprite = trackLapList[currentLap].layers["Sprites"].sprite

  local trackW = trackLapList[currentLap].width * 32
  local trackH = trackLapList[currentLap].height * 32

  local maxX = trackW * lapTotal
  local maxY = trackH

  if math.floor(sprite.x) > maxX then
    gameState = FINISH
  end

  -- find the difference between where the sprite is on the map
  -- and how much the map should scroll inside the window
  local tx = math.floor(-sprite.x + ww / 2 - 16)
  local ty = math.floor(-sprite.y + wh / 2 - 16)

  if math.floor(sprite.x) >= maxX - ww / 2 then
    tx = ww - maxX
  elseif tx > 0 then
    tx = 0
  end

  -- NOT SURE whERE -152 COMES FROM
  if ty <= -152 then
    ty = -152
  elseif ty > 0 then
    ty = 0
  end

  love.graphics.push()
  love.graphics.translate(tx, ty)

  for i = 1,lapTotal do
    trackLapList[i]:setDrawRange(-tx, -ty, ww, wh)
    trackLapList[i]:draw()
  end

  -- SHOW DEBUG INFO --
  if DEBUG then
    -- world collision
    love.graphics.setColor(255, 255, 0, 255)
    for i = 1,lapTotal do
      trackLapList[i]:box2d_draw()
    end

    -- player collision box
    love.graphics.setColor(255, 0, 0, 255)
    love.graphics.polygon("line", sprite.body:getWorldPoints(sprite.shape:getPoints()))

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
  love.graphics.setColor(0, 0, 0, 255)
  -- fake data
  local next = ww / 5
  local spaceY = wh - 29
  love.graphics.setFont(leaderBoardFont)
  love.graphics.setColor(255, 255, 0, 200)
  love.graphics.print("1. ROCZEN", 5, spaceY)
  love.graphics.setColor(0, 255, 0, 200)
  love.graphics.print("2. TOMAC", next, spaceY)
  love.graphics.setColor(255, 128, 51, 200)
  love.graphics.print("3. DUNGEY", next * 2, spaceY)
  love.graphics.setColor(180, 180, 255, 200)
  love.graphics.print("4. REED", next * 3, spaceY)
  love.graphics.setColor(255, 128, 255, 200)
  love.graphics.print("5. kennedy?", next * 4, spaceY)

  -- BIKE DASHBOARD --
	love.graphics.setFont(lapFont)

	love.graphics.setColor(0,0,255,255)
	love.graphics.printf(">>>", 5, 0, ww, 'left')
	love.graphics.setColor(255,255,0,255)
	love.graphics.printf(">>>", 52, 0, ww, 'left')
	love.graphics.setColor(255,128,0,255)
	love.graphics.printf(">>>", 100, 0, ww, 'left')
	love.graphics.setColor(255,0,0,255)
	love.graphics.printf(">>>", 147, 0, ww, 'left')

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
