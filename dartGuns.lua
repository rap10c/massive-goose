local xCenter = display.contentCenterX
local yCenter = display.contentCenterY
local localGroup = display.newGroup()
local scene = composer.newScene()


function scene:create( event )


	local function diskFunction( event )
		composer.gotoScene( "dartManuel" )
	end

	local manuel = widget.newButton{
		id = "manuelButton",
		width = display.contentWidth/2,
		height = 100,
		emboss = true,
		fontSize = font4,
		top = yCenter/2-100,
		label = "Manuel Shooters",
		shape="roundedRect",
		cornerRadius = 45,
		labelColor = { default={ 1, 1, 1}, over={ 232/255, 100/255, 37/255, 1 } },
		fillColor = { default={ 232/255, 100/255, 37/255}, over={ 1, 1, 1, 1 } },
		onRelease = manuelFunction
	}


	local function diskFunction( event )
		composer.gotoScene( "dartSemi" )
	end

	local semiAuto = widget.newButton{
		id = "semiButton",
		width = display.contentWidth/2,
		height = 100,
		emboss = true,
		fontSize = font4,
		top = yCenter/2-100,
		label = "Semi-Auto",
		shape="roundedRect",
		cornerRadius = 45,
		labelColor = { default={ 1, 1, 1}, over={ 232/255, 100/255, 37/255, 1 } },
		fillColor = { default={ 232/255, 100/255, 37/255}, over={ 1, 1, 1, 1 } },
		onRelease = semiFunction
	}


	local function diskFunction( event )
		composer.gotoScene( "dartAuto" )
	end	

	local auto = widget.newButton{
		id = "autoButton",
		width = display.contentWidth/2,
		height = 100,
		emboss = true,
		fontSize = font4,
		top = yCenter/2-100,
		label = "Auto",
		shape="roundedRect",
		cornerRadius = 45,
		labelColor = { default={ 1, 1, 1}, over={ 232/255, 100/255, 37/255, 1 } },
		fillColor = { default={ 232/255, 100/255, 37/255}, over={ 1, 1, 1, 1 } },
		onRelease = dartFunction
	}

	
	local function diskFunction( event )
		composer.gotoScene( "dartSide" )
	end

	local sideArm = widget.newButton{
		id = "sidearmButton",
		width = display.contentWidth/2,
		height = 100,
		emboss = true,
		fontSize = font4,
		top = yCenter/2-100,
		label = "Sidearms",
		shape="roundedRect",
		cornerRadius = 45,
		labelColor = { default={ 1, 1, 1}, over={ 232/255, 100/255, 37/255, 1 } },
		fillColor = { default={ 232/255, 100/255, 37/255}, over={ 1, 1, 1, 1 } },
		onRelease = sidearmFunction
	}



	localGroup:insert(manuel)	
	localGroup:insert(semiAuto)
	localGroup:insert(auto)
	localGroup:insert(sideArm)

end

-- "createScene" is called whenever the scene is FIRST called
scene:addEventListener( "create", scene )

-- "enterScene" event is dispatched whenever scene transition has finished
scene:addEventListener( "show", scene )

-- "exitScene" event is dispatched before next scene's transition begins
scene:addEventListener( "hide", scene )


return scene