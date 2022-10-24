Enemy = Object.extend(Object)
moveSpeed = 500

function Enemy.new(self)
    screenW, screenH = love.graphics.getWidth, love.graphics.getHeight
    self.x = math.random(1,screenW())
    self.y = math.random(1,screenH())
    self.width = 10
    self.height = 10
    self.etype = 0
end

function Enemy.setEnemyType(self, enemytype)
    self.etype = enemytype
end

function Enemy.update(self, dt, Player)
    if (self.etype == "bugout") then
        self.x = self.x + math.random(-100,100) * dt
        self.y = self.y + math.random(-100,100) * dt

    elseif (self.etype == "follow") then
        self.x = self.x + math.random(-100,100) * dt
        self.y = self.y + math.random(-100,100) * dt
        moveX = player.x - self.x
        moveY = player.y - self.y
        norm = math.sqrt((moveX * moveX) + (moveY * moveY))
        self.x = self.x + (moveX / norm)
        self.y = self.y + (moveY / norm)
    end


    --move across screen
    


    --

end

function Enemy.draw(self)
    love.graphics.circle("fill", self.x, self.y, self.width, self.height)
end


