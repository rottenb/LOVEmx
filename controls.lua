function InitJoystick()
  local jsList = love.joystick.getJoysticks()
  joystick = jsList[1]
end

function ControlsInit()
  if GAME_STATE == RACE then
    require "stick_bindings"
  elseif GAME_STATE == MAIN then
    require "menu_bindings"
  end
end

function toggleDebug()
  if DEBUG then
    DEBUG = false
  else
    DEBUG = true
  end
end

function inputHandler(input)
  local action = bindings[input]
  if action then return action() end
end

function love.keypressed(key, scancode, isrepeat)
  local binding = keys[key]
  return inputHandler(binding)
end

function love.keyreleased(key, scancode)
  local binding = keys["released"]
  return inputHandler(binding)
end

function love.joystickpressed(joystick, button)
  local binding = buttons[button]
  return inputHandler(binding)
end

function love.joystickreleased(joystick, button)
  local binding = buttons["released"]
  return inputHandler(binding)
end

function love.joystickhat(joystick, hat, dir)
  local binding = gamepad[dir]
  return inputHandler(binding)
end

function hitGas()
  if timerStart == false then
    timerStart = true
  end
  trackLapList[currentLap].layers["Sprites"].sprite.riderState = GAS
end

function hitBrake()
  trackLapList[currentLap].layers["Sprites"].sprite.riderState = BRAKE
end

function turnLeft()
  --trackLapList[currentLap].layers["Sprites"].sprite.riderState = LEFT
end

function turnRight()
  --trackLapList[currentLap].layers["Sprites"].sprite.riderState = RIGHT
end

function coast()
  trackLapList[currentLap].layers["Sprites"].sprite.riderState = COAST
end

function wheelieUp()
end

function wheelieDown()
end

function jump()
end
