trackLapList = {}
lapTotal = 0

segTotal = 4
trackSegment = {
  "resources/maps/straight.lua",
  "resources/maps/curve1.lua",
  "resources/maps/curve2.lua",
  "resources/maps/whoops.lua",
}

-- WORLD AND MAPS ---
function MapInit(laps)
  --lapTotal = laps
  lapTotal = laps

  -- load tracks, offset for "laps"
  local ox = 0
  for i=1,laps do
    -- tilemap
    if track_title == "random_run" then
      trackLapList[i] = sti(trackSegment[love.math.random(1,segTotal)],
                            {"box2d"}, ox, 0)
    else
      trackLapList[i] = sti(track_title, {"box2d"}, ox, 0)
    end

    -- physics
    trackLapList[i]:box2d_init(gameWorld)
    -- add layer for sprites
    local spawnLayer
    local count = 0
    for k,layer in pairs(trackLapList[i].layers) do
      count = count + 1
      if layer.name == "Player" then
        spawnLayer = count
        break
      end
    end

    trackLapList[i]:addCustomLayer("Sprites", spawnLayer)

    ox = ox + trackLapList[i].width*32
  end

  -- print version numbers of libraries/modules
  if DEBUG then
    local major, minor, revision, codename = love.getVersion()
    print("Love2d ver." .. major .. "." .. minor .. "." .. revision)
    print("STI ver." .. sti._VERSION)
    print("Tiled ver." .. trackLapList[1].tiledversion)
    print("Box2d ver." .. trackLapList[1].box2d_VERSION)
  end
end
