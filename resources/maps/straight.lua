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
  nextobjectid = 4,
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
          id = 4,
          terrain = { 0, 0, 0, -1 }
        },
        {
          id = 5,
          terrain = { 0, 0, -1, 0 }
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
      tiles = {
        {
          id = 34,
          properties = {
            ["slow"] = true
          }
        },
        {
          id = 52,
          properties = {
            ["slow"] = true
          }
        },
        {
          id = 53,
          properties = {
            ["slow"] = true
          }
        }
      }
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
      tiles = {
        {
          id = 0,
          properties = {
            ["offsetZ"] = 5
          }
        },
        {
          id = 2,
          properties = {
            ["offsetZ"] = -5
          }
        },
        {
          id = 3,
          properties = {
            ["offsetZ"] = 5
          }
        },
        {
          id = 5,
          properties = {
            ["offsetZ"] = -5
          }
        },
        {
          id = 6,
          properties = {
            ["offsetZ"] = 5
          }
        },
        {
          id = 8,
          properties = {
            ["offsetZ"] = -5
          }
        },
        {
          id = 9,
          properties = {
            ["offsetZ"] = 5
          }
        },
        {
          id = 11,
          properties = {
            ["offsetZ"] = -5
          }
        },
        {
          id = 12,
          properties = {
            ["offsetZ"] = 5
          }
        },
        {
          id = 14,
          properties = {
            ["offsetZ"] = -5
          }
        }
      }
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
        120, 119, 118, 119, 119, 101, 118, 120, 120, 118, 118, 119, 119, 101, 101, 119, 119, 118, 101, 120, 119, 118, 120, 101, 119,
        101, 119, 119, 120, 119, 119, 119, 101, 101, 101, 120, 119, 119, 101, 120, 118, 119, 118, 101, 120, 120, 119, 101, 120, 119,
        119, 118, 119, 118, 119, 118, 118, 120, 119, 119, 118, 119, 119, 120, 120, 119, 120, 120, 101, 118, 120, 101, 118, 101, 119,
        120, 101, 101, 118, 120, 120, 119, 119, 101, 120, 119, 101, 120, 120, 118, 118, 119, 101, 120, 118, 101, 120, 120, 119, 101,
        120, 119, 119, 118, 119, 118, 120, 120, 120, 101, 119, 118, 101, 120, 101, 118, 119, 101, 120, 119, 120, 119, 118, 120, 120,
        119, 119, 119, 101, 120, 101, 119, 118, 101, 119, 120, 101, 118, 118, 101, 119, 120, 119, 118, 101, 119, 101, 118, 118, 101,
        101, 119, 118, 118, 118, 120, 119, 120, 120, 101, 120, 118, 118, 118, 119, 120, 119, 118, 118, 120, 118, 119, 118, 118, 119,
        101, 119, 119, 119, 119, 101, 119, 118, 118, 101, 119, 120, 118, 101, 119, 101, 119, 118, 118, 101, 118, 119, 118, 118, 119,
        119, 120, 101, 119, 101, 120, 101, 118, 119, 119, 120, 101, 118, 101, 119, 101, 118, 118, 101, 119, 119, 118, 120, 101, 101,
        119, 118, 120, 101, 118, 120, 120, 101, 118, 120, 120, 118, 120, 101, 119, 101, 120, 101, 119, 120, 119, 120, 118, 120, 118,
        101, 119, 120, 119, 118, 120, 118, 120, 101, 118, 118, 120, 120, 101, 118, 119, 101, 119, 119, 101, 119, 120, 119, 118, 119,
        101, 101, 119, 119, 119, 101, 101, 119, 119, 118, 119, 101, 118, 101, 120, 119, 101, 101, 101, 119, 118, 119, 119, 119, 119,
        118, 118, 118, 119, 119, 120, 101, 101, 118, 101, 118, 120, 101, 119, 120, 118, 119, 120, 120, 119, 118, 120, 101, 118, 119,
        119, 101, 118, 118, 120, 118, 119, 101, 119, 118, 101, 120, 119, 119, 101, 101, 119, 120, 101, 120, 120, 101, 118, 119, 101,
        118, 118, 101, 119, 118, 119, 120, 120, 101, 101, 101, 120, 119, 101, 101, 101, 119, 120, 101, 101, 120, 118, 120, 120, 119,
        101, 120, 119, 101, 120, 101, 101, 101, 118, 119, 119, 120, 120, 119, 120, 118, 119, 119, 120, 120, 120, 118, 120, 119, 119,
        101, 120, 101, 118, 101, 120, 119, 101, 118, 101, 101, 118, 119, 120, 118, 120, 118, 118, 101, 101, 118, 120, 119, 119, 120,
        120, 119, 119, 120, 118, 120, 101, 101, 120, 101, 118, 119, 118, 119, 120, 120, 120, 101, 119, 118, 120, 118, 120, 118, 101,
        101, 119, 101, 101, 101, 101, 120, 119, 120, 118, 119, 119, 119, 119, 101, 118, 101, 119, 101, 118, 101, 101, 118, 119, 101,
        118, 119, 118, 119, 101, 120, 101, 101, 119, 101, 118, 101, 120, 120, 119, 120, 118, 101, 101, 101, 119, 101, 101, 119, 119,
        120, 120, 120, 101, 119, 119, 118, 119, 120, 118, 119, 120, 118, 119, 101, 118, 101, 101, 120, 118, 119, 118, 118, 118, 118,
        118, 119, 119, 119, 120, 101, 119, 118, 118, 119, 120, 101, 118, 101, 118, 101, 101, 119, 119, 118, 120, 120, 120, 101, 120,
        118, 101, 120, 119, 118, 119, 120, 118, 120, 118, 119, 118, 120, 118, 101, 118, 101, 101, 101, 118, 118, 119, 120, 120, 101,
        118, 119, 118, 119, 118, 119, 118, 118, 101, 118, 101, 119, 120, 118, 118, 120, 101, 101, 119, 118, 101, 101, 101, 101, 120,
        120, 118, 118, 119, 119, 101, 119, 101, 101, 120, 120, 118, 101, 118, 101, 101, 120, 101, 120, 119, 101, 119, 101, 120, 118
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29,
        41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41,
        41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41,
        41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41,
        53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53,
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 223, 224, 225, 34, 35, 35, 35, 35, 35, 35, 35, 35, 36, 223, 224, 224, 225, 0, 0, 0,
        0, 0, 0, 0, 0, 226, 227, 228, 46, 125, 107, 107, 107, 107, 107, 107, 126, 48, 226, 227, 227, 228, 0, 0, 0,
        0, 0, 0, 0, 0, 229, 230, 231, 46, 125, 107, 107, 107, 107, 107, 107, 126, 48, 229, 230, 230, 231, 0, 0, 0,
        0, 0, 0, 0, 0, 232, 233, 234, 46, 125, 107, 107, 107, 107, 107, 107, 126, 48, 232, 233, 233, 234, 0, 0, 0,
        0, 0, 0, 0, 0, 235, 236, 237, 58, 59, 59, 59, 59, 59, 59, 59, 59, 60, 235, 236, 236, 237, 0, 0, 0,
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 177, 178, 179, 0, 183, 184, 0, 0, 0,
        0, 0, 175, 176, 0, 177, 178, 179, 0, 0, 177, 178, 179, 0, 0, 0, 185, 186, 187, 0, 191, 192, 0, 175, 176,
        0, 0, 183, 184, 0, 185, 186, 187, 0, 0, 185, 186, 187, 0, 0, 0, 193, 194, 195, 0, 199, 200, 0, 183, 184,
        0, 0, 191, 192, 0, 193, 194, 195, 0, 0, 193, 194, 195, 0, 175, 176, 0, 0, 0, 0, 207, 208, 0, 191, 192,
        175, 176, 199, 200, 175, 176, 0, 0, 175, 176, 0, 0, 0, 0, 183, 184, 175, 176, 177, 178, 179, 175, 176, 199, 200,
        183, 184, 207, 208, 183, 184, 0, 0, 183, 184, 0, 0, 0, 0, 191, 192, 183, 184, 185, 186, 187, 183, 184, 207, 208,
        191, 192, 0, 0, 191, 192, 0, 0, 191, 192, 0, 177, 178, 179, 199, 200, 191, 192, 193, 194, 195, 191, 192, 0, 0,
        199, 200, 0, 0, 199, 200, 0, 0, 199, 200, 0, 185, 186, 187, 207, 208, 199, 200, 0, 0, 0, 199, 200, 203, 204,
        207, 208, 0, 0, 207, 208, 0, 0, 207, 208, 0, 193, 194, 195, 0, 0, 207, 208, 0, 0, 0, 207, 208, 211, 212,
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
          id = 1,
          name = "Spawn",
          type = "",
          shape = "rectangle",
          x = 13,
          y = 367,
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 175, 176, 0, 0, 0, 0, 0,
        0, 0, 0, 175, 176, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 183, 184, 0, 0, 0, 0, 0,
        0, 0, 0, 183, 184, 0, 0, 0, 0, 177, 178, 179, 0, 0, 177, 178, 179, 0, 191, 192, 0, 0, 0, 0, 0,
        0, 175, 176, 191, 192, 0, 0, 0, 0, 185, 186, 187, 175, 176, 185, 186, 187, 0, 199, 200, 175, 176, 0, 203, 204,
        0, 183, 184, 199, 200, 0, 0, 0, 0, 193, 194, 195, 183, 184, 193, 194, 195, 0, 207, 208, 183, 184, 0, 211, 212,
        0, 191, 192, 207, 208, 0, 0, 0, 0, 0, 0, 0, 191, 192, 0, 0, 0, 177, 178, 179, 191, 192, 0, 0, 0,
        0, 199, 200, 0, 0, 0, 0, 177, 178, 179, 0, 0, 199, 200, 0, 0, 0, 185, 186, 187, 199, 200, 175, 176, 0,
        0, 207, 208, 0, 175, 176, 0, 185, 186, 187, 0, 0, 207, 208, 0, 0, 0, 193, 194, 195, 207, 208, 183, 184, 0,
        175, 176, 0, 0, 183, 184, 0, 193, 194, 195, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 191, 192, 0,
        183, 184, 0, 0, 191, 192, 0, 0, 0, 0, 0, 175, 176, 0, 0, 0, 0, 0, 175, 176, 0, 0, 199, 200, 0,
        191, 192, 175, 176, 199, 200, 0, 175, 176, 0, 0, 183, 184, 0, 177, 178, 179, 0, 183, 184, 0, 0, 207, 208, 0,
        199, 200, 183, 184, 207, 208, 0, 183, 184, 0, 0, 191, 192, 0, 185, 186, 187, 0, 191, 192, 0, 0, 0, 0, 0,
        207, 208, 191, 192, 0, 0, 0, 191, 192, 0, 0, 199, 200, 0, 193, 194, 195, 0, 199, 200, 0, 0, 177, 178, 179,
        0, 0, 199, 200, 0, 0, 0, 199, 200, 0, 0, 207, 208, 0, 0, 0, 0, 0, 207, 208, 0, 0, 185, 186, 187,
        0, 0, 207, 208, 0, 0, 0, 207, 208, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 193, 194, 195
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
          x = 1,
          y = 294,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 799, y = 1 }
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
          x = 2,
          y = 440,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 797, y = 2 }
          },
          properties = {
            ["collidable"] = true
          }
        }
      }
    }
  }
}
