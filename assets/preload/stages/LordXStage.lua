function onCreate()
	-- background shit
	makeLuaSprite('bg', 'LordXBG', -600, -300);
	setScrollFactor('bg', 0.9, 0.9);

	makeAnimatedLuaSprite('knuckleslol', 'LordX/NotKnuckles_Assets', -600, -300);
	setScrollFactor('knuckleslol', 1.5, 1);
	scaleObject('knuckleslol', 0.5, 0.5);
	addAnimationByPrefix('knuckleslol', 'animatedknuckles', 'Notknuckles', 30, true);

	addLuaSprite('bg', false);
	addLuaSprite('Notknuckleslol', false);

    --Start Screens :)

	makeLuaSprite('readthefiletitlelol', 'makeGraphicsucks', 0, 0);
	scaleObject('readthefiletitlelol', 6.0, 6.0);
	setObjectCamera('readthefiletitlelol', 'other');
	
	makeLuaSprite('introcircle', 'StartScreens/CircleCycles', 100, 0);
	setObjectCamera('introcircle', 'other');
	
	makeLuaSprite('introtext', 'StartScreens/TextCycles', -100, 0);
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

