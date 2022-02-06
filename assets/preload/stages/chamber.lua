function onCreate()
	-- background shit
	makeAnimatedLuaSprite('wall', 'Fleetway/Wall', -2379.05, -1211.1);
	setScrollFactor('wall', 1.1, 1.1);
	addAnimationByPrefix('wall', 'beans', 'Wall', 24, true);

	makeAnimatedLuaSprite('floor', 'Fleetway/floor', -2349, 921.25);
	setScrollFactor('floor', 1.1, 1);
	--addAnimationByPrefix('floor', 'floor', 'floor blue', 24, true);
	addAnimationByPrefix('floor', 'beans', 'floor yellow', 24, true);

	makeAnimatedLuaSprite('bgshit', 'Fleetway/FleetwayBGshit', -2629.05, -1344.05);
	setScrollFactor('bgshit', 1.1, 1);
	addAnimationByPrefix('bgshit', 'beans', 'BGblue', 24, true);
	addAnimationByPrefix('bgshit', 'beans', 'BGyellow', 24, true);--Idk if this works

	makeAnimatedLuaSprite('emeraldbeam', 'Fleetway/Emerald Beam', 0, -1376.95 - 200);
	setScrollFactor('emeraldbeam', 1.1, 1);
	addAnimationByPrefix('emeraldbeam', 'beans', 'Emerald Beam', 24, true);

	makeAnimatedLuaSprite('emeraldbeamc', 'Fleetway/Emerald Beam Charged', -300, -1376.95 - 200);
	setScrollFactor('emeraldbeamc', 1.1, 1);
	addAnimationByPrefix('emeraldbeamc', 'beans', 'Emerald Beam Charged', 24, true);

	makeAnimatedLuaSprite('emeralds', 'Fleetway/Emeralds', 326.6, -191.75);
	setScrollFactor('emeralds', 1.1, 1);
	addAnimationByPrefix('emeralds', 'beans', 'TheEmeralds', 24, true);

	makeLuaSprite('humptydumpty', 'Fleetway/The Chamber', -130, 769.8);
	setScrollFactor('humptydumpty', 1.1, 1);
	scaleObject('humptydumpty', 0.94, 0.94)
	--addAnimationByPrefix('humptydumpty', 'beans', 'Chamber Sonic Fall', 24, true);

	makeAnimatedLuaSprite('pebles', 'Fleetway/pebles', -562.15 + 100, 1043.3);
	setScrollFactor('pebles', 1.1, 1);
	addAnimationByPrefix('pebles', 'beans', 'pebles instance 1', 24, true);
	addAnimationByPrefix('pebles', 'beans', 'pebles instance 2', 24, true);

	makeAnimatedLuaSprite('porker', 'Fleetway/Porker Lewis', 2880.15, -762.8);
	setScrollFactor('porker', 1.4, 1.1);
	addAnimationByPrefix('porker', 'pigidle', 'Porker FG', 24, true);

	addLuaSprite('wall', false);
	addLuaSprite('floor', false);
	addLuaSprite('bgshit', false);
	addLuaSprite('emeraldbeam', false);
	addLuaSprite('emeraldbeamc', false);
	addLuaSprite('emeralds', false);
	addLuaSprite('humptydumpty', false);
	addLuaSprite('pebles', false);
	addLuaSprite('porker', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end