function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Firenote' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'firenote'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0'); --Default value is: 0.023, health gained on hit
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0.6'); --Default value is: 0.0475, health lost on miss
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
			end
		end
	end
	--debugPrint('Script started!')
end

-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false
local healthDrain = 0;
function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Firenote' then
		playSound('firehit', 0.4)
		healthDrain = healthDrain + 0.6;
	end
end

-- Called after the note miss calculations
-- Player missed a note by letting it go offscreen

function onUpdate(elapsed)
	if healthDrain > 0 then
		if getProperty('health') > 0 then
			healthDrain = healthDrain - 0.3 * elapsed;
			setProperty('health', getProperty('health') - 0.3 * elapsed);
			if healthDrain < 0 then
				healthDrain = 0;
			end
		end
		runTimer('wait', 5);
	end
end

function onTimerCompleted(tag)
	if tag == 'wait' then
		healthDrain = 0;
	end
end