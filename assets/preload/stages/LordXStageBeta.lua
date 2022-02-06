function onCreate()
	-- background shit
	makeLuaSprite('sky', 'LordX/sky', -1900, -1006);
	setScrollFactor('sky', 1, 1);
	scaleObject('sky', 0.9, 0.9);

	makeLuaSprite('hills', 'LordX/hills1', -1440, -806 + 200);
	setScrollFactor('hills', 1.1, 1);
	scaleObject('hills', 0.5, 0.5);
	scaleObject('hills', 0.6, 0.6);
	
	makeLuaSprite('floor', 'LordX/floor', -1400, -496);
	setScrollFactor('floor', 1.5, 1);
	scaleObject('floor', 0.5, 0.5);
	scaleObject('floor', 1.0, 1.0);

	makeAnimatedLuaSprite('eyeflower', 'LordX/WeirdAssFlower_Assets', 100 - 500, 100);
	setScrollFactor('eyeflower', 1.5, 1);
	scaleObject('eyeflower', 0.8, 0.8);
	addAnimationByPrefix('eyeflower', 'animatedeye', 'flower', 30, true);

	makeAnimatedLuaSprite('knuckleslol', 'LordX/NotKnuckles_Assets', 100 - 300, -400 + 25);
	setScrollFactor('knuckleslol', 1.5, 1);
	scaleObject('knuckleslol', 0.5, 0.5);
	addAnimationByPrefix('knuckleslol', 'animatedknuckles', 'Notknuckles', 30, true);

	makeLuaSprite('smallflower', 'LordX/smallflower', -1500, -506);
	setScrollFactor('smallflower', 1.5, 1);
	scaleObject('smallflower', 0.6, 0.6);

	makeLuaSprite('bfsmallflower', 'LordX/smallflower', -1500 + 300, -506 - 50);
	setScrollFactor('bfsmallflower', 1.5, 1);
	scaleObject('bfsmallflower', 0.6, 0.6);
	--flipx = true

	makeLuaSprite('smallflower2', 'LordX/smallflowe2', -1500, -506);
	setScrollFactor('smallflower2', 1.5, 1);
	scaleObject('smallflower2', 0.6, 0.6);

	makeLuaSprite('tree', 'LordX/tree', -1900 + 650 - 100, -1006 + 350);
	setScrollFactor('tree', 1.5, 1);
	scaleObject('tree', 0.7, 0.7);

	addLuaSprite('sky', false);
	addLuaSprite('hills', false);
	addLuaSprite('floor', false);
	addLuaSprite('eyeflower', false);
	addLuaSprite('knuckleslol', false);
	addLuaSprite('smallflower', false);
	addLuaSprite('bfsmallerflower', false);
	addLuaSprite('smallflower2', false);
	addLuaSprite('tree', false);

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

