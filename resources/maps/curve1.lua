return {
  version = "1.1",
  luaversion = "5.1",
  tiledversion = "0.18.0",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 25,
  height = 25,
  tilewidth = 32,
  tileheight = 32,
  nextobjectid = 5,
  properties = {},
  tilesets = {
    {
      name = "dirt",
      firstgid = 1,
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "sheets/dirt.png",
      imagewidth = 384,
      imageheight = 192,
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {},
      terrains = {
        {
          name = "track dry",
          tile = -1,
          properties = {}
        }
      },
      tilecount = 72,
      tiles = {
        {
          id = 0,
          properties = {
            ["slow"] = true
          }
        },
        {
          id = 1,
          properties = {
            ["slow"] = true
          }
        },
        {
          id = 2,
          properties = {
            ["slow"] = true
          }
        },
        {
          id = 4,
          terrain = { 0, 0, 0, -1 }
        },
        {
          id = 5,
          terrain = { 0, 0, -1, 0 }
        },
        {
          id = 12,
          properties = {
            ["slow"] = true
          }
        },
        {
          id = 13,
          properties = {
            ["slow"] = true
          }
        },
        {
          id = 14,
          properties = {
            ["slow"] = true
          }
        },
        {
          id = 16,
          terrain = { 0, -1, 0, 0 }
        },
        {
          id = 17,
          terrain = { -1, 0, 0, 0 }
        },
        {
          id = 24,
          properties = {
            ["slow"] = true
          }
        },
        {
          id = 25,
          properties = {
            ["slow"] = true
          }
        },
        {
          id = 26,
          properties = {
            ["slow"] = true
          }
        },
        {
          id = 27,
          terrain = { -1, -1, -1, 0 }
        },
        {
          id = 28,
          terrain = { -1, -1, 0, 0 }
        },
        {
          id = 29,
          terrain = { -1, -1, 0, -1 }
        },
        {
          id = 33,
          properties = {
            ["slow"] = true
          }
        },
        {
          id = 34,
          properties = {
            ["slow"] = true
          }
        },
        {
          id = 35,
          properties = {
            ["slow"] = true
          }
        },
        {
          id = 36,
          properties = {
            ["slow"] = true
          }
        },
        {
          id = 37,
          properties = {
            ["slow"] = true
          }
        },
        {
          id = 38,
          properties = {
            ["slow"] = true
          }
        },
        {
          id = 39,
          terrain = { -1, 0, -1, 0 }
        },
        {
          id = 40,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 41,
          terrain = { 0, -1, 0, -1 }
        },
        {
          id = 45,
          properties = {
            ["slow"] = true
          }
        },
        {
          id = 46,
          properties = {
            ["slow"] = true
          }
        },
        {
          id = 47,
          properties = {
            ["slow"] = true
          }
        },
        {
          id = 48,
          properties = {
            ["slow"] = true
          }
        },
        {
          id = 49,
          properties = {
            ["slow"] = true
          }
        },
        {
          id = 50,
          properties = {
            ["slow"] = true
          }
        },
        {
          id = 51,
          terrain = { -1, 0, -1, -1 }
        },
        {
          id = 52,
          terrain = { 0, 0, -1, -1 }
        },
        {
          id = 53,
          terrain = { 0, -1, -1, -1 }
        },
        {
          id = 57,
          properties = {
            ["slow"] = true
          }
        },
        {
          id = 58,
          properties = {
            ["slow"] = true
          }
        },
        {
          id = 59,
          properties = {
            ["slow"] = true
          }
        },
        {
          id = 60,
          properties = {
            ["slow"] = true
          }
        },
        {
          id = 61,
          properties = {
            ["slow"] = true
          }
        },
        {
          id = 62,
          properties = {
            ["slow"] = true
          }
        }
      }
    },
    {
      name = "grass",
      firstgid = 73,
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "sheets/grass.png",
      imagewidth = 288,
      imageheight = 192,
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {},
      terrains = {},
      tilecount = 54,
      tiles = {}
    },
    {
      name = "rocks",
      firstgid = 127,
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "sheets/rocks.png",
      imagewidth = 256,
      imageheight = 192,
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {},
      terrains = {},
      tilecount = 48,
      tiles = {}
    },
    {
      name = "trees",
      firstgid = 175,
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "sheets/trees.png",
      imagewidth = 256,
      imageheight = 192,
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {},
      terrains = {},
      tilecount = 48,
      tiles = {}
    },
    {
      name = "whoop",
      firstgid = 223,
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "sheets/whoop.png",
      imagewidth = 96,
      imageheight = 160,
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {},
      terrains = {},
      tilecount = 15,
      tiles = {}
    }
  },
  layers = {
    {
      type = "tilelayer",
      name = "grass",
      x = 0,
      y = 0,
      width = 25,
      height = 25,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        120, 120, 118, 119, 118, 101, 118, 118, 120, 120, 118, 119, 119, 120, 101, 101, 120, 101, 120, 101, 101, 118, 120, 119, 119,
        118, 119, 118, 101, 118, 119, 101, 118, 101, 101, 101, 118, 118, 118, 101, 101, 119, 118, 101, 101, 101, 118, 120, 119, 119,
        118, 120, 118, 118, 119, 118, 118, 119, 119, 120, 120, 120, 120, 120, 101, 101, 118, 120, 119, 118, 118, 120, 119, 101, 118,
        119, 119, 120, 101, 119, 118, 120, 101, 120, 119, 120, 119, 119, 101, 120, 119, 120, 120, 120, 119, 120, 120, 118, 120, 120,
        119, 120, 101, 120, 118, 118, 120, 120, 101, 120, 119, 119, 120, 119, 120, 101, 119, 120, 119, 118, 101, 118, 101, 119, 118,
        118, 101, 119, 118, 118, 120, 119, 119, 120, 101, 120, 118, 120, 119, 101, 119, 101, 101, 118, 119, 101, 120, 119, 101, 101,
        118, 118, 101, 101, 101, 101, 119, 118, 118, 101, 118, 118, 119, 120, 119, 120, 119, 101, 101, 119, 120, 120, 101, 118, 101,
        101, 119, 120, 120, 118, 118, 118, 120, 101, 120, 119, 119, 120, 120, 120, 101, 119, 101, 119, 119, 119, 118, 119, 120, 119,
        101, 118, 120, 118, 118, 118, 101, 119, 118, 118, 120, 119, 101, 101, 118, 101, 118, 119, 119, 119, 119, 120, 118, 101, 118,
        120, 119, 120, 118, 101, 120, 101, 101, 118, 118, 120, 118, 101, 118, 119, 119, 118, 119, 101, 118, 120, 101, 118, 120, 101,
        119, 120, 118, 101, 118, 120, 118, 119, 119, 119, 118, 118, 101, 120, 118, 120, 119, 119, 101, 118, 118, 119, 101, 119, 120,
        119, 120, 118, 119, 101, 118, 118, 118, 101, 118, 118, 119, 101, 119, 120, 101, 120, 118, 118, 119, 101, 119, 118, 119, 120,
        101, 101, 120, 101, 101, 120, 118, 119, 119, 119, 120, 118, 118, 101, 119, 101, 118, 119, 119, 119, 120, 120, 118, 120, 101,
        118, 101, 101, 101, 101, 118, 118, 120, 101, 118, 118, 118, 120, 118, 118, 118, 118, 118, 118, 101, 119, 101, 101, 101, 118,
        118, 119, 118, 119, 120, 101, 118, 101, 101, 118, 101, 101, 101, 119, 118, 118, 101, 118, 119, 118, 101, 118, 118, 101, 120,
        118, 120, 118, 120, 118, 101, 101, 119, 101, 120, 118, 120, 118, 119, 120, 118, 118, 101, 120, 118, 118, 101, 118, 119, 101,
        119, 118, 118, 101, 120, 119, 120, 118, 120, 118, 101, 118, 119, 101, 101, 101, 118, 101, 118, 120, 119, 101, 119, 118, 120,
        118, 101, 119, 101, 119, 120, 119, 119, 101, 119, 119, 101, 119, 120, 119, 101, 118, 119, 101, 101, 101, 101, 120, 101, 120,
        101, 120, 119, 119, 101, 120, 101, 101, 118, 101, 119, 120, 120, 101, 119, 120, 101, 120, 119, 120, 119, 119, 101, 120, 118,
        119, 118, 118, 101, 119, 118, 120, 101, 119, 101, 118, 119, 101, 118, 118, 120, 118, 101, 101, 118, 101, 119, 119, 120, 101,
        119, 118, 118, 119, 101, 119, 120, 120, 119, 118, 120, 101, 119, 118, 101, 118, 101, 118, 120, 101, 118, 118, 119, 119, 119,
        101, 120, 119, 101, 101, 118, 101, 119, 120, 101, 101, 120, 119, 101, 101, 118, 120, 101, 120, 120, 101, 101, 118, 120, 101,
        120, 101, 119, 120, 118, 101, 119, 101, 118, 119, 118, 118, 120, 101, 101, 119, 101, 101, 119, 120, 119, 120, 118, 101, 119,
        118, 120, 101, 120, 120, 118, 119, 119, 101, 119, 101, 119, 101, 101, 119, 118, 118, 101, 120, 119, 120, 101, 101, 120, 118,
        101, 119, 101, 118, 120, 119, 119, 120, 120, 118, 119, 101, 101, 118, 118, 120, 119, 120, 118, 101, 120, 120, 120, 101, 119
      }
    },
    {
      type = "tilelayer",
      name = "track",
      x = 0,
      y = 0,
      width = 25,
      height = 25,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 28, 29, 29, 29, 29, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 28, 18, 41, 41, 41, 41, 17, 29, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 28, 18, 41, 41, 41, 41, 41, 41, 41, 17, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 28, 18, 41, 41, 41, 41, 41, 41, 41, 41, 41, 17, 30, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 28, 18, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 17, 30, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 40, 41, 41, 41, 41, 5, 53, 6, 41, 41, 41, 41, 41, 41, 17, 30, 0, 0, 0, 0, 0, 0,
        0, 0, 28, 18, 41, 41, 41, 5, 54, 0, 52, 53, 6, 41, 41, 41, 41, 41, 17, 30, 0, 0, 0, 0, 0,
        0, 28, 18, 41, 41, 41, 41, 42, 0, 0, 0, 0, 52, 6, 41, 41, 41, 41, 41, 17, 30, 0, 0, 0, 0,
        29, 18, 41, 41, 41, 41, 5, 54, 0, 0, 0, 0, 0, 52, 6, 41, 41, 41, 41, 41, 17, 29, 29, 29, 29,
        41, 41, 41, 41, 41, 41, 42, 0, 0, 0, 0, 0, 0, 0, 52, 6, 41, 41, 41, 41, 41, 41, 41, 41, 41,
        41, 41, 41, 41, 41, 5, 54, 0, 0, 0, 0, 0, 0, 0, 0, 52, 6, 41, 41, 41, 41, 41, 41, 41, 41,
        41, 41, 41, 41, 5, 54, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52, 6, 41, 41, 41, 41, 41, 41, 41,
        53, 53, 53, 53, 54, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52, 53, 53, 53, 53, 53, 53, 53,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      name = "rider_effects",
      x = 0,
      y = 0,
      width = 25,
      height = 25,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 26, 27, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 37, 62, 14, 27, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 37, 63, 38, 14, 27, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 15, 62, 62, 38, 14, 27, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 37, 38, 62, 63, 62, 63, 14, 27, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49, 3, 38, 38, 62, 38, 38, 39, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49, 3, 38, 2, 50, 50, 51, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49, 50, 51, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      name = "trees_above",
      x = 0,
      y = 0,
      width = 25,
      height = 25,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        175, 176, 0, 0, 0, 0, 209, 210, 0, 209, 210, 0, 201, 202, 0, 0, 0, 0, 201, 202, 0, 0, 0, 0, 0,
        183, 184, 0, 0, 201, 202, 217, 218, 0, 217, 218, 0, 209, 210, 0, 0, 201, 202, 209, 210, 0, 0, 0, 0, 0,
        191, 192, 175, 176, 209, 210, 0, 0, 0, 0, 0, 0, 217, 218, 0, 0, 209, 210, 217, 218, 180, 181, 182, 0, 0,
        199, 200, 183, 184, 217, 218, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 217, 218, 0, 0, 188, 189, 190, 0, 0,
        207, 208, 191, 192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 205, 206, 0, 0, 196, 197, 198, 0, 0,
        0, 0, 199, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 213, 214, 205, 206, 0, 0, 201, 202, 0,
        0, 0, 207, 208, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 213, 214, 0, 0, 209, 210, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 205, 206, 217, 218, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 213, 214, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "objectgroup",
      name = "Player",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 4,
          name = "Spawn",
          type = "",
          shape = "rectangle",
          x = 15,
          y = 340,
          width = 0,
          height = 0,
          rotation = 0,
          visible = false,
          properties = {}
        }
      }
    },
    {
      type = "tilelayer",
      name = "trees_below",
      x = 0,
      y = 0,
      width = 25,
      height = 25,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 180, 181, 182, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 188, 189, 190, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 196, 197, 198, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 205, 206, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 213, 214, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 175, 176, 0, 0, 0, 0, 0, 0, 201, 202, 0, 205, 206, 205, 206, 0, 0, 0, 0, 0, 0, 0, 0,
        175, 176, 183, 184, 0, 0, 0, 201, 202, 0, 209, 210, 0, 213, 214, 213, 214, 0, 0, 0, 0, 0, 0, 0, 0,
        183, 184, 191, 192, 0, 0, 0, 209, 210, 0, 217, 218, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        191, 192, 199, 200, 175, 176, 0, 217, 218, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        199, 200, 207, 208, 183, 184, 0, 0, 0, 180, 181, 182, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        207, 208, 0, 0, 191, 192, 0, 0, 0, 188, 189, 190, 0, 201, 202, 0, 0, 0, 0, 0, 0, 180, 181, 182, 0,
        0, 0, 0, 0, 199, 200, 0, 0, 0, 196, 197, 198, 0, 209, 210, 0, 0, 201, 202, 0, 0, 188, 189, 190, 0,
        177, 178, 179, 0, 207, 208, 0, 0, 201, 202, 0, 0, 0, 217, 218, 0, 0, 209, 210, 0, 0, 196, 197, 198, 0,
        185, 186, 187, 0, 0, 0, 0, 0, 209, 210, 0, 0, 0, 0, 0, 0, 0, 217, 218, 0, 0, 0, 0, 0, 0,
        193, 194, 195, 0, 0, 0, 0, 0, 217, 218, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 177, 178, 179, 180, 181, 182, 0, 0, 0, 0, 0, 0, 201, 202, 0, 0, 180, 181, 182, 0, 0, 0, 0,
        0, 0, 185, 186, 187, 188, 189, 190, 0, 0, 0, 0, 0, 0, 209, 210, 0, 0, 188, 189, 190, 0, 0, 0, 0,
        178, 179, 193, 194, 195, 196, 197, 198, 201, 202, 0, 0, 0, 0, 217, 218, 0, 0, 196, 197, 198, 0, 0, 201, 202,
        186, 187, 0, 0, 0, 0, 0, 0, 209, 210, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 209, 210,
        194, 195, 0, 0, 0, 0, 0, 0, 217, 218, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 217, 218
      }
    },
    {
      type = "objectgroup",
      name = "collidable",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 2,
          name = "",
          type = "",
          shape = "polyline",
          x = 2,
          y = 301,
          width = 0,
          height = 0,
          rotation = 0,
          visible = false,
          polyline = {
            { x = 0, y = 0 },
            { x = 37, y = -2 },
            { x = 124, y = -89 },
            { x = 151, y = -154 },
            { x = 249, y = -247 },
            { x = 382, y = -245 },
            { x = 410, y = -210 },
            { x = 459, y = -207 },
            { x = 524, y = -122 },
            { x = 592, y = -85 },
            { x = 664, y = -6 },
            { x = 798, y = -3 }
          },
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 3,
          name = "",
          type = "",
          shape = "polyline",
          x = 799,
          y = 437,
          width = 0,
          height = 0,
          rotation = 0,
          visible = false,
          polyline = {
            { x = 0, y = 0 },
            { x = -229, y = 1 },
            { x = -413, y = -186 },
            { x = -547, y = -189 },
            { x = -557, y = -137 },
            { x = -585, y = -123 },
            { x = -595, y = -69 },
            { x = -662, y = -4 },
            { x = -798, y = 2 }
          },
          properties = {
            ["collidable"] = true
          }
        }
      }
    }
  }
}
