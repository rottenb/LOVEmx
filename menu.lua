MENU = 0
GAME = 1
OPTIONS = 2
EXIT = 3
menuState = MENU

currentItem = GAME

mainMenuList = {
  "GAME",
  "JOYSTICK TEST",
  "EXIT"
}

splashRotate = 0

function inputHandler(input)
  local action = bindings[input]
  if action then return action() end
end

function love.joystickhat(js, hat, dir)
  local binding = gamePad[dir]
  return inputHandler(binding)
end

function love.joystickpressed(js, bt)
  local binding = buttons[bt]
  return inputHandler(binding)
end

--[[
function love.keypressed(key, scan, isRepeat)
  local binding = keys[key]
  return inputHandler(binding)
end
]]

function MenuDown()
  if menuState ~= OPTIONS then
    if currentItem < 3 then
      currentItem = currentItem + 1
    else
      currentItem = 1
    end
  end
end

function MenuUp()
  if menuState ~= OPTIONS then
    if currentItem > 1 then
      currentItem = currentItem - 1
    else
      currentItem = 3
    end
  end
end

function MenuSelect()
  if menuState ~= OPTIONS then
    if currentItem == GAME then
      GAME_STATE = RACE
      love.load(trackName)
    elseif currentItem == OPTIONS then
      menuState = OPTIONS
      JoystickTestLoad()
    elseif currentItem == EXIT then
      love.event.quit()
    end
  end
end

function MenuBack()

end

function MenuLoad()
  menuFont = love.graphics.newFont("resources/fonts/ledcounter7.ttf", 50)
  selectFont = love.graphics.newFont("resources/fonts/ledcounter7.ttf", 60)

  splashImg = love.graphics.newImage("resources/util/splash.png")
  splashImg:setFilter("nearest", "nearest")

  require "joystick_test"
  JoystickTestLoad()
end

function MenuUpdate(dt)
  splashRotate = splashRotate + 36

  if currentItem == OPTIONS then
    JoystickTestUpdate(dt)
  end
end

function MenuDraw()
  local ww = love.graphics.getWidth()
  local wh = love.graphics.getHeight()

  local rot
  local sc
  if splashRotate < 360 then
    rot = math.rad(splashRotate)
    sc = rot/10
  else
    rot = math.rad(360)
    sc = 0.5
  end

  love.graphics.setColor(255,255,255,180)
  love.graphics.draw(splashImg, ww/2, wh/2, rot, sc, sc, ww, wh)

  if menuState == MENU then
    for i = 1,3 do
      local h = (wh/2 - 125) + (50*i)
      if i == currentItem then
        love.graphics.setFont(selectFont)
        love.graphics.setColor(255,255,0,255)
        h = h - 5
      else
        love.graphics.setFont(menuFont)
        love.graphics.setColor(255,255,255,100)
      end

      love.graphics.printf(mainMenuList[i], 0, h, ww, 'center')
    end
  elseif menuState == OPTIONS then
    JoystickTestDraw()
  end

--  love.graphics.setColor(255,0,0,50)
--  love.graphics.line(0,wh/2,ww,wh/2)

end
