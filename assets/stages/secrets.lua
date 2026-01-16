function onCreate()

    makeLuaSprite('SmileysShucksIntroCredits', 'SmileysShucksIntroCredits', -800, 70);
    scaleObject('SmileysShucksIntroCredits', 0.35, 0.35)
	setObjectCamera('SmileysShucksIntroCredits', 'other')

	makeLuaSprite('shuckybanger', 'shuckybanger', 460, 210);
    scaleObject('shuckybanger', 0.5, 0.5)
	setObjectCamera('shuckybanger', 'camGame')

   setProperty('camZoomingMult', 0)
   
   setProperty("showComboNum", false)
   
    makeLuaSprite('secretdoor', 'secretdoor', -980	, -900);
    scaleObject('secretdoor', 4, 4)

    makeLuaSprite('iridaShuck', 'iridaShuck', -1250	, -330);
    scaleObject('iridaShuck', 0.73, 0.73)
	
	addLuaSprite('iridaShuck', false);

    makeLuaSprite('shuckfront', 'shuckfront', -1350	, -190);
    setScrollFactor('shuckfront', 0.8, 0.8)
    scaleObject('shuckfront', 0.7, 0.7)
	
    makeLuaSprite('ShucksChains', 'ShucksChains', -850	, -190);
    setScrollFactor('ShucksChains', 0.69, 0.69)
    scaleObject('ShucksChains', 0.6, 0.7)
	
    makeLuaSprite('ShucksHook', 'ShucksHook', -600	, -190);
    setScrollFactor('ShucksHook', 0.62, 0.62)
    scaleObject('ShucksHook', 0.5, 0.6)
	
    makeLuaSprite('shuckchairbg', 'shuckchairbg', -200	, -100);
    scaleObject('shuckchairbg', 2.4, 2.4)
	
    makeLuaSprite('shuckchairfg', 'shuckchairfg', -130	, -75);
    scaleObject('shuckchairfg', 0.85, 0.85)
	
	addLuaSprite('iridaShuck', false);
	addLuaSprite('shuckfront', true);
	addLuaSprite('ShucksChains', true);
	addLuaSprite('ShucksHook', true);
	addLuaSprite('shuckchairbg', false);
	addLuaSprite('shuckchairfg', true);
	addLuaSprite('secretdoor', true);
	addLuaSprite('SmileysShucksIntroCredits', true);
	addLuaSprite('shuckybanger', true);
	
	setProperty('iridaShuck.visible', false);
	setProperty('shuckfront.visible', false);
	setProperty('ShucksChains.visible', false);
	setProperty('ShucksHook.visible', false);
	setProperty('shuckchairbg.visible', false);
	setProperty('shuckchairfg.visible', false);
	setProperty('secretdoor.visible', true);
	setProperty('SmileysShucksIntroCredits.visible', true);
	setProperty('shuckybanger.visible', false);
	
end

function onEvent(name, value1, value2)
    if name == 'Play Animation' then

		if value1 == 'shuckybanger9' then 
	    setProperty('shuckybanger.alpha', 0.9)
	end
		if value1 == 'shuckybanger8' then 
	    setProperty('shuckybanger.alpha', 0.8)
	end
		if value1 == 'shuckybanger7' then 
	    setProperty('shuckybanger.alpha', 0.7)
	end
		if value1 == 'shuckybanger6' then 
	    setProperty('shuckybanger.alpha', 0.6)
	end
		if value1 == 'shuckybanger5' then 
	    setProperty('shuckybanger.alpha', 0.5)
	end
		if value1 == 'shuckybanger4' then 
	    setProperty('shuckybanger.alpha', 0.4)
	end
		if value1 == 'shuckybanger3' then 
	    setProperty('shuckybanger.alpha', 0.3)
	end
		if value1 == 'shuckybanger2' then 
	    setProperty('shuckybanger.alpha', 0.2)
	end
		if value1 == 'shuckybanger1' then 
	    setProperty('shuckybanger.alpha', 0.1)
	end
		if value1 == 'shuckybanger0' then 
	    setProperty('shuckybanger.alpha', 0)
	end

		if value1 == 'shuckybanger' then 
		setProperty('shuckybanger.visible', true)
	end

		if value1 == 'IntroCreditsIn' then 
	doTweenX('IntroIn', 'SmileysShucksIntroCredits', 305, 2, 'elasticIn')
	   end
	   	if value1 == 'IntroCreditsOut' then 
	doTweenX('IntroOut', 'SmileysShucksIntroCredits', 1400, 2, 'elasticOut')
	   end

       if value1 == '1' then 
	setProperty('iridaShuck.visible', true);
	setProperty('shuckfront.visible', false);
	setProperty('ShucksChains.visible', true);
	setProperty('ShucksHook.visible', true);
	end
	
    if value1 == '2' then 
	setProperty('iridaShuck.visible', false);
	setProperty('shuckfront.visible', false);
	setProperty('ShucksChains.visible', false);
	setProperty('ShucksHook.visible', false);
	
	setProperty('shuckchairbg.visible', true);
	setProperty('shuckchairfg.visible', true);
	end
	
    if value1 == '3' then 
	setProperty('iridaShuck.visible', false);
	setProperty('shuckfront.visible', false);
	setProperty('ShucksChains.visible', false);
	setProperty('ShucksHook.visible', false);
	
	setProperty('shuckchairbg.visible', false);
	setProperty('shuckchairfg.visible', false);
	   end
  if value1 == '4' then 
	setProperty('secretdoor.visible', false);
	   end
	end
end