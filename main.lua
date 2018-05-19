local circleX = 20
local circleY = 20
local radius = 10

local SCREEN_WIDTH = 800
local SCREEN_HEIGHT = 500

function love.draw ()
    love.graphics.setBackgroundColor(255, 255, 255)
    love.graphics.setColor(150, 0, 0)
    love.graphics.circle('fill', circleX, circleY, radius)
    -- love.graphics.newImage("walkingDog.gif")
end

function love.update ()
    if love.keyboard.isDown('right') then
        circleX = circleX + 3
    elseif love.keyboard.isDown('left') then 
        circleX = circleX - 3
    end    
    if love.keyboard.isDown('up') then
        circleY = circleY - 3
    elseif love.keyboard.isDown('down') then 
        circleY = circleY + 3
    end 

    if circleX < radius then 
        circleX = radius
    elseif circleX > SCREEN_WIDTH - radius then
        circleX = SCREEN_WIDTH - radius
    end
    if circleY < radius then 
        circleY = radius
    elseif circleY > SCREEN_HEIGHT - radius then
        circleY = SCREEN_HEIGHT - radius
    end

    
end