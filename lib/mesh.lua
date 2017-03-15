Mesh = {}

local function new()
	local m = {}
	setmetatable(m, {__index = Mesh})

	m.
	
	return m
end



setmetatable(Mesh, {__call = function(_, ...) return new(...) end})