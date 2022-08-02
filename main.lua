function love.load()
	love.graphics.setBackgroundColor(11/255, 11/255, 69/255)
	win_w = love.graphics.getWidth()
	win_h = love.graphics.getHeight()
	rect_w, rect_h = 20, 120
	left = {} -- the left paddle
	left.x = 0 
	left.y = win_h / 2 - rect_h / 2
	right = {} -- the right paddle 
	right.x = win_w - rect_w
	right.y = win_h / 2 - rect_h / 2
	rect_vel = 500 -- paddles' speed 
	ball = {} -- game's ball
	ball.x = win_w / 2
	ball.y = win_h / 2
	ball.vx = 0 -- horizontal velocity
	ball.vy = 0 -- vertical velocity
end

function love.draw()
	love.graphics.rectangle('fill', left.x, left.y, rect_w, rect_h)
	love.graphics.rectangle('fill', right.x, right.y, rect_w, rect_h)
end


function love.keypressed(key)
	if key == "escape" then 
		love.event.quit()
	end
end

function love.update(dt)
	if love.keyboard.isDown('w') then 
		left.y = left. y - rect_vel * dt 
	elseif love.keyboard.isDown('s') then 
		left.y = left.y + rect_vel * dt 
	end 
	if love.keyboard.isDown('up') then 
		right.y = right.y - rect_vel * dt 
	elseif love.keyboard.isDown('down') then 
		right.y = right.y + rect_vel * dt
	end 
	if left.y < 0 then 
		left.y = 0
	elseif left.y + rect_h > win_h then 
		left.y = win_h - rect_h 
	end 
	if right.y < 0 then 
		right.y = 0
	elseif right.y + rect_h > win_h then 
		right.y = win_h - rect_h 
	end 
end
