local ffi = require("ffi")  -- LuaJIT Extension
local user32 = ffi.load("user32")   -- LuaJIT User32 DLL Handler Function

ffi.cdef([[
enum{
    MB_OK = 0x00000000L,
	MB_OKCANCEL = 0x00000001L,
    MB_ABORTRETRYIGNORE = 0x00000002L,
    MB_YESNOCANCEL = 0x00000003L,
    MB_YESNO = 0x00000004L,
    MB_RETRYCANCEL = 0x00000005L,
    MB_CANCELTRYCONTINUE = 0x00000006L,
    MB_ICONINFORMATION = 0x00000040L,
};

typedef void* HANDLE;
typedef HANDLE HWND;
typedef const char* LPCSTR;
typedef unsigned UINT;

int MessageBoxA(HWND, LPCSTR, LPCSTR, UINT);
int MessageBoxW(HWND, LPCSTR, LPCSTR, UINT);
]])

local xx = 460;
local yy = 680;
local xx2 = 820;
local yy2 = 720;
local ofs = 16;
local ofs2 = 20;
local followchars = true;
local del = 0;
local del2 = 0;
-- local allowCountdown = false

function onCreate()

    luaDebugMode = true

	setProperty('cameraSpeed', 1.8);

	makeLuaSprite('fakerSky', 'Act1/fakersky', -600, -300);
	setScrollFactor('fakerSky', 1, 1);
    addLuaSprite('fakerSky', false);

	makeLuaSprite('yepMountains', 'Act1/mountains', -600, -300);
	setScrollFactor('yepMountains', 1.1, 1);
    addLuaSprite('yepMountains', false);

	makeLuaSprite('g r a s s', 'Act1/grass', -600, -300);
	setScrollFactor('g r a s s', 1.2, 1);
    addLuaSprite('g r a s s', false);

	makeLuaSprite('treeTwo', 'Act1/tree2', -600, -300);
	setScrollFactor('treeTwo', 1.225, 1);
    addLuaSprite('treeTwo', false);

	makeLuaSprite('pillarTwo', 'Act1/pillar2', -600, -300);
	setScrollFactor('pillarTwo', 1.25, 1);
    addLuaSprite('pillarTwo', false);

	makeLuaSprite('plant?', 'Act1/plant', -600, -300);
	setScrollFactor('plant?', 1.25, 1);
    addLuaSprite('plant?', false);

	makeLuaSprite('treeOne', 'Act1/tree1', -600, -300);
	setScrollFactor('treeOne', 1.25, 1);
    addLuaSprite('treeOne', false);

	makeLuaSprite('pillarOne', 'Act1/pillar1', -600, -300);
	setScrollFactor('pillarOne', 1.25, 1);
    addLuaSprite('pillarOne', false);

	makeLuaSprite('flowerOne', 'Act1/flower1', -600, -300);
	setScrollFactor('flowerOne', 1.25, 1);
    addLuaSprite('flowerOne', false);

	makeLuaSprite('flowerTwo', 'Act1/flower2', -600, -300);
	setScrollFactor('flowerTwo', 1.25, 1);
    addLuaSprite('flowerTwo', false);

    makeLuaSprite('readthefiletitlelol', 'makeGraphicsucks', 0, 0);
	scaleObject('readthefiletitlelol', 6.0, 6.0);
	setObjectCamera('readthefiletitlelol', 'other');
	addLuaSprite('readthefiletitlelol', true);

	makeLuaSprite('introcircle', 'StartScreens/CircleFaker', 100, 0);
	setObjectCamera('introcircle', 'other');
	addLuaSprite('introcircle', true);

	makeLuaSprite('introtext', 'StartScreens/TextFaker', -100, 0);
	setObjectCamera('introtext', 'other');
	addLuaSprite('introtext', true);

	makeAnimatedLuaSprite('Static', 'screenstatic', 0, 0);
	setObjectCamera('Static', 'other');
	addAnimationByPrefix('Static', 'tssssssss', 'screenSTATIC', 24, true)
	objectPlayAnimation('Static', 'tssssssss', false)
	setProperty('Static.visible', false)
	addLuaSprite('Static',true)

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

function onBeatHit()

	if getProperty('curBeat') > 191 then
		doTweenAlpha('hudAlpha', 'camHUD', 0, 0.8, 'linear');
	end

	if getProperty('curBeat') == 200 then
		setProperty('Static.visible', true)
		playSound('staticBUZZ', 1, 'bruuh')
	end

	if getProperty('curBeat') == 201 then
		setProperty('Static.visible', false)
		stopSound('bruuh')
	end

	if getProperty('curBeat') == 204 then
		setProperty('Static.visible', true)
		playSound('staticBUZZ', 1, 'bruuuh')
	end

	if getProperty('curBeat') == 205 then
		setProperty('Static.visible', false)
		stopSound('bruuuh')
	end

	if getProperty('curBeat') == 208 then
		setProperty('Static.visible', true)
		playSound('staticBUZZ', 1, 'bruuuuh')
	end

	if getProperty('curBeat') == 209 then
		setProperty('Static.visible', false)
		stopSound('bruuuuh')
	end

	if getProperty('curBeat') == 212 then
		setProperty('Static.visible', true)
		playSound('staticBUZZ', 1, 'bruuuuuh')
	end

	if getProperty('curBeat') == 213 then
		setProperty('Static.visible', false)
		stopSound('bruuuuuh')
	end

	if getProperty('curBeat') >= 216 then
		setProperty('Static.visible', true)
		playSound('staticBUZZ', 1, 'longbruh')
	end

	if getProperty('curBeat') >= 221 then
		setProperty('Static.visible', false)
		doTweenAlpha('graphicAlpha2', 'readthefiletitlelol', 1, 0.000001, 'quintOut');
		stopSound('longbruh')
	end

end

function onUpdate()

	for i = 0, getProperty('unspawnNotes.length')-1 do
		
		setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'BloodSplash');
	
	end
	
	health = getProperty('health')
	
	if del > 0 then
		del = del - 1
	end
	
	if del2 > 0 then
		del2 = del2 - 1
	end
    
	if followchars == true then
		
        if mustHitSection == false then
           
			setProperty('defaultCamZoom', 0.9)

			if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end

			if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos', '', '')
            end
            
			if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end

			if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos', '', '')
            end
            
			if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end

			if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos', '', '')
            end
           
			if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end

			if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos', '', '')
            end

            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
		
        else
           
			setProperty('defaultCamZoom', 1.1)
            
			if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs2,yy2)
            end
            
			if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs2,yy2)
            end
            
			if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs2)
            end
           
			if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs2)
            end

            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
		
        end
    
        triggerEvent('Camera Follow Pos','','')
    
	end
    
end

function onGameOver()
	setProperty('camHUD.alpha', 0);
	
	user32.MessageBoxA(nil, "  you really suck at it lol!", "haha you suck", ffi.C.MB_OK + ffi.C.MB_ICONINFORMATION)
	
	if ffi.C.MB_OK then
	   os.exit()
	end
	
	return Function_Stop;
end