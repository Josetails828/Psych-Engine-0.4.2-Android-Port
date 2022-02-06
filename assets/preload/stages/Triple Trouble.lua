function onCreate()
	-- background shit
	makeLuaSprite('Glitch', 'Glitch', -300, -60);
	setLuaSpriteScrollFactor('Glitch', 0.1, 0.1);

	makeLuaSprite('Grass', 'Grass', -365, -100);
	setLuaSpriteScrollFactor('Grass', 1, 1);
	if not lowQuality then
	
		makeLuaSprite('sonic-3', 'sonic-3', -270, -110);
		setLuaSpriteScrollFactor('sonic-3', 0.4, 0.4);
		
		makeLuaSprite('eggman', 'eggman', -357, -100);
		setLuaSpriteScrollFactor('eggman', 1, 1);
		
		makeLuaSprite('knuckle', 'knuckle', 230, -100);
		setLuaSpriteScrollFactor('knuckle', 1, 1);
		
		makeLuaSprite('frontgrass', 'frontgrass', -300, -30);
		setLuaSpriteScrollFactor('frontgrass', 1.2, 1.2);
		
	end
	
	addLuaSprite('Glitch', false);
	addLuaSprite('sonic-3', false);
	addLuaSprite('Grass', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end