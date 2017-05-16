-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here


local group = display.newGroup()

local image = display.newImageRect( "appIconMain.png", 500, 500 )
image.x = display.contentCenterX
image.y = display.contentCenterY
group:insert(image)

local iconName = {"Icon-xxxhdpi", "Icon-xxhdpi", "Icon-xhdpi", "Icon-mdpi", "Icon-ldpi", "Icon-hdpi", "Icon-180", "Icon-167", "Icon-152", "Icon-120", "Icon-87", "Icon-80", "Icon-76", "Icon-58", "Icon-40", "Icon",}
local iconSize = {192, 144, 96, 48, 36, 72, 180, 167, 152, 120, 87, 80, 76, 58, 40, 57}

for i = 1, #iconName do 

local function listener( event )
    print( "listener called" )

print(iconName[i])
print(iconSize[i])
image.height = iconSize[i]
image.width = iconSize[i]
display.save( group, { filename= iconName[i] .. ".png", baseDir=system.DocumentsDirectory,  } )


end
  
timer.performWithDelay( 1000 * i, listener )


end

