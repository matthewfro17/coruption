function onCreate()
	makeLuaSprite('epicflash','',0,0)
	addLuaSprite('epicflash',true)
    setProperty('epicflash.alpha', 0)
	setObjectCamera('epicflash','other')
	makeGraphic('epicflash',3000,3000,'000000')

	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'InsaneNote' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'InsaneNotes_assets'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0'); --Default value is: 0.023, health gained on hit
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0.09'); --Default value is: 0.0475, health lost on miss
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', true);
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
			end
		
		end
	end
	--debugPrint('Script started!')
end

function doFlash(brightness,length,color) --self explanatory
    setProperty('epicflash.alpha',brightness)
    setProperty('epicflash.color',getColorFromHex(color))
    doTweenAlpha('epicparts','epicflash',0,length,'sineOut')
end

function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'InsaneNote' then
    end
end
