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
    trackLapList[i]:addCustomLayer("Sprites", 7)

    ox = ox + trackLapList[i].width*32
  end
      print("loaded")

  -- print version numbers of libraries/modules
  if DEBUG then
    local major, minor, revision, codename = love.getVersion()
    print("Love2d ver." .. major .. "." .. minor .. "." .. revision)
    print("STI ver." .. sti._VERSION)
    print("Tiled ver." .. trackLapList[1].tiledversion)
    print("Box2d ver." .. trackLapList[1].box2d_VERSION)
  end
end
