start = 0
finish = 0  -- Variable para controlar el finish

function onCreate()
    -- BARRA SUPERIOR
    makeLuaSprite('UpperBar', 'empty', 0, -120)
    makeGraphic('UpperBar', 1280, 120, '000000')
    setObjectCamera('UpperBar', 'hud')
    addLuaSprite('UpperBar', false)

    -- BARRA INFERIOR
    makeLuaSprite('LowerBar', 'empty', 0, 720)
    makeGraphic('LowerBar', 1280, 120, '000000')
    setObjectCamera('LowerBar', 'hud')
    addLuaSprite('LowerBar', false)
end

function onUpdate()
    if start == 1.1 then
        -- Mover las barras a las posiciones definidas
        doTweenY('Cinematics1', 'UpperBar', -60, 0.6, 'linear')
        doTweenY('Cinematics2', 'LowerBar', 660, 0.6, 'linear')
		end
		
    if start == 1 then
        -- Mover las barras a las posiciones definidas
        doTweenY('Cinematics1', 'UpperBar', -60, 0.01, 'linear')
        doTweenY('Cinematics2', 'LowerBar', 660, 0.01, 'linear')

    elseif start == 2 then
        -- Mover las barras a la posición inicial
        doTweenY('Cinematics1', 'UpperBar', 0, 0.6, 'linear')
        doTweenY('Cinematics2', 'LowerBar', 620, 0.6, 'linear')

        -- Hacer desaparecer la interfaz (salud, puntuación, etc.)
        doTweenAlpha('AlphaTween1', 'healthBarBG', 0, 0.25)
        doTweenAlpha('AlphaTween2', 'healthBar', 0, 0.25)
        doTweenAlpha('AlphaTween3', 'scoreTxt', 0, 0.25)
        doTweenAlpha('AlphaTween4', 'iconP1', 0, 0.25)
        doTweenAlpha('AlphaTween5', 'iconP2', 0, 0.25)
        doTweenAlpha('AlphaTween6', 'timeBar', 0, 0.25)
        doTweenAlpha('AlphaTween7', 'timeBarBG', 0, 0.25)
        doTweenAlpha('AlphaTween8', 'timeTxt', 0, 0.25)
        doTweenAlpha('AlphaTween9', 'Health', 0, 0.25)

    elseif finish == 1 then
        -- Ocultar las barras (moverlas fuera de la pantalla)
        doTweenY('Cinematics1', 'UpperBar', -120, 0.01, 'linear')  -- Mover la barra superior fuera de la pantalla
        doTweenY('Cinematics2', 'LowerBar', 720, 0.01, 'linear')  -- Mover la barra inferior fuera de la pantalla
		
        doTweenAlpha('AlphaTween1', 'healthBarBG', 1, 0.25)
        doTweenAlpha('AlphaTween2', 'healthBar', 1, 0.25)
        doTweenAlpha('AlphaTween3', 'scoreTxt', 1, 0.25)
        doTweenAlpha('AlphaTween4', 'iconP1', 1, 0.25)
        doTweenAlpha('AlphaTween5', 'iconP2', 1, 0.25)
        doTweenAlpha('AlphaTween6', 'timeBar', 1, 0.25)
        doTweenAlpha('AlphaTween7', 'timeBarBG', 1, 0.25)
        doTweenAlpha('AlphaTween8', 'timeTxt', 1, 0.25)
        doTweenAlpha('AlphaTween9', 'Health', 1, 0.25)
		
    elseif finish == 1.1 then
        -- Ocultar las barras (moverlas fuera de la pantalla)
        doTweenY('Cinematics1', 'UpperBar', -120, 0.4, 'linear')  -- Mover la barra superior fuera de la pantalla
        doTweenY('Cinematics2', 'LowerBar', 720, 0.4, 'linear')  -- Mover la barra inferior fuera de la pantalla
		
        doTweenAlpha('AlphaTween1', 'healthBarBG', 1, 0.25)
        doTweenAlpha('AlphaTween2', 'healthBar', 1, 0.25)
        doTweenAlpha('AlphaTween3', 'scoreTxt', 1, 0.25)
        doTweenAlpha('AlphaTween4', 'iconP1', 1, 0.25)
        doTweenAlpha('AlphaTween5', 'iconP2', 1, 0.25)
        doTweenAlpha('AlphaTween6', 'timeBar', 1, 0.25)
        doTweenAlpha('AlphaTween7', 'timeBarBG', 1, 0.25)
        doTweenAlpha('AlphaTween8', 'timeTxt', 1, 0.25)
        doTweenAlpha('AlphaTween9', 'Health', 1, 0.25)
    end
end

function onEvent(name, value1, value2)
    if name == 'Cinematics' then
        start = tonumber(value1)
        finish = tonumber(value2)  -- Usamos finish para controlar el estado de ocultar las barras
    end
end
