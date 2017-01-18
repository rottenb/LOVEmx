ANIM_ELAPSED = 0
ANIM_FLIP = 0.05

WHEELIE_COUNTER = -1

leaderBoard = {
	{{255,255,0,200}, "ROCZEN"},
	{{255,128,51,200}, "DUNGEY"},
	{{0,255,0,200}, "TOMAC"},
	{{180,180,255,200}, "REED"},
	{{255,128,255,200}, "kennedy?"},
}

-- WHAT TO DO DURING A RACE --
function raceUpdate(dt)
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

	local properties = trackLapList[currentLap]:getTileProperties("rider_effects", tileX, tileY)
	sprite.effects["slow"] = properties["slow"]
	if properties["offsetZ"] ~= nil then
		sprite.effects["offsetZ"] = properties["offsetZ"]
		sprite.effects["rotate"] = math.rad(-sprite.effects["offsetZ"])
	else
		sprite.effects["rotate"] = 0
		sprite.effects["offsetZ"] = sprite.effects["offsetZ"]
	end


end -- raceUpdate()

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

  for i = 1,lapTotal do
    trackLapList[i]:setDrawRange(-tx, -ty, ww, wh)
    trackLapList[i]:draw()
  end

end
