local angleshit = 0;
local anglevar = 0;
local alphaisfucked = true; --made this since for some fucking reason pb kept appearing when they weren't supposed too xD
local theepic = true;



function onCreatePost()
    for i = 4,7 do
        setPropertyFromGroup('strumLineNotes',i,'x',-20+i*110)
        end
    setProperty("boyfriend.alpha", 0.009)
    makeLuaText('dis', 'You have ' .. 15-getProperty('songMisses') .. ' misses left.', 600, 330, 700)
    setTextSize('dis', 20)
    setTextColor('dis', 'FFFFFF')
    addLuaText('dis',true)
end

function onUpdate(elapsed)
    setProperty('timeBar.color', getColorFromHex('FFFF99'))
    setProperty('timeBarBG.color', getColorFromHex('FFFF99'))
    songPos = getSongPosition()
    local currentBeat = (songPos/5000)*(curBpm/60)
    setCharacterY('dad',getCharacterY('dad') + (math.sin(currentBeat) * 0.6))
    noteTweenAlpha('itsnothere',0, 0, 0.001, 'sineOut')
    noteTweenAlpha('itsnothere1',1, 0, 0.001, 'sineOut')
    noteTweenAlpha('itsnothere2',2, 0, 0.001, 'sineOut')
    noteTweenAlpha('itsnothere3',3, 0, 0.001, 'sineOut')
    setProperty("iconP2.alpha", 0)
    setProperty("iconP1.alpha", 0)
    setProperty("timeBar.alpha",0)
    setProperty("healthBar.alpha", 0)
    setProperty("timeTxt.alpha",0)
    setProperty("scoreTxt.alpha",0)
    setProperty("camHUD.zoom", 0.9)
    if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.TWO') then
        loadSong('Holy-Flame', 'Holy-Flame', true);
    end
    setProperty("health", 2-getProperty('songMisses')*0.134)
    setTextString('dis','You have ' .. 15-getProperty('songMisses') .. ' misses left.')
    function onMoveCamera(focus)
        if focus == 'boyfriend' then
            -- called when the camera focus on boyfriend
        elseif focus == 'dad' then
            setProperty('camFollowPos.y',getProperty('camFollowPos.y') + (math.sin(currentBeat) * 0.6))
        end
    end
end