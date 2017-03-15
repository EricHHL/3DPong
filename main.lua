require("lib.Coisa.coisaCore")

require("lib.graphics3D")
require("lib.vector3")


--objLoader = require("lib.obj_loader")


lg = love.graphics

Mesh = Component("mesh", {vt = {}, f = {}, vp = {}, v = {}, vn = {}})

require("MeshRenderer")

function love.load()
	--local o = objLoader.load("modelos/caixa.obj")
	--printTable(o)
	cCore.loadScene(R.scene.gameScene)
end

function love.update(dt)
	cCore.update(dt)
end

function love.draw()
	cCore.draw()
end

function love.keypressed(key, scancode, isrepeat)
    if key == "escape" then
        love.event.quit()
    end
end

function printTable(t, suffix)
	suffix = suffix or ""
	for k,v in pairs(t) do
		if type(v) == "table" then
			print(suffix..k..":")
			--printTable(v, suffix.."  ")
		else
			print(suffix..k..": "..v)
		end
	end
end
function love.keypressed(key, scancode, isrepeat)
    if key == "escape" then
        love.event.quit()
    end
end
