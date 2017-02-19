-- Game Scale
GAME_SCALE = 2

-- Map path
MAP_PATH = "resources/maps/"

-- Sprites path
SPRITE_PATH = "resources/sprites/"

-- Window init
function love.conf(t)
  t.window.height = 480
  t.window.width = 960
  t.title = "LOVEmx: Motocross Round #3 - Thunder Valley, Colorado"

  t.modules.audio    = true
	t.modules.event    = true
	t.modules.graphics = true
	t.modules.image    = true
	t.modules.joystick = true
	t.modules.keyboard = true
	t.modules.math     = true
	t.modules.mouse    = true
	t.modules.physics  = true
	t.modules.sound    = true
	t.modules.system   = true
	t.modules.timer    = true
	t.modules.window   = true
end
