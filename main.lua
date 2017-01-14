-- PREAMBLE --

-- REQUIREMENTS --
sti = require "sti"
require "map"
require "rider"
require "race"
require "controls"

-- MISC FLAGS, COUNTERS, AND SUCH
DRAW_COLLISION = true
DEBUG = false


-- GAME STATE --
SPLASH = 0
MAIN = 1
RACE = 2
FINISH = 3
TEST = 666

gameState = RACE


-- ***************
-- * love.load() *
-- ***************
function love.load(arg)
  -- read in track name from command line.
  -- if track doesn't exist, load the demo_track
  track_title = "none"
  if arg[2] then
    track_title = MAP_PATH .. arg[2] .. ".lua"
  end

  if arg[3] == "debug" then
    DEBUG = true
  end

  if love.filesystem.exists(track_title) == false then
  --  print(track_title .. " doesn't exist!  Falling to demo_track")
    track_title = MAP_PATH .. "demo_track.lua"
  end

  love.physics.setMeter(32)
  gameWorld = love.physics.newWorld(0,0)
  mapInit(3)

  -- INPUT --
  initJoystick()

  -- MINI MAP --
  miniMapImage = love.graphics.newImage("resources/maps/thunder_valley_trackmap.png")

  -- LAP COUNTER --
  currentLap = 1
  ogFont = love.graphics.getFont()
  lapFont = love.graphics.newFont("resources/fonts/ledcounter7.ttf", 40)
  overheatFont = love.graphics.newFont("resources/fonts/ledcounter7.ttf", 30)
  leaderBoardFont = love.graphics.newFont("resources/fonts/ledcounter7.ttf", 30)
  winFont = love.graphics.newFont("resources/fonts/ledcounter7.ttf", 120)

  -- add sprite layers
  for i = 1,lapTotal do
    if i == 1 then
      riderInit(50,200, trackLapList[i].layers["Sprites"])
    else
      riderInit(-32,-32, trackLapList[i].layers["Sprites"])
    end
  end
end -- love.load()



-- ***************
-- * love.update *
-- ***************
function love.update(dt)
  if gameState == RACE then
    raceUpdate(dt)
  elseif gameState == FINISH then
    if love.keyboard.isDown("space") then
      gameState = RACE
      local arg = {track_title}
      love.load(arg)
    end
  end
end -- love.update()

function love.draw()
  ww = love.graphics.getWidth()
  wh = love.graphics.getHeight()

  if gameState == RACE then
    raceDraw(ww, wh)
  elseif gameState == FINISH then
    love.graphics.origin()
    love.graphics.setFont(winFont)
    love.graphics.printf("ok, you won", 0, wh/2 - 100, ww, 'center')
    love.graphics.setFont(leaderBoardFont)
    love.graphics.printf("press SPACE to restart", 0, wh - 50, ww, 'center')

    love.graphics.setFont(ogFont)
    love.graphics.printf("(or CMD-Q to exit)", 0, wh - 30, ww - 10, 'right')
  elseif gameState == TEST then
    love.graphics.setColor(255,255,255,255)
    tst = love.graphics.newImage("resources/dickbutt_inv.jpg")
  --love.graphics.draw(drawable, x, y, r, sx, sy, ox, oy, kx, ky)
    love.graphics.draw(tst, 100, 100, 0, 0.2, 0.2, 0, 0, 0, 1)
  end
end -- love.draw()

function love.resize(w, h)
	gameMap1:resize(w, h)
end
