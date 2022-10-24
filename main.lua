mapState = 0

function love.load()
    screenW = love.graphics.getWidth
    screenH = love.graphics.getHeight
    Object = require "classic"
    require "player"
    require "enemy"
    require "level"
    enemySetup()
    level = Level()
    player = Player()
end

function love.update(dt)
    --print("Main: ", mapState)
    player.update(player, mapState, dt)
    --level.update(level, dt)
    for i = 1, #enemies do
        enemies[i].update(enemies[i], dt, player)
    end   
end

function love.draw()
    level.draw(level)
    for i = 1, #enemies do
        enemies[i].draw(enemies[i], dt)
    end
    player.draw(player)
end

function enemySetup()
    enemies = {}
    for i = 1, 10 do
        e = Enemy()
        temp = math.random(1,2)
        if temp == 1 then
            e.setEnemyType(e, "bugout")
        elseif temp == 2 then
            e.setEnemyType(e, "follow")
        end
        table.insert(enemies, e)
    end
end

