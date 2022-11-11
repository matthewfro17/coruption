function onUpdate(elapsed)
    if dadName == 'exophericbamb' then --replace the name for your character name
        if curStep >= 0 then
            songPos = getSongPosition()
            local currentBeat = (songPos / 1000) * (bpm / 200)
            doTweenY(dadTweenY, 'dad', -500 - 130 * math.sin((currentBeat * 0.25) * math.pi), 0.001)
        end

    end
end

function onMoveCamera(focus)
    if focus == 'boyfriend' then
        -- called when the camera focus on boyfriend
    elseif focus == 'dad' then
        setProperty('camFollowPos.y', getProperty('camFollowPos.y') + (math.sin(currentBeat) * 0.4))
    end
end
