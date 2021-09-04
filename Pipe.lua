Pipe = Class{}

local PIPE_IMAGE = love.graphics.newImage('pipe.png')

--local  PIPE_SCROLL = -60

PIPE_SPEED = 60

PIPE_HEIGHT = 288
PIPE_WIDTH = 70

function Pipe:init(orientation, y)
    
    self.x = VIRTUAL_WIDTH
    self.y = y--math.random(VIRTUAL_HEIGHT / 4, VIRTUAL_HEIGHT - 10)

    self.width = PIPE_IMAGE:getWidth()
    self.height = PIPE_HEIGHT

    self.orientation = orientation
end

function Pipe:update(dt)

end


function Pipe:render()
    love.graphics.draw(PIPE_IMAGE, self.x, 
        (self.orientation == 'top' and self.y + PIPE_HEIGHT or self.y), 
        0, 1, self.orientation == 'top' and -1 or 1)
end