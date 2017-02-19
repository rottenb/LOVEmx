MENU = 0
GAME = 1
OPTIONS = 2
EXIT = 3
menuState = MENU

currentItem = GAME

splashRotate = 0

mainMenuList = {
  "GAME",
  "JOYSTICK TEST",
  "EXIT"
}


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
      if joystick == nil then
        currentItem = currentItem + 2
      else
        currentItem = currentItem + 1
      end
    else
      currentItem = 1
    end

  end
end

function MenuUp()
  if menuState ~= OPTIONS then
    if currentItem > 1 then
      if joystick == nil then
        currentItem = currentItem - 2
      else
        currentItem = currentItem - 1
      end
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

  logoImg = love.graphics.newImage("resources/util/logo.png")

  coinChime = love.audio.newSource("resources/sfx/smb3_coin.wav", 'stream')

  require "joystick_test"
  JoystickTestLoad()
end

function MenuUpdate(dt)
  splashRotate = splashRotate + 36

  if currentItem == OPTIONS and joystick ~= nil then
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
  elseif splashRotate == 360 then
    love.graphics.setColor(255,255,255,255)
    love.graphics.draw(logoImg, ww/2, wh/2)
    coinChime:play()
  else
    rot = math.rad(360)
    sc = 0.5
  end

  love.graphics.setColor(255,255,255,180)
  love.graphics.draw(splashImg, ww/2, wh/2, rot, sc, sc, ww, wh)

  if splashRotate > 360 then
    love.graphics.setColor(255,255,255,255)
    love.graphics.draw(logoImg, ww/2 - logoImg:getWidth()/4, wh/2 - logoImg:getHeight()/2, rot, sc, sc)
  end

  if menuState == MENU then
    for i = 1,3 do
      local h = (wh/2) + (50*i)
      if i == currentItem then
        love.graphics.setFont(selectFont)
        love.graphics.setColor(255,255,0,255)
        h = h - 5
      else
        love.graphics.setFont(menuFont)
        love.graphics.setColor(255,255,255,100)
      end

      if joystick == nil and i == OPTIONS then
        love.graphics.setFont(menuFont)
        love.graphics.setColor(180,180,180,50)
      end

      love.graphics.printf(mainMenuList[i], 0, h, ww, 'center')
    end
  elseif menuState == OPTIONS then
    JoystickTestDraw()
  end
end
