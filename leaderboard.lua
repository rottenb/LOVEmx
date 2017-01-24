-- list of dudes
RIDER_TOTAL = 5
PLAYER_NAME = "kennedy"
riderList = {
	{{255,255,0,255}, "ROCZEN"},
	{{255,128,51,255}, "DUNGEY"},
	{{0,255,0,255}, "TOMAC"},
	{{180,180,255,255}, "REED"},
	{{255,128,255,255}, PLAYER_NAME},
}

leaderBoard = {
  [1] = {canvas = nil, posX = 0, posY = 0, swapCount = 0, win = 0},
  [2] = {canvas = nil, posX = 0, posY = 0, swapCount = 0, win = 0},
  [3] = {canvas = nil, posX = 0, posY = 0, swapCount = 0, win = 0},
  [4] = {canvas = nil, posX = 0, posY = 0, swapCount = 0, win = 0},
  [5] = {canvas = nil, posX = 0, posY = 0, swapCount = 0, win = 0},
}

posArchY = { }
posArchX = { }

function LeaderBoardLoad()
  ww = love.graphics.getWidth()/RIDER_TOTAL
  wh = 40
	leaderBoardFont = love.graphics.newFont("resources/fonts/ledcounter7.ttf", 30)

  posArchY = {-5, -10, -15, -30, -35, -30,  -15,  -10,   -5}
  posArchX = {-5, -10, -25, -50, -80, -110, -150, -175, -ww}

  for i = 1, RIDER_TOTAL do
    leaderBoard[i].canvas = love.graphics.newCanvas(ww, wh)
    love.graphics.setCanvas(leaderBoard[i].canvas)
    love.graphics.setColor(0,0,0,120)
		love.graphics.setFont(leaderBoardFont)
    love.graphics.rectangle('fill', 0, 0, ww, wh)
    love.graphics.setColor(riderList[i][1])
    love.graphics.printf(riderList[i][2], 0, 0, ww, 'center')
    love.graphics.setCanvas()

    leaderBoard[i].posX = 0
    leaderBoard[i].posY = 0
    leaderBoard[i].swapCount = 0
    leaderBoard[i].win = 0
    --leaderBoard[i] = {canvas, posX, posY, swapCount, win}
  end
end

function LeaderBoardUpdate()
  local swapped = 0

  for i = 1, RIDER_TOTAL do
    if leaderBoard[i].swapCount > 0 then
      if leaderBoard[i].win > 0 then
        leaderBoard[i].posX = posArchX[leaderBoard[i].swapCount]
        leaderBoard[i].posY = posArchY[leaderBoard[i].swapCount]
      else
        leaderBoard[i].posX = -posArchX[leaderBoard[i].swapCount]
      end

      if leaderBoard[i].swapCount < 9 then
        leaderBoard[i].swapCount = leaderBoard[i].swapCount + 1
      else
        leaderBoard[i].win = 0
        leaderBoard[i].swapCount = 0
        leaderBoard[i].posX = 0
        leaderBoard[i].posY = 0
        swapped = i
      end
    end
  end

  if swapped > 0 then
    local temp = leaderBoard[swapped - 1]
    leaderBoard[swapped - 1] = leaderBoard[swapped]
    leaderBoard[swapped] = temp

		temp = riderList[swapped - 1]
		riderList[swapped - 1] = riderList[swapped]
		riderList[swapped] = temp
  end
end

function swapRiders(winner, loser)
    leaderBoard[winner].win = 1
    leaderBoard[winner].swapCount = 1

    leaderBoard[loser].win = -1
    leaderBoard[loser].swapCount = 1
end

function LeaderBoardDraw()
  local ww = love.graphics.getWidth()/RIDER_TOTAL
  local wh = love.graphics.getHeight()

	love.graphics.setFont(leaderBoardFont)
  love.graphics.setColor(255,255,255,255)
  for i = 1,RIDER_TOTAL do
    love.graphics.print(i..". ", ww * (i-1) + 2, wh - 29)
    love.graphics.draw(leaderBoard[i].canvas,
                        (ww * (i-1)) + leaderBoard[i].posX,
                        wh - 29 + leaderBoard[i].posY)
  end
end
