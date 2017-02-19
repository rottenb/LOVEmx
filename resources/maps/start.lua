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
      tiles = {
        {
          id = 2,
          properties = {
            ["offsetZ"] = -16
          }
        },
        {
          id = 5,
          properties = {
            ["offsetZ"] = -32
          }
        },
        {
          id = 8,
          properties = {
            ["offsetZ"] = -16
          }
        },
        {
          id = 11,
          properties = {
            ["offsetZ"] = -16
          }
        }
      }
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
        119, 118, 101, 120, 119, 118, 119, 120, 118, 120, 118, 119, 118, 120, 118, 101, 118, 101, 101, 101, 118, 118, 119, 120, 120,
        101, 118, 119, 118, 119, 118, 119, 118, 118, 101, 118, 101, 119, 120, 118, 118, 120, 101, 101, 119, 118, 101, 101, 101, 101,
        118, 120, 118, 118, 119, 119, 101, 119, 101, 101, 120, 120, 118, 101, 118, 101, 101, 120, 101, 120, 119, 101, 119, 101, 120,
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
        118, 119, 119, 119, 120, 101, 119, 118, 118, 119, 120, 101, 118, 101, 118, 101, 101, 119, 119, 118, 120, 120, 120, 101, 120
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
        187, 188, 0, 0, 189, 190, 191, 0, 0, 0, 0, 0, 0, 0, 197, 198, 199, 0, 0, 0, 0, 0, 0, 0, 0,
        195, 196, 0, 0, 197, 198, 199, 0, 187, 188, 0, 0, 187, 188, 205, 206, 207, 0, 0, 189, 190, 191, 0, 0, 0,
        203, 204, 0, 0, 205, 206, 207, 0, 195, 196, 0, 0, 195, 196, 0, 0, 187, 188, 0, 197, 198, 199, 0, 0, 0,
        211, 212, 0, 0, 187, 188, 0, 0, 203, 204, 0, 0, 203, 204, 0, 0, 195, 196, 0, 205, 206, 207, 187, 188, 0,
        219, 220, 187, 188, 195, 196, 187, 188, 211, 212, 0, 0, 211, 212, 0, 0, 203, 204, 0, 0, 0, 0, 195, 196, 0,
        187, 188, 195, 196, 203, 204, 195, 196, 219, 220, 0, 0, 219, 220, 0, 0, 211, 212, 0, 0, 0, 0, 203, 204, 0,
        195, 196, 203, 204, 211, 212, 203, 204, 0, 0, 189, 190, 191, 0, 0, 0, 219, 220, 0, 0, 0, 0, 211, 212, 0,
        203, 204, 211, 212, 219, 220, 211, 212, 0, 0, 197, 198, 199, 0, 0, 0, 0, 0, 215, 216, 0, 0, 219, 220, 0,
        211, 212, 219, 220, 0, 0, 219, 220, 0, 0, 205, 206, 207, 0, 0, 0, 0, 0, 223, 224, 0, 0, 0, 0, 0,
        219, 220, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
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
        128, 128, 128, 128, 128, 129, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        131, 131, 131, 131, 131, 132, 129, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        134, 134, 134, 134, 134, 135, 132, 129, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        134, 134, 134, 134, 134, 135, 135, 132, 129, 0, 0, 0, 0, 127, 128, 129, 127, 128, 129, 127, 128, 129, 127, 128, 129,
        137, 137, 137, 137, 137, 138, 135, 135, 132, 0, 0, 0, 0, 130, 131, 132, 130, 131, 132, 130, 131, 132, 130, 131, 132,
        0, 0, 0, 0, 0, 0, 138, 135, 135, 0, 0, 0, 0, 133, 134, 135, 133, 134, 135, 133, 134, 135, 133, 134, 135,
        0, 0, 0, 0, 0, 0, 0, 138, 135, 0, 0, 0, 0, 136, 137, 138, 136, 137, 138, 136, 137, 138, 136, 137, 138,
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
          x = 18,
          y = 242,
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
        187, 188, 0, 0, 187, 188, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        195, 196, 187, 188, 195, 196, 187, 188, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 187, 188, 0, 0, 0, 0,
        203, 204, 195, 196, 203, 204, 195, 196, 0, 0, 0, 0, 0, 187, 188, 0, 0, 0, 0, 195, 196, 0, 0, 0, 0,
        211, 212, 203, 204, 211, 212, 203, 204, 0, 189, 190, 191, 0, 195, 196, 0, 0, 0, 0, 203, 204, 0, 0, 0, 0,
        219, 220, 211, 212, 219, 220, 211, 212, 0, 197, 198, 199, 0, 203, 204, 0, 189, 190, 191, 211, 212, 0, 0, 187, 188,
        0, 0, 219, 220, 0, 0, 219, 220, 0, 205, 206, 207, 0, 211, 212, 0, 197, 198, 199, 219, 220, 0, 0, 195, 196,
        0, 189, 190, 191, 187, 188, 0, 0, 0, 0, 0, 0, 0, 219, 220, 0, 205, 206, 207, 0, 189, 190, 191, 203, 204,
        0, 197, 198, 199, 195, 196, 0, 215, 216, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 197, 198, 199, 211, 212,
        0, 205, 206, 207, 203, 204, 0, 223, 224, 0, 0, 0, 0, 0, 0, 215, 216, 0, 0, 0, 205, 206, 207, 219, 220,
        0, 0, 0, 0, 211, 212, 187, 188, 0, 0, 189, 190, 191, 0, 0, 223, 224, 0, 0, 187, 188, 0, 0, 0, 0,
        0, 189, 190, 191, 219, 220, 195, 196, 0, 0, 197, 198, 199, 0, 0, 0, 0, 0, 0, 195, 196, 0, 0, 0, 0,
        0, 197, 198, 199, 0, 0, 203, 204, 0, 0, 205, 206, 207, 0, 0, 0, 0, 0, 0, 203, 204, 0, 0, 0, 0,
        0, 205, 206, 207, 0, 0, 211, 212, 0, 0, 0, 0, 0, 0, 0, 189, 190, 191, 0, 211, 212, 0, 215, 216, 0,
        0, 0, 0, 189, 190, 191, 219, 220, 0, 0, 0, 189, 190, 191, 0, 197, 198, 199, 0, 219, 220, 0, 223, 224, 0,
        0, 0, 0, 197, 198, 199, 0, 0, 0, 0, 0, 197, 198, 199, 0, 205, 206, 207, 0, 0, 0, 189, 190, 191, 0,
        0, 0, 0, 205, 206, 207, 0, 0, 0, 0, 0, 205, 206, 207, 0, 0, 0, 0, 0, 0, 0, 197, 198, 199, 0
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
          y = 429,
          width = 0,
          height = 0,
          rotation = 0,
          visible = false,
          polyline = {
            { x = 0, y = 0 },
            { x = 800, y = 0 }
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
          x = 799,
          y = 290,
          width = 0,
          height = 0,
          rotation = 0,
          visible = false,
          polyline = {
            { x = 0, y = 0 },
            { x = -532, y = 7 },
            { x = -638, y = -95 },
            { x = -799, y = -97 }
          },
          properties = {
            ["collidable"] = true
          }
        }
      }
    }
  }
}
