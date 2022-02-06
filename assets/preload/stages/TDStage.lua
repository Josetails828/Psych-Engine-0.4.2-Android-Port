function onCreate()
	-- background shit
	makeLuaSprite('tails', 'TailsBG', -320, -30);
	setLuaSpriteScrollFactor('tails', 1, 1);
		
	
	addLuaSprite('tails', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end