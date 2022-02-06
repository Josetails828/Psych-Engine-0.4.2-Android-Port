function onCreate()
	-- background shit
	makeLuaSprite('hi', 'hi', -1500, -900);
	setLuaSpriteScrollFactor('hi', 0, 0);
	scaleObject('hi', 8, 8)
	addLuaSprite('hi', false);

	makeLuaSprite('hi2', 'hi2', -1800, -900);
	setLuaSpriteScrollFactor('hi2', 0, 0);
	scaleObject('hi2', 16, 16)
	addLuaSprite('hi2', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end