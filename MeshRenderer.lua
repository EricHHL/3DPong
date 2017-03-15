MeshRenderer = Script({Mesh})



function MeshRenderer:draw(m)
	


	v2d = {}	--Vetor pra guardar a posicao 2D dos vertices 
	for k,vert in pairs(m.mesh.v) do

		v2d[k] = graphics3D.to2D(m.pos+vert*50)
		
	end

	for k,face in pairs(m.mesh.f) do
		love.graphics.setColor(255,255,255,150)
		local verts = {}
		for k,v in pairs(face) do
			verts[#verts+1] = v2d[v.v].x
			verts[#verts+1] = v2d[v.v].y
		end
		lg.polygon("fill", verts)
		love.graphics.setColor(Color.black:value())
		for i=1,#face-1 do
			lg.line(v2d[face[i].v].x, v2d[face[i].v].y, v2d[face[i+1].v].x, v2d[face[i+1].v].y)
		end
	end
end