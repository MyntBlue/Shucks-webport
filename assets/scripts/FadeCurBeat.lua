function onCreate()
    makeLuaSprite('fadeimg', 'fadeimg')
    addLuaSprite('fadeimg', true);
    doTweenAlpha('fadeimg', 'fadeimg', '0', '0.0001', 'linear')
    setObjectCamera('fadeimg', 'hud')
end



-- Make More >:3
function onBeatHit()
    if curBeat == 7 then
        doTweenAlpha('fadeimg', 'fadeimg', '1', '1', 'linear')
    end
    
    if curBeat == 19 then
        doTweenAlpha('fadeimg', 'fadeimg', '0', '1', 'linear')
    end
end 