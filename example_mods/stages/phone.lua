function onCreate()
	-- background shit
	makeLuaSprite('phone', 'phone', -600, -300);
	
	addLuaSprite('phone', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end