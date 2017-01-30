return {
  version = "1.1",
  luaversion = "5.1",
  tiledversion = "0.18.1",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 25,
  height = 25,
  tilewidth = 32,
  tileheight = 32,
  nextobjectid = 6,
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
        },
        {
          name = "track mud",
          tile = -1,
          properties = {
            ["slow"] = true
          }
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
          id = 9,
          properties = {
            ["slow"] = true
          }
        },
        {
          id = 10,
          properties = {
            ["slow"] = true
          },
          terrain = { 1, 1, 1, -1 }
        },
        {
          id = 11,
          properties = {
            ["slow"] = true
          },
          terrain = { 1, 1, -1, 1 }
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
          id = 21,
          properties = {
            ["slow"] = true
          }
        },
        {
          id = 22,
          properties = {
            ["slow"] = true
          },
          terrain = { 1, -1, 1, 1 }
        },
        {
          id = 23,
          properties = {
            ["slow"] = true
          },
          terrain = { -1, 1, 1, 1 }
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
          },
          terrain = { -1, -1, -1, 1 }
        },
        {
          id = 34,
          properties = {
            ["slow"] = true
          },
          terrain = { -1, -1, 1, 1 }
        },
        {
          id = 35,
          properties = {
            ["slow"] = true
          },
          terrain = { -1, -1, 1, -1 }
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
          },
          terrain = { -1, 1, -1, 1 }
        },
        {
          id = 46,
          properties = {
            ["slow"] = true
          },
          terrain = { 1, 1, 1, 1 }
        },
        {
          id = 47,
          properties = {
            ["slow"] = true
          },
          terrain = { 1, -1, 1, -1 }
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
          },
          terrain = { -1, 1, -1, -1 }
        },
        {
          id = 58,
          properties = {
            ["slow"] = true
          },
          terrain = { 1, 1, -1, -1 }
        },
        {
          id = 59,
          properties = {
            ["slow"] = true
          },
          terrain = { 1, -1, -1, -1 }
        },
        {
          id = 69,
          properties = {
            ["slow"] = true
          }
        },
        {
          id = 70,
          properties = {
            ["slow"] = true
          }
        },
        {
          id = 71,
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
      name = "ramp",
      firstgid = 127,
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "sheets/ramp.png",
      imagewidth = 96,
      imageheight = 128,
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {},
      terrains = {},
      tilecount = 12,
      tiles = {}
    },
    {
      name = "rocks",
      firstgid = 139,
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
      firstgid = 187,
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
        118, 118, 119, 101, 101, 118, 101, 120, 118, 118, 120, 101, 101, 101, 119, 101, 101, 120, 118, 118, 119, 118, 119, 101, 119,
        120, 118, 120, 120, 119, 101, 119, 120, 119, 101, 101, 101, 101, 119, 101, 101, 101, 119, 120, 118, 118, 120, 118, 120, 101,
        119, 118, 118, 101, 101, 118, 101, 119, 118, 101, 119, 101, 118, 118, 101, 120, 118, 101, 101, 101, 101, 101, 119, 118, 120,
        101, 101, 118, 120, 119, 120, 101, 120, 119, 118, 118, 120, 101, 120, 101, 120, 118, 101, 118, 120, 119, 120, 118, 101, 101,
        118, 118, 120, 118, 119, 120, 101, 120, 119, 120, 118, 118, 101, 120, 120, 120, 120, 119, 120, 120, 101, 101, 101, 118, 118,
        120, 119, 101, 120, 120, 118, 119, 120, 118, 119, 119, 119, 118, 118, 119, 119, 120, 120, 120, 101, 118, 118, 118, 119, 119,
        119, 120, 101, 101, 120, 120, 120, 120, 101, 118, 120, 119, 118, 120, 118, 119, 118, 118, 118, 118, 120, 120, 118, 120, 120,
        101, 119, 101, 120, 118, 120, 119, 101, 120, 101, 101, 118, 119, 119, 119, 118, 119, 119, 101, 101, 101, 119, 101, 101, 118,
        120, 101, 101, 101, 119, 101, 119, 118, 101, 119, 118, 120, 118, 119, 101, 101, 118, 120, 101, 119, 118, 101, 118, 119, 120,
        118, 118, 120, 118, 101, 101, 118, 101, 119, 120, 119, 101, 118, 101, 119, 119, 120, 119, 120, 120, 101, 119, 120, 101, 118,
        101, 119, 101, 119, 119, 118, 118, 118, 120, 118, 101, 118, 119, 118, 119, 120, 119, 120, 118, 119, 118, 119, 101, 120, 120,
        101, 101, 118, 101, 120, 120, 118, 118, 119, 101, 101, 101, 118, 120, 101, 119, 119, 118, 118, 101, 119, 101, 118, 120, 101,
        101, 118, 119, 118, 118, 118, 118, 118, 101, 118, 120, 120, 120, 120, 120, 120, 118, 119, 118, 120, 120, 118, 101, 120, 120,
        118, 120, 119, 118, 120, 119, 119, 119, 119, 101, 120, 119, 118, 101, 120, 101, 101, 120, 118, 120, 118, 118, 101, 101, 120,
        101, 101, 118, 118, 119, 119, 118, 101, 101, 120, 119, 120, 118, 101, 119, 101, 101, 120, 119, 120, 119, 101, 120, 101, 101,
        101, 118, 120, 119, 120, 118, 120, 101, 120, 101, 101, 120, 119, 101, 119, 119, 120, 119, 101, 120, 101, 120, 118, 119, 101,
        120, 118, 118, 120, 118, 118, 118, 101, 120, 118, 120, 119, 119, 118, 101, 119, 101, 119, 119, 101, 118, 120, 118, 118, 118,
        118, 101, 118, 120, 119, 101, 120, 101, 101, 119, 101, 119, 101, 119, 101, 118, 101, 101, 118, 120, 120, 120, 101, 118, 101,
        119, 119, 101, 120, 119, 101, 120, 101, 119, 101, 101, 119, 118, 118, 118, 101, 119, 118, 118, 101, 119, 118, 119, 119, 119,
        120, 101, 118, 120, 118, 120, 120, 119, 119, 101, 120, 119, 118, 118, 118, 101, 101, 119, 120, 120, 120, 118, 120, 118, 119,
        118, 118, 119, 101, 101, 118, 118, 101, 101, 118, 120, 101, 119, 120, 119, 101, 119, 119, 118, 119, 119, 101, 101, 120, 119,
        101, 101, 119, 120, 101, 101, 101, 101, 119, 101, 119, 118, 119, 120, 120, 101, 101, 118, 119, 118, 119, 101, 119, 101, 119,
        120, 119, 120, 119, 120, 120, 118, 101, 101, 118, 119, 101, 118, 118, 118, 101, 118, 118, 118, 120, 119, 119, 118, 118, 118,
        119, 119, 118, 120, 119, 101, 119, 119, 120, 101, 101, 118, 120, 101, 118, 120, 101, 118, 119, 101, 101, 120, 101, 120, 119,
        101, 119, 120, 101, 119, 119, 101, 119, 101, 120, 120, 120, 101, 119, 120, 118, 119, 118, 120, 119, 120, 101, 118, 119, 118
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
        29, 29, 29, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 29, 29, 29,
        41, 41, 41, 17, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 18, 41, 41, 41,
        41, 41, 41, 41, 17, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 18, 41, 41, 41, 41,
        41, 41, 41, 41, 41, 17, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 18, 41, 41, 41, 41, 41,
        53, 53, 6, 41, 41, 41, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 41, 41, 41, 41, 5, 53,
        0, 0, 40, 41, 41, 41, 17, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 18, 41, 41, 41, 5, 54, 0,
        0, 0, 52, 6, 41, 41, 41, 42, 0, 0, 0, 0, 0, 0, 0, 0, 28, 18, 41, 41, 41, 5, 54, 0, 0,
        0, 0, 0, 40, 41, 41, 41, 17, 30, 0, 0, 0, 0, 0, 0, 0, 40, 41, 41, 41, 41, 42, 0, 0, 0,
        0, 0, 0, 52, 6, 41, 41, 41, 17, 30, 0, 0, 0, 0, 0, 28, 18, 41, 41, 41, 5, 54, 0, 0, 0,
        0, 0, 0, 0, 40, 41, 41, 41, 41, 17, 30, 0, 0, 0, 28, 18, 41, 41, 41, 5, 54, 0, 0, 0, 0,
        0, 0, 0, 0, 52, 6, 41, 41, 41, 41, 17, 29, 29, 29, 18, 41, 41, 41, 41, 42, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 40, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 42, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 52, 6, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 5, 54, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 52, 6, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 42, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 52, 6, 41, 41, 41, 41, 41, 41, 41, 41, 5, 54, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 52, 53, 53, 53, 53, 53, 53, 53, 53, 54, 0, 0, 0, 0, 0, 0, 0
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
        189, 190, 191, 0, 0, 189, 190, 191, 0, 213, 214, 0, 221, 222, 0, 0, 0, 0, 213, 214, 0, 0, 0, 0, 0,
        197, 198, 199, 0, 0, 197, 198, 199, 0, 221, 222, 0, 229, 230, 0, 192, 193, 194, 221, 222, 0, 213, 214, 0, 0,
        205, 206, 207, 187, 188, 205, 206, 207, 0, 229, 230, 0, 0, 0, 0, 200, 201, 202, 229, 230, 0, 221, 222, 0, 0,
        0, 0, 0, 195, 196, 0, 0, 189, 190, 191, 0, 192, 193, 194, 0, 208, 209, 210, 0, 0, 0, 229, 230, 0, 0,
        187, 188, 0, 203, 204, 0, 0, 197, 198, 199, 0, 200, 201, 202, 0, 0, 0, 0, 192, 193, 194, 0, 192, 193, 194,
        195, 196, 0, 211, 212, 0, 0, 205, 206, 207, 0, 208, 209, 210, 0, 0, 0, 0, 200, 201, 202, 0, 200, 201, 202,
        203, 204, 0, 219, 220, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 208, 209, 210, 0, 208, 209, 210,
        211, 212, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        219, 220, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 213, 214, 0, 0, 192, 193, 194, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 213, 214, 0, 221, 222, 0, 0, 200, 201, 202, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 221, 222, 0, 229, 230, 0, 0, 208, 209, 210, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 229, 230, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 213, 214, 192, 193, 194, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 221, 222, 200, 201, 202, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 229, 230, 208, 209, 210, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        189, 190, 191, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        197, 198, 199, 0, 0, 189, 190, 191, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        205, 206, 207, 0, 0, 197, 198, 199, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 205, 206, 207, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
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
        0, 0, 0, 0, 0, 0, 0, 0, 34, 35, 35, 35, 35, 35, 35, 35, 35, 36, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 34, 35, 35, 24, 47, 47, 47, 47, 47, 47, 47, 47, 23, 35, 36, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 34, 24, 47, 47, 47, 47, 11, 59, 59, 59, 59, 12, 47, 47, 47, 23, 35, 35, 36, 0, 0,
        0, 0, 0, 34, 24, 47, 47, 11, 59, 59, 60, 0, 0, 0, 0, 58, 59, 12, 47, 47, 47, 47, 48, 0, 0,
        0, 0, 0, 46, 47, 11, 59, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 58, 59, 59, 59, 59, 60, 0, 0,
        0, 0, 0, 58, 59, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 127, 128, 128, 128, 129, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 130, 128, 128, 131, 132, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 127, 128, 128, 128, 129, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 130, 131, 131, 131, 132, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 136, 137, 137, 137, 138, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
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
          x = 9,
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 187, 188, 0, 0, 0, 187, 188, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 187, 188, 195, 196, 0, 0, 0, 195, 196, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 187, 188, 195, 196, 203, 204, 189, 190, 191, 203, 204, 187, 188, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 195, 196, 203, 204, 211, 212, 197, 198, 199, 211, 212, 195, 196, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 203, 204, 211, 212, 219, 220, 205, 206, 207, 219, 220, 203, 204, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 211, 212, 219, 220, 0, 0, 0, 145, 146, 0, 0, 211, 212, 0, 0, 0, 0, 0, 0,
        187, 188, 0, 0, 0, 0, 219, 220, 0, 0, 0, 0, 0, 153, 154, 0, 0, 219, 220, 0, 0, 0, 0, 0, 0,
        195, 196, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 161, 162, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        203, 204, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 213, 214, 0,
        211, 212, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 221, 222, 0,
        219, 220, 189, 190, 191, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 229, 230, 0,
        0, 0, 197, 198, 199, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 205, 206, 207, 187, 188, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 195, 196, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 213, 214, 192, 193, 194,
        0, 0, 0, 0, 0, 203, 204, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 221, 222, 200, 201, 202,
        0, 0, 0, 0, 0, 211, 212, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 229, 230, 208, 209, 210,
        0, 0, 0, 0, 0, 219, 220, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 213, 214, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 213, 214, 0, 0, 221, 222, 0, 192, 193, 194, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 189, 190, 191, 215, 216, 221, 222, 0, 0, 229, 230, 0, 200, 201, 202, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 197, 198, 199, 223, 224, 229, 230, 0, 0, 0, 0, 0, 208, 209, 210, 0
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
          visible = false,
          polyline = {
            { x = 0, y = 0 },
            { x = 113, y = 5 },
            { x = 181, y = -59 },
            { x = 248, y = -71 },
            { x = 277, y = -96 },
            { x = 547, y = -95 },
            { x = 613, y = -58 },
            { x = 656, y = -24 },
            { x = 690, y = -24 },
            { x = 737, y = 3 },
            { x = 799, y = 3 }
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
          x = 174,
          y = 372,
          width = 0,
          height = 0,
          rotation = 0,
          visible = false,
          polyline = {
            { x = 0, y = 0 },
            { x = 172, y = 243 },
            { x = 290, y = 245 },
            { x = 481, y = -31 },
            { x = 372, y = -55 },
            { x = 309, y = -91 },
            { x = 204, y = -92 },
            { x = 137, y = -61 },
            { x = 93, y = -64 },
            { x = 38, y = -49 },
            { x = 1, y = 0 }
          },
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 4,
          name = "",
          type = "",
          shape = "polyline",
          x = 0,
          y = 441,
          width = 0,
          height = 0,
          rotation = 0,
          visible = false,
          polyline = {
            { x = 0, y = 0 },
            { x = 63, y = 3 },
            { x = 145, y = 181 },
            { x = 276, y = 320 },
            { x = 566, y = 322 },
            { x = 737, y = 1 },
            { x = 800, y = 0 }
          },
          properties = {
            ["collidable"] = true
          }
        }
      }
    }
  }
}