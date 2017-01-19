-- list of dudes
riderList = {
	{{255,255,0,200}, "ROCZEN"},
	{{255,128,51,200}, "DUNGEY"},
	{{0,255,0,200}, "TOMAC"},
	{{180,180,255,200}, "REED"},
	{{255,128,255,200}, "kennedy?"},
}

function leaderBoardLoad()
end

function leaderBoardUpdate()

end

function leaderBoardDraw()
  local ww = 5*(love.graphics.getWidth()/5)
  local wh = love.graphics.getHeight()

  love.graphics.setColor(255,255,255,255)

  local j = 0
  local str = { }
  for i = 1, 5 do
    -- color
    str[j+1] = riderList[i][1]
    -- rider name
    str[j+2] = i..". "..riderList[i][2].."  "
    j = j + 2
  end

  love.graphics.printf(str, 0, wh - 29, ww, 'center')

end
