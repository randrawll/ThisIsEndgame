Player = Object.extend(Object)
moveSpeed = 300

function Player.new(self)
    screenW, screenH = love.graphics.getWidth, love.graphics.getHeight
    self.x = screenW() / 2
    self.y = screenH() / 2
    self.width = 10
    self.height = 10
end

function Player.update(self, mapend, dt)
    if level.mapend == 1 then
        if love.keyboard.isDown("w") or love.keyboard.isDown("up") then self.y = self.y - moveSpeed * dt
        elseif love.keyboard.isDown("s") or love.keyboard.isDown("down") then self.y = self.y + moveSpeed * dt
        elseif love.keyboard.isDown("a") or love.keyboard.isDown("left") then self.x = self.x - moveSpeed * dt
        elseif love.keyboard.isDown("d") or love.keyboard.isDown("right") then self.x = self.x + moveSpeed * dt
        elseif love.keyboard.isDown("space") then print(self.x, self.y)
        end
    end
    
    print("player: ", mapend)
    
    --[[
    if self.x > screenW() then self.x = screenW() - 5
    elseif self.x < 0 then self.x = 5
    elseif self.y > screenH() then self.y = screenH() - 5
    elseif self.y < 0 then self.y = 5
    end
    ]]

end

function Player.draw(self)
    love.graphics.setColor(255,0,0)
    love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
    love.graphics.setColor(255,255,255)
end


