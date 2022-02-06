function onCreate()
	-- today I decided to type all of this out myself..
	makeLuaSprite('gmod', 'SanicBG', -600, -300);
	setScrollFactor('gmod', 0.9, 0.9);



	addLuaSprite('gmod', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end