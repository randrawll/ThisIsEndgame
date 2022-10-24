Level = Object.extend(Object)
moveSpeed = 300
background = love.graphics.newImage("tiletest.png")

function Level.new(self)
    screenW, screenH = love.graphics.getWidth, love.graphics.getHeight
    tileXW = screenW() / 32
    tileYH = screenH() / 32
    quad1 = love.graphics.newQuad(0, 0, 32, 32, 64, 32)
    quad2 = love.graphics.newQuad(32, 0, 32, 32, 64, 32)
    self.thebatch = love.graphics.newSpriteBatch(background, 1) 
    for x = 0, tileXW do
        for y = 0, tileYH do
            if x % 2 == 0 then self.thebatch:add(quad1, 32 * x, 32 * y)
            else self.thebatch:add(quad2, 32 * x, 32 * y)
            end
        end
    end
    --self.thebatch:add(quad1, 0, 0)
end


function Level.update(self, dt)
    if love.keyboard.isDown("w") or love.keyboard.isDown("up") then self.y = self.y + moveSpeed * dt
    elseif love.keyboard.isDown("s") or love.keyboard.isDown("down") then self.y = self.y - moveSpeed * dt
    elseif love.keyboard.isDown("a") or love.keyboard.isDown("left") then self.x = self.x + moveSpeed * dt
    elseif love.keyboard.isDown("d") or love.keyboard.isDown("right") then self.x = self.x - moveSpeed * dt
    elseif love.keyboard.isDown("space") then print(self.x, self.y)
    end
end

function Level.draw(self)
    --love.graphics.draw(background, 0, 0)
    love.graphics.draw(self.thebatch)
end


--[[
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
end


function Level.draw(self)
    love.graphics.draw(background, self.x, self.y, 0, 5, 5)
end

]]
