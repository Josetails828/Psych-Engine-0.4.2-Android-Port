function onCreate()
	-- background shit

	setProperty('cameraSpeed', 1.8);

	makeLuaSprite('sky', 'SonicP1/SKY', -222, -16 + 150);
	setScrollFactor('sky', 1, 1);

	makeLuaSprite('hills', 'SonicP1/HILLS', -264, -156 + 150);
	setScrollFactor('hills', 1.1, 1);

	makeLuaSprite('floor2', 'SonicP1/FLOOR2', -345, -289 + 170);
	setScrollFactor('floor2', 1.2, 1);

	makeLuaSprite('floor', 'SonicP1/FLOOR1', -297, -246 + 150);
	setScrollFactor('floor', 1.3, 1);

	makeLuaSprite('eggman', 'SonicP1/EGGMAN', -218, -219 + 150);
	setScrollFactor('eggman', 1.32, 1);

	makeLuaSprite('tail', 'SonicP1/TAIL', -199 - 150, -259 + 150);
	setScrollFactor('tail', 1.34, 1);

	makeLuaSprite('knuckle', 'SonicP1/KNUCKLE', 185 + 100, -350 + 150);
	setScrollFactor('knuckle', 1.36, 1);

	makeAnimatedLuaSprite('tailshead', 'SonicP1/TailsSpikeAnimated', -100, 50);
	setScrollFactor('tailshead', 1.37, 1);
	scaleObject('tailshead', 1.2, 1.2);
	addAnimationByPrefix('tailshead', 'stickidle', 'Tails Spike Animated instance 1', 24, true);

    makeLuaSprite('readthefiletitlelol', 'makeGraphicsucks', 0, 0);
	scaleObject('readthefiletitlelol', 6.0, 6.0);
	setObjectCamera('readthefiletitlelol', 'other');
	addLuaSprite('readthefiletitlelol', true);

	makeLuaSprite('introcircle', 'StartScreens/CircleTooSlow', 100, 0);
	setObjectCamera('introcircle', 'other');
	addLuaSprite('introcircle', true);

	makeLuaSprite('introtext', 'StartScreens/TextTooSlow', -100, 0);
	setObjectCamera('introtext', 'other');
	addLuaSprite('introtext', true);

	addLuaSprite('sky', false);
	addLuaSprite('hills', false);
	addLuaSprite('floor2', false);
	addLuaSprite('floor', false);
	addLuaSprite('eggman', false);
	addLuaSprite('tail', false);
	addLuaSprite('knuckle', false);
	addLuaSprite('tailshead', false);
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
