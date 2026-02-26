Flag = Class {__includes = GameObject}

function Flag:init(def)
	  GameObject.init(self, def)
	-- self.cTexture = def.cTexture
	self.texture = gTextures['flags']
	local flagX = 96
	local zero = 0

	self.flagQuad = love.graphics.newQuad(flagX, zero, 16, 16, self.texture:getDimensions())
	self.poleQuad = love.graphics.newQuad(zero, zero, 16, 48, self.texture:getDimensions())

end

function Flag:update()
end

function Flag:render()
    love.graphics.draw(self.texture, self.poleQuad, self.x, self.y)
    love.graphics.draw(self.texture, self.flagQuad, self.x + 8, self.y + 8)
end


