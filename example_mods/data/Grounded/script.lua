local allowCountdown = false
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
	setProperty('timeBar.color', getColorFromHex('FF0000'))
    setProperty('timeBarBG.color', getColorFromHex('FF0000'))
end

function onCreate()
    makeLuaText('dis', "Grounded by Delta", 600, 680, 0)
    doTweenAlpha('disbye','dis',0,8,'linear')
    setTextSize('dis', 20)
    setTextColor('dis', 'FFFFFF')
    addLuaText('dis',true)
end

function onBeatHit()
    if curBeat == 524 then
		makeLuaSprite('Blackout', 'Blackout', -400, -650)
		setLuaSpriteScrollFactor('Blackout', 0.9, 0.9); 
		addLuaSprite('Blackout', true);
		scaleObject('Blackout', 10, 10);
        playSound('PowerOff', 0.4);
        setProperty('camHUD.alpha', 0)
        setProperty("iconP2.alpha", 0)
        setProperty("iconP1.alpha", 0)
        setProperty("timeTxt.alpha", 0)
        setProperty("scoreTxt.alpha", 0)
        setProperty("heathBar.alpha", 0)
        setProperty("timeBar.alpha", 0)
	end
end
function onUpdatePost()	
    setProperty('ratingsData[0].image', 'og-sick')
    setProperty('ratingsData[1].image', 'og-good')
    setProperty('ratingsData[2].image', 'og-bad')
    setProperty('ratingsData[3].image', 'og-shit')
    setProperty("comboSuffix", "-og") -- HEY IF YOU ARE GONNA USE THIS TYPE OF SCRIPT TO YOUR MOD, THIS WAS ONLY CODED FOR THIS MOD. Thanks Raf
end

function onCountdownTick(tick)
    if tick == 1 then
        loadGraphic('countdownReady', 'og-ready')
            elseif tick == 2 then
        loadGraphic('countdownSet', 'og-set')
            elseif tick == 3 then
        loadGraphic('countdownGo', 'og-go')
    end
end

function onEndSong()
	if not allowEnd and isStoryMode then
		setProperty('inCutscene', true);
		startDialogue('post-dialogue', 'Overlord');
		allowEnd = true;
		return Function_Stop;
	end
	return Function_Continue;
end

