function onCreate()
	-- background shit
	makeLuaSprite('glitch', 'SonicP3/Glitch', -621.1, -395.65);
	setScrollFactor('glitch', 0.9, 1);
	scaleObject('glitch', 1.2, 1.2);

	makeLuaSprite('trees', 'SonicP3/Trees', -607.35, -401.55);
	setScrollFactor('trees', 0.95, 1);
	scaleObject('trees', 1.2, 1.2);

	makeLuaSprite('trees2', 'SonicP3/Trees2', -623.5, -410.4);
	setScrollFactor('trees2', 1, 1);
	scaleObject('trees2', 1.2, 1.2);

	makeLuaSprite('grass', 'SonicP3/Grass', -630.4, -266);
	setScrollFactor('grass', 1.1, 1);
	scaleObject('grass', 1.2, 1.2);
	
	addLuaSprite('glitch', false);
	addLuaSprite('trees', false);
	addLuaSprite('trees2', false);
	addLuaSprite('grass', false);

    makeLuaSprite('readthefiletitlelol', 'makeGraphicsucks', 0, 0);
    scaleObject('readthefiletitlelol', 6.0, 6.0);
    setObjectCamera('readthefiletitlelol', 'other');

    makeLuaSprite('introcircle', 'StartScreens/CircleTripleTrouble', 100, 0);
    setObjectCamera('introcircle', 'other');

    makeLuaSprite('introtext', 'StartScreens/TextTripleTrouble', -100, 0);
    setObjectCamera('introtext', 'other');

    addLuaSprite('readthefiletitlelol', true);
    addLuaSprite('introcircle', true);
    addLuaSprite('introtext', true);

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