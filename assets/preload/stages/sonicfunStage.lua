function onCreate()

	-- This stage took me the longest to code lol

	makeLuaSprite('sky', 'Majin/sonicFUNsky', -600, -200);
	setScrollFactor('sky', 0.3, 0.3);
	scaleObject('sky', 0.9, 0.9);

	makeLuaSprite('bush2', 'Majin/Bush2', -42, 171);
	setScrollFactor('bush2', 0.3, 0.3);

	makeAnimatedLuaSprite('BackBoppers', 'Majin/Majin Boppers Back', 182, -100); --For all the others I just copy and pasted this stage element and edited it lol..
	setScrollFactor('BackBoppers', 0.6, 0.6);
	--scaleObject('BackBoppers', 0.7, 0.7);
	addAnimationByPrefix('BackBoppers', 'bumpypillar', 'MajinBop2', 24, true);

	makeLuaSprite('bush', 'Bush 1', 132, 354);
	setScrollFactor('bush', 0.3, 0.3);

	makeAnimatedLuaSprite('FrontBop', 'Majin/Majin Boppers Front', -169, -167);
	setScrollFactor('FrontBop', 0.6, 0.6);
	--scaleObject('BackBoppers', 0.7, 0.7);
	addAnimationByPrefix('FrontBop', 'bumpypillar', 'MajinBop1', 24, true);

	makeLuaSprite('floor', 'Majin/floor BG', -340, 660);
	setScrollFactor('floor', 0.5, 0.5);

	makeAnimatedLuaSprite('FrontBoppers', 'Majin/majin FG1', 1126, 903);
	setScrollFactor('FrontBoppers', 0.8, 0.8);
	--scaleObject('BackBoppers', 0.7, 0.7);
	addAnimationByPrefix('FrontBoppers', 'bumpypillar', 'majin front bopper1', 24, true);

	makeAnimatedLuaSprite('FrontBoppers2', 'Majin/majin FG2', -293, 871);
	setScrollFactor('FrontBoppers2', 0.8, 0.8);
	--scaleObject('BackBoppers', 0.7, 0.7);
	addAnimationByPrefix('FrontBoppers2', 'bumpypillar', 'majin front bopper2', 24, true);

    makeLuaSprite('readthefiletitlelol', 'makeGraphicsucks', 0, 0);
	scaleObject('readthefiletitlelol', 6.0, 6.0);
	setObjectCamera('readthefiletitlelol', 'other');
	addLuaSprite('readthefiletitlelol', true);

	makeLuaSprite('introcircle', 'StartScreens/CircleMajin', 100, 0);
	setObjectCamera('introcircle', 'other');
	addLuaSprite('introcircle', true);

	makeLuaSprite('introtext', 'StartScreens/TextMajin', -100, 0);
	setObjectCamera('introtext', 'other');
	addLuaSprite('introtext', true);

	addLuaSprite('sky', false);
    addLuaSprite('bush2', false);
    addLuaSprite('BackBoppers', false);
    addLuaSprite('bush', false);
    addLuaSprite('FrontBop', false);
    addLuaSprite('floor', false);
    addLuaSprite('FrontBoppers', false);
    addLuaSprite('FrontBoppers2', false);
	
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