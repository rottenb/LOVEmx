local fraction
local seconds
local minutes
timerStart = false

function LapTimerLoad()
  timeFont = love.graphics.newFont("resources/fonts/ledcounter7.ttf", 80)
  minutes, seconds, fraction = 0, 0, 1
  timerStart = false
end

function LapTimerUpdate(dt)
  if timerStart == true then
    fraction = fraction + dt
    if fraction > 1 then
      seconds = seconds + 1
    end
    if seconds >= 100 then
      seconds = 0
      minutes = minutes + 1
    end
  end
end

function LapTimerDraw()
  ww = love.graphics.getWidth()

  love.graphics.setColor(255,255,255,180)
  love.graphics.setFont(timeFont)

  if timerStart == true then
    love.graphics.printf(string.format("%.2d:%.2d", minutes, seconds), 0, 8, ww, 'right')
  else
    love.graphics.printf("00:00", 0, 8, ww, 'right')
  end
end
