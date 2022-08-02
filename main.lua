function love.load()
	love.graphics.setBackgroundColor(11/255, 11/255, 69/255)
end


function love.keypressed(key)
	if key == "escape" then 
		love.event.quit()
	end
end
