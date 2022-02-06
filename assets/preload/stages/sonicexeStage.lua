function onCreate()

	setProperty('cameraSpeed', 1.8);

	makeLuaSprite('sky', 'SonicP2/sky', -414, -440.8);
	setScrollFactor('sky', 1, 1);
	scaleObject('sky', 1.4, 1.4);

	makeLuaSprite('backtrees', 'SonicP2/backtrees', -290.55, -298.3);
	setScrollFactor('backtrees', 1.1, 1);
	scaleObject('backtrees', 1.2, 1.2);

	makeLuaSprite('trees', 'SonicP2/trees', -306, -334.65);
	setScrollFactor('trees', 1.2, 1);
	scaleObject('trees', 1.2, 1.2);

	makeLuaSprite('floor', 'SonicP2/ground', -306, -334.65);
	setScrollFactor('floor', 1.3, 1);
	scaleObject('floor', 1.2, 1.2);

    makeLuaSprite('readthefiletitlelol', 'makeGraphicsucks', 0, 0);
	scaleObject('readthefiletitlelol', 6.0, 6.0);
	setObjectCamera('readthefiletitlelol', 'other');
	addLuaSprite('readthefiletitlelol', true);

	makeLuaSprite('introcircle', 'StartScreens/CircleYouCantRun', 100, 0);
	setObjectCamera('introcircle', 'other');
	addLuaSprite('introcircle', true);

	makeLuaSprite('introtext', 'StartScreens/TextYouCantRun', -100, 0);
	setObjectCamera('introtext', 'other');
	addLuaSprite('introtext', true);

	--makeLuaSprite('greenhills', 'GreenHill', -428.5 + 50 + 700, -449.35 + 25 + 392 + 105 + 50);
	--setScrollFactor('greenhills', 1, 1);
	--scaleObject('greenhills', 8, 8);

	addLuaSprite('sky', false);
    addLuaSprite('backtrees', false);
    addLuaSprite('trees', false);
    addLuaSprite('floor', false);
	
end

function onStartCountdown()
	doTweenX('circleTween', 'introcircle', -100, 2, 'quintOut')
	doTweenX('textTween', 'introtext', 100, 2, 'quintOut')
    return Function_Continue
end

function onSongStart()
	doTweenAlpha('graphicAlpha', 'readthefiletitlelol', 0, 0.2, 'quintOut');
	doTweenAlpha('circleAlpha', 'introcircle', 0, 0.2, 'quintOut');
	doTweenAlpha('textAlpha', 'introtext', 0, 0.2, 'quintOut');

end

function onUpdate()

	for i = 0, getProperty('unspawnNotes.length')-1 do
		
		setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'BloodSplash');
	
	end
end

--The note splash texture took me so long to figure out..