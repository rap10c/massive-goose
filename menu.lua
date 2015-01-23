--scene: menu
local xCenter = display.contentWidth
local yCenter = display.contentHeight
local scene = composer.newScene()
local localGroup = display.newGroup()


--Called if the scene hasn't been previously seen
function scene:create( event )

	help.alpha = 1
	local nerf = display.newImage( "pics/NERF_transparent.png",xCenter/2,200 )

	local message = display.newText("NERF CLUB",xCenter/2,yCenter/2-200,nil,60)
	message:setFillColor(232/255, 100/255, 37/255)


	local function dartFunction( event )
		composer.gotoScene( "dartGuns" )
	end

	local dart = widget.newButton{
		id = "dartButton",
		width = display.contentWidth*.75,
		height = 100,
		emboss = true,
		fontSize = font3,
		top = yCenter/2-100,
		label = "Dart Shooters",
		shape="roundedRect",
		cornerRadius = 45,
		labelColor = { default={ 1, 1, 1}, over={ 232/255, 100/255, 37/255, 1 } },
		fillColor = { default={ 232/255, 100/255, 37/255}, over={ 1, 1, 1, 1 } },
		onRelease = dartFunction
	}
	dart.x = xCenter/2


	local function diskFunction( event )
		composer.gotoScene( "diskGuns" )
	end

	local disk = widget.newButton{
		id = "diskButton",
		width = display.contentWidth*.75,
		height = 100,
		emboss = true,
		fontSize = font3,
		top = yCenter/2+100,
		label = "Disk Shooters",
		shape="roundedRect",
		cornerRadius = 45,
		labelColor = { default={ 1, 1, 1}, over={ 232/255, 100/255, 37/255, 1 } },
		fillColor = { default={ 232/255, 100/255, 37/255}, over={ 1, 1, 1, 1 } },
		onRelease = diskFunction
	}
	disk.x = xCenter/2

	localGroup:insert(dart)	
	localGroup:insert(message)
	localGroup:insert(nerf)
	localGroup:insert(disk)

end


function scene:show(event)
	localGroup.alpha = 1
	composer.removeHidden( true )
end

function scene:hide(event)
	localGroup.alpha = 0

end

-- function scene:destroy( event )

--     local sceneGroup = self.view

--     -- Called prior to the removal of scene's view ("sceneGroup").
--     -- Insert code here to clean up the scene.
--     -- Example: remove display objects, save state, etc.
-- end


-- "createScene" is called whenever the scene is FIRST called
scene:addEventListener( "create", scene )

-- "enterScene" event is dispatched whenever scene transition has finished
scene:addEventListener( "show", scene )

-- "exitScene" event is dispatched before next scene's transition begins
scene:addEventListener( "hide", scene )
	
--
--scene:addEventListener( "destroy", scene )
return scene

