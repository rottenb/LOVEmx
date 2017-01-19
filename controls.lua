
PLAYER_ONE = 1

gameStates = {}

function initJoystick()
  local jsList = love.joystick.getJoysticks()
  joystick = jsList[1]
end

local bindings = {
  quitgame = function() love.event.quit() end,
  turnleft = function() turnLeft() end,
  turnright = function() turnRight() end,
  hitgas = function() hitGas() end,
  hitbrake = function() hitBrake() end,
  coast = function() coast() end,
  wheelieup = function() wheelieUp() end,
  wheeliedown = function() wheelieDown() end,
  debug = function() toggleDebug() end,
  shuffleleader = function() shuffleLeader() end,
}

local keys = {
  escape = "quitgame",
  up = "turnleft",
  down = "turnright",
  d = "hitgas",
  s = "hitbrake",
  left = "wheelieup",
  right = "wheeliedown",

  released = "coast",
}

local buttons = {
  [14] = "debug",
  [13] = "quitgame",
  [1] = "hitgas",
  [2] = "hitbrake",
  [3] = "shuffleleader",
  released = "coast",
}

local gamepad = {
  u = "turnleft",
  d = "turnright",
  l = "wheelieup",
  r = "wheeliedown",

  c = "coast",
}

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
  if  dir == "u" or
      dir == "d" or
      dir == "c" or
      dir == "l" or
      dir == "r"    then
    local binding = gamepad[dir]
    return inputHandler(binding)
  end
end

function hitGas()
  trackLapList[currentLap].layers["Sprites"].sprite.riderState = FORWARD
end

function hitBrake()
  trackLapList[currentLap].layers["Sprites"].sprite.riderState = COAST
end

function turnLeft()
  trackLapList[currentLap].layers["Sprites"].sprite.riderState = LEFT
end

function turnRight()
  trackLapList[currentLap].layers["Sprites"].sprite.riderState = RIGHT
end

function coast()
  trackLapList[currentLap].layers["Sprites"].sprite.riderState = COAST
end

function wheelieUp()
  trackLapList[currentLap].layers["Sprites"].sprite.riderState = WHEELIEUP
  WHEELIE_COUNTER = 0
end

function wheelieDown()
  trackLapList[currentLap].layers["Sprites"].sprite.riderState = COAST
  WHEELIE_COUNTER = -1
end

function shuffleLeader()
  local temp = riderList[3]
  riderList[3] = riderList[1]
  riderList[1] = temp
end
