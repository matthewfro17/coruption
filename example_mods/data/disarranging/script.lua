--this is so stupid lmao
function onCreate() --setting variables and making sprites

    makeLuaText('dis', "Original Song by Grantare (Disruption), Remix + Cover by Emperor Yami", 600, 580, 0)
    doTweenAlpha('disbye','dis',0,8,'linear')
    setTextSize('dis', 30)
    setTextColor('dis', 'FFFFFF')
    addLuaText('dis',true)
end

function opponentNoteHit()
    if mustHitSection == false then
        health = getProperty('health')
        if getProperty('health') > 0 then
            setProperty('health', health- 0.005);
        end
    end
end

function onUpdate()
	songPos = getSongPosition()	
	notesLenght = getProperty("notes.length")
		for i = 0,notesLenght,1 do
			setPropertyFromGroup("notes",0,"scale.y",(math.sin((songPos/1000) * bpm/120	+ 2) / 3 + 0.75))
			setPropertyFromGroup("notes",0,"scale.x",(math.sin((songPos/1000) * bpm/120) / 3 + 0.75))
			setPropertyFromGroup("notes",1,"scale.y",(math.sin((songPos/1000) * bpm/120	+ 2) / 3 + 0.75))
            setPropertyFromGroup("notes",1,"scale.x",(math.sin((songPos/1000) * bpm/120) / 3 + 0.75))
			setPropertyFromGroup("notes",2,"scale.y",(math.sin((songPos/1000) * bpm/120	+ 2) / 3 + 0.75))
            setPropertyFromGroup("notes",2,"scale.x",(math.sin((songPos/1000) * bpm/120) / 3 + 0.75))
			setPropertyFromGroup("notes",3,"scale.y",(math.sin((songPos/1000) * bpm/120	+ 2) / 3 + 0.75))
            setPropertyFromGroup("notes",3,"scale.x",(math.sin((songPos/1000) * bpm/120) / 3 + 0.75))
			setPropertyFromGroup("notes",4,"scale.y",(math.sin((songPos/1000) * bpm/120	+ 2) / 3 + 0.75))
            setPropertyFromGroup("notes",4,"scale.x",(math.sin((songPos/1000) * bpm/120) / 3 + 0.75))
			setPropertyFromGroup("notes",5,"scale.y",(math.sin((songPos/1000) * bpm/120	+ 2) / 3 + 0.75))
            setPropertyFromGroup("notes",5,"scale.x",(math.sin((songPos/1000) * bpm/120) / 3 + 0.75))
			setPropertyFromGroup("notes",6,"scale.y",(math.sin((songPos/1000) * bpm/120	+ 2) / 3 + 0.75))
            setPropertyFromGroup("notes",6,"scale.x",(math.sin((songPos/1000) * bpm/120) / 3 + 0.75))
			setPropertyFromGroup("notes",7,"scale.y",(math.sin((songPos/1000) * bpm/120	+ 2) / 3 + 0.75))
            setPropertyFromGroup("notes",7,"scale.x",(math.sin((songPos/1000) * bpm/120) / 3 + 0.75))

            setPropertyFromGroup("strumLineNotes",0,"scale.x",(math.sin((songPos/1000) * bpm/120) / 3 + 0.75))
			setPropertyFromGroup("strumLineNotes",0,"scale.y",(math.sin((songPos/1000) * bpm/120 + 2) / 3 + 0.75))
            setPropertyFromGroup("strumLineNotes",1,"scale.x",(math.sin((songPos/1000) * bpm/120) / 3 + 0.75))
			setPropertyFromGroup("strumLineNotes",1,"scale.y",(math.sin((songPos/1000) * bpm/120 + 2) / 3 + 0.75))
            setPropertyFromGroup("strumLineNotes",2,"scale.x",(math.sin((songPos/1000) * bpm/120) / 3 + 0.75))
			setPropertyFromGroup("strumLineNotes",2,"scale.y",(math.sin((songPos/1000) * bpm/120 + 2) / 3 + 0.75))
            setPropertyFromGroup("strumLineNotes",3,"scale.x",(math.sin((songPos/1000) * bpm/120) / 3 + 0.75))
			setPropertyFromGroup("strumLineNotes",3,"scale.y",(math.sin((songPos/1000) * bpm/120 + 2) / 3 + 0.75))
            setPropertyFromGroup("strumLineNotes",4,"scale.x",(math.sin((songPos/1000) * bpm/120) / 3 + 0.75))
			setPropertyFromGroup("strumLineNotes",4,"scale.y",(math.sin((songPos/1000) * bpm/120 + 2) / 3 + 0.75))
            setPropertyFromGroup("strumLineNotes",5,"scale.x",(math.sin((songPos/1000) * bpm/120) / 3 + 0.75))
			setPropertyFromGroup("strumLineNotes",5,"scale.y",(math.sin((songPos/1000) * bpm/120 + 2) / 3 + 0.75))
            setPropertyFromGroup("strumLineNotes",6,"scale.x",(math.sin((songPos/1000) * bpm/120) / 3 + 0.75))
			setPropertyFromGroup("strumLineNotes",6,"scale.y",(math.sin((songPos/1000) * bpm/120 + 2) / 3 + 0.75))
            setPropertyFromGroup("strumLineNotes",7,"scale.x",(math.sin((songPos/1000) * bpm/120) / 3 + 0.75))
			setPropertyFromGroup("strumLineNotes",7,"scale.y",(math.sin((songPos/1000) * bpm/120 + 2) / 3 + 0.75))
		end
    end