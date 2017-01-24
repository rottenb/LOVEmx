bindings = {
  quitgame = function() love.event.quit() end,
  turnleft = function() turnLeft() end,
  turnright = function() turnRight() end,
  hitgas = function() hitGas() end,
  hitbrake = function() hitBrake() end,
  coast = function() coast() end,
  wheelieup = function() wheelieUp() end,
  wheeliedown = function() wheelieDown() end,
  jump = function() jump() end,
  debug = function() toggleDebug() end,
}

keys = {
  escape = "quitgame",
  up = "turnleft",
  down = "turnright",
  d = "hitgas",
  s = "hitbrake",
  left = "wheelieup",
  right = "wheeliedown",
  jump = "jump",

  released = "coast",
}

buttons = {
  [1] = "hitgas",
  [2] = "hitbrake",
  [5] = "jump",
  [13] = "quitgame",
  [14] = "debug",

  released = "coast",
}

gamepad = {
  u = "turnleft",
  d = "turnright",
  l = "wheelieup",
  r = "wheeliedown",

  c = "coast",
}
