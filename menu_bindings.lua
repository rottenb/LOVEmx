bindings = {
  game = function() print("game") end,
  options = function() MenuOptions() end,
  exit = function() love.event.quit() end,
  up = function() MenuUp() end,
  down = function() MenuDown() end,
  select = function() MenuSelect() end,
  back = function() MenuBack() end,
}

keys = {
  up = "up",
  down = "down",
  space = "select",
}

gamepad = {
  u = "up",
  d = "down",
}

buttons = {
  "select",
  "back",
}
