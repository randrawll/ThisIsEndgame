Level = Object.extend(Object)
moveSpeed = 300

function Level.new(self)
    screenW, screenH = love.graphics.getWidth, love.graphics.getHeight
    self.x = 0
    self.y = 0
    self.width = 10
    self.height = 10
    mapend = 0
    background = love.graphics.newImage("grass.png")
end

function Level.update(self, mapend, dt)
    if mapend == 0 then
        if love.keyboard.isDown("w") or love.keyboard.isDown("up") then self.y = self.y + moveSpeed * dt
        elseif love.keyboard.isDown("s") or love.keyboard.isDown("down") then self.y = self.y - moveSpeed * dt
        elseif love.keyboard.isDown("a") or love.keyboard.isDown("left") then self.x = self.x + moveSpeed * dt
        elseif love.keyboard.isDown("d") or love.keyboard.isDown("right") then self.x = self.x - moveSpeed * dt
        elseif love.keyboard.isDown("space") then print(self.x, self.y)
        end
    end

    if self.x < -475 then 
        --self.x = -475 
        mapend = 1
    elseif self.x > 0 then 
        --self.x = 0 
        mapend = 1
    elseif self.y < -675 then 
        --self.y = -675 
        mapend = 1
    elseif self.y > 0 then 
        --self.y = 0 
        mapend = 1
    else mapend = 0
    end

    return mapend
end

function Level.draw(self)
    love.graphics.draw(background, self.x, self.y, 0, 5, 5)
end
