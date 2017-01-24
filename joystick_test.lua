function JoystickTestLoad()

  local font = love.graphics.newFont("resources/fonts/ledcounter7.ttf", 30)
  love.graphics.setFont(font)

  imgMap = love.graphics.newImage("resources/util/ds4map.png")

  jsList = love.joystick.getJoysticks()
  joystick = jsList[1]

  if joystick ~= nil then
    axNum = joystick:getAxisCount()
    btNum = joystick:getButtonCount()
  end

end

buttonDot = {
  -- face 1 2 3 4
  function() love.graphics.circle('fill', 587, 282, 7) end,
  function() love.graphics.circle('fill', 620, 315, 7) end,
  function() love.graphics.circle('fill', 654, 282, 7) end,
  function() love.graphics.circle('fill', 620, 248, 7) end,
  -- bumpers 5 6
  function() love.graphics.circle('fill', 344, 190, 7) end,
  function() love.graphics.circle('fill', 614, 190, 7) end,
  -- triggers 7 8
  function() love.graphics.circle('fill', 300, 180, 7) end,
  function() love.graphics.circle('fill', 659, 180, 7) end,
  -- share 9 10
  function() love.graphics.circle('fill', 387, 236, 7) end,
  -- options 11
  function() love.graphics.circle('fill', 572, 236, 7) end,
  -- sticks 12
  function() love.graphics.circle('fill', 406, 343, 7) end,
  function() love.graphics.circle('fill', 553, 343, 7) end,
  -- guide 13
  function() love.graphics.circle('fill', 480, 346, 7) end,
  -- touchpad 14
  function() love.graphics.circle('fill', 480, 260, 7) end,
}

function JoystickTestUpdate(dt)
  leftTrig = cut(joystick:getAxis(4), 4) * -1
  rightTrig = cut(joystick:getAxis(5), 4) * -1

  leftStickX = cut(joystick:getAxis(1), 1) * -1
  leftStickY = cut(joystick:getAxis(2), 1) * -1

  rightStickX = cut(joystick:getAxis(3), 1) * -1
  rightStickY = cut(joystick:getAxis(6), 1) * -1
end

function cut(longNum, n)
  local shift = 10 ^ n
  return math.floor(longNum*shift + 0.5) / shift
end

function JoystickTestDraw()
  local w = love.graphics.getWidth()
  local h = love.graphics.getHeight()
  local vspc = 30

  if joystick == nil then
    love.graphics.setColor(255,0,0,255)
    love.graphics.printf("No Controller", 0, 0, w, 'center')
    return
  end

  -- image of Controller
  love.graphics.setColor(255,255,255,255)
  local scale = 0.7
--  love.graphics.draw(imgMap, w - imgMap:getWidth() * scale,
--                      h - imgMap:getHeight() * scale, 0, scale, scale)

  love.graphics.draw(imgMap, w/2 - imgMap:getWidth()/2 * scale,
                             h - imgMap:getHeight() * scale, 0, scale, scale)

  -- OS name for controller
  love.graphics.setColor(255,255,0,255)
  love.graphics.printf(joystick:getName(), 0, 0, w, 'center')

  -- button values
  love.graphics.setColor(255,0,0,255)
  for i = 1,btNum do
    local btStr = "Button " .. i .. ": "
    local bt = "0"

    if joystick:isDown(i) then
      bt = "1"
      buttonDot[i]()
    end

    love.graphics.printf(btStr, 0, vspc * (i + 1), w, 'left')
    love.graphics.printf(bt, 170, vspc * (i + 1), w, 'left')
  end

  -- gamepad
  love.graphics.setColor(0,0,255,255)
  local pad = { "0", "0", "0", "0" }

  if joystick:isGamepadDown("dpup") then
    pad[1] = "1"
    love.graphics.circle('fill', 338, 256, 7)
  end

  if joystick:isGamepadDown("dpdown") then
    pad[2] = "1"
    love.graphics.circle('fill', 338, 306, 7)

  end

  if joystick:isGamepadDown("dpright") then
    pad[3] = "1"
    love.graphics.circle('fill', 364, 282, 7)
  end

  if joystick:isGamepadDown("dpleft") then
    pad[4] = "1"
    love.graphics.circle('fill', 312, 282, 7)
  end

  love.graphics.printf("Up: " .. pad[1], 0, vspc * 2, w + 32, 'center')
  love.graphics.printf("Down: " .. pad[2], 0, vspc * 3, w, 'center')
  love.graphics.printf("Right: " .. pad[3], 0, vspc * 4, w - 9, 'center')
  love.graphics.printf("Left: " .. pad[4], 0, vspc * 5, w + 3, 'center')

  -- axis values
  love.graphics.setColor(0,255,0,255)
  for i = 1,axNum do
    local axStr = "Axis " .. i .. ": "
    local ax = cut(joystick:getAxis(i), 2)
    love.graphics.printf(axStr, 0, vspc * (i + 1), w - 100, 'right')
    love.graphics.printf(ax, 0, vspc * (i + 1), w, 'right')
  end

  -- left stick
  love.graphics.line(406, 343, 406 - leftStickX*50, 343)
  love.graphics.line(406, 343, 406, 343 - leftStickY*50)

  -- right stick
  love.graphics.line(553, 343, 553 - rightStickX*50, 343)
  love.graphics.line(553, 343, 553, 343 - rightStickY*50)

  --love.graphics.setColor(0,255,0,128)
  love.graphics.arc('line', 'open', 300, 180, 25, math.rad(0),
                    math.rad(180 * math.abs(1 - leftTrig)), 300)
  love.graphics.arc('line', 'open', 659, 180, 25, math.rad(0),
                    math.rad(180 * math.abs(1 - rightTrig)), 300)


end
