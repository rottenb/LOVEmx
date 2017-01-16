  -- WORLD AND MAPS ---
function mapInit(laps)
  lapTotal = laps
  trackLapList = { }

  -- load tracks, offset for "laps"
  local ox = 0
  for i=1,laps do
    -- tilemap
    trackLapList[i] = sti(track_title, {"box2d"}, ox, 0)
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
