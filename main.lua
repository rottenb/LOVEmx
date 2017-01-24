-- PREAMBLE --

-- REQUIREMENTS --
sti = require "sti"
require "menu"
require "map"
require "rider"
require "race"
require "controls"
require "race_ui"
require "leaderboard"
require "lap_timer"

-- MISC FLAGS, COUNTERS, AND SUCH
DRAW_COLLISION = true
DEBUG = false

-- GAME STATE --
SPLASH = 0
MAIN = 1
RACE = 2
FINISH = 3
TEST = 666

GAME_STATE = RACE

-- ***************
-- * love.load() *
-- ***************
function love.load(arg)
  MenuLoad()
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
    track_title = MAP_PATH .. "demo_track.lua"
    track_title = "random_run"
  end

  love.physics.setMeter(32)
  gameWorld = love.physics.newWorld(0,0)
  MapInit(10)

  -- INPUT --
  InitJoystick()
  ControlsInit()

  --love.graphics.setDefaultFilter("nearest", "nearest")


  -- LAP COUNTER --
  currentLap = 1
  gameFont = love.graphics.newFont("resources/fonts/ledcounter7.ttf", 40)
  love.graphics.setFont(gameFont)

  -- LAP TIMER --
  LapTimerLoad()

  -- LEADERBOARD --
  LeaderBoardLoad()

  --[[
  ogFont = love.graphics.getFont()
  lapFont = love.graphics.newFont("resources/fonts/ledcounter7.ttf", 40)
  overheatFont = love.graphics.newFont("resources/fonts/ledcounter7.ttf", 30)
  leaderBoardFont = love.graphics.newFont("resources/fonts/ledcounter7.ttf", 30)]]
  winFont = love.graphics.newFont("resources/fonts/ledcounter7.ttf", 120)

  -- READ IN PLAYER SPAWN POINT, ADD PLAYER TO LAP MAPS --
  local playerSpawn
  for k,object in pairs(trackLapList[currentLap].objects) do
    if object.name == "Spawn" then
      playerSpawn = object
    end
  end

  for i = 1,lapTotal do
    if i == 1 then
      RiderInit(playerSpawn.x,playerSpawn.y, trackLapList[i].layers["Sprites"])
    else
      RiderInit(-32,-32, trackLapList[i].layers["Sprites"])
    end
  end

end -- love.load()

-- ***************
-- * love.update *
-- ***************
function love.update(dt)
  if GAME_STATE == MAIN then
    MenuUpdate(dt)
  elseif GAME_STATE == RACE then
    RaceUpdate(dt)
  elseif GAME_STATE == FINISH then
    if love.keyboard.isDown("space") then
      GAME_STATE = RACE
      local arg = {track_title}
      love.load(arg)
    end
  end
end -- love.update()


-- *************
-- * love.draw *
-- *************
function love.draw()
  ww = love.graphics.getWidth()
  wh = love.graphics.getHeight()

  if GAME_STATE == MAIN then
    MenuDraw()
  elseif GAME_STATE == RACE then
    RaceDraw(ww, wh)
    RaceUIDraw()
  elseif GAME_STATE == FINISH then
    love.graphics.origin()
    love.graphics.setFont(winFont)

    local pos = 0
    for i = 1,5 do
      if riderList[i][2] == PLAYER_NAME then
        pos = i
      end
    end

    local str = "P" .. pos
    love.graphics.printf(str, 0, wh/2 - 60, ww, 'center')
  end
end -- love.draw()

function love.resize(w, h)
	gameMap1:resize(w, h)
end
