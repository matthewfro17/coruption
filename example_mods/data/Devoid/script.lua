function onStartCountdown()
	-- Block the first countdown and start a timer of 0.8 seconds to play the dialogue
	if not allowCountdown and isStoryMode and not seenCutscene then
		setProperty('inCutscene', true);
		runTimer('startDialogue', 0.8);
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialogue' then -- Timer completed, play dialogue
		startDialogue('dialogue', 'canzies');
	end
end

function onUpdate()
    setProperty('timeBar.color', getColorFromHex('5D3FD3'))
    setProperty('timeBarBG.color', getColorFromHex('5D3FD3'))
end

function onUpdatePost()
	setProperty('introSoundsSuffix', '-exosphere')
end

