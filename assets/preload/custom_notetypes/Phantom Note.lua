function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Phantom Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'exeNotes/PhantomNote'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashHue', 0);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashSat', -20);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashBrt', 1); --Didn't know how to make it red

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored

			end
		end
	end
	--debugPrint('Script started!')
end

--function noteHit(id, noteData, noteType, isSustainNote)
	--if noteType == 'Static Note' then
		--setProperty('Play Animation', 'Alt Animation');
	--end
--end

-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false
function noteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Phantom Note' then
		setProperty('health', 0.69); --The little kids better not..
	end
end

