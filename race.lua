ANIM_ELAPSED = 0
ANIM_FLIP = 0.05

WHEELIE_COUNTER = -1

-- WHAT TO DO DURING A RACE --
function RaceUpdate(dt)
	trackLapList[currentLap]:update(dt)

	-- Update sprite's coordinates
	local sprite = trackLapList[currentLap].layers["Sprites"].sprite

  ANIM_ELAPSED = ANIM_ELAPSED + dt
  if ANIM_ELAPSED >= ANIM_FLIP then
    ANIM_ELAPSED = 0
    if sprite.animFrame == 0 then
      sprite.animFrame = 1
    else
      sprite.animFrame = 0
    end
  end

	local ox = trackLapList[currentLap].width * (currentLap - 1)
	local tileX = math.floor(sprite.x/32 - ox)+1
	local tileY = math.floor(sprite.y/32)

	if tileY <= 1 then
		tileY = 1
	elseif tileY >= trackLapList[currentLap].height then
		tileY = trackLapList[currentLap].height
	end

	local properties = trackLapList[currentLap]:getTileProperties("rider_effects", tileX, tileY)


	LeaderBoardUpdate()
	LapTimerUpdate(dt)

end -- raceUpdate()

function RaceDraw(ww, wh)
  local sprite = trackLapList[currentLap].layers["Sprites"].sprite

  local trackW = trackLapList[currentLap].width * 32
  local trackH = trackLapList[currentLap].height * 32

  local maxX = trackW * lapTotal
  local maxY = trackH

  if math.floor(sprite.x) > maxX then
    GAME_STATE = FINISH
  end

  -- find the difference between where the sprite is on the map
  -- and how much the map should scroll inside the window
  local tx = math.floor(-sprite.x + ww/2 - 16)
  local ty = math.floor(-sprite.y + wh/2 - 16)

  if math.floor(sprite.x) >= maxX - ww/2 then
    tx = ww - maxX
  elseif tx > 0 then
    tx = 0
  end

	if math.floor(sprite.y) > maxY - wh/2 then
		ty = wh - maxY - 16
	elseif ty > 0 then
		ty = 0
	end

  love.graphics.push()
  love.graphics.translate(tx, ty)

	-- draw the previous, current, and next stage of the race
	-- to give the illusion of scrolling
	if( currentLap > 1) then
		trackLapList[currentLap-1]:setDrawRange(-tx, -ty, ww, wh)
		trackLapList[currentLap-1]:draw()
	end

	trackLapList[currentLap]:setDrawRange(-tx, -ty, ww, wh)
	trackLapList[currentLap]:draw()

	if( currentLap < lapTotal) then
		trackLapList[currentLap+1]:setDrawRange(-tx, -ty, ww, wh)
		trackLapList[currentLap+1]:draw()
	end

end
