local group = display.newGroup()

--replace this image in the root directory with the icon you want to replicate
local image = display.newImageRect( "appIconMain.png", 500, 500 )
image.x = display.contentCenterX
image.y = display.contentCenterY
group:insert(image)

--add new icon names here
local iconName = {"Icon-76@2x", "Icon-76@2x","high_res_android_store", "Icon-Small-40", "Icon-Small-40@2x", "Icon-Small-40@3x", "Icon-Small-50", "Icon-Small-50@2x","Icon-Small-100", "Icon-Small@3x","Icon-Small@2x","Icon-Small","Icon-xxxhdpi", "Icon-xxhdpi", "Icon-xhdpi", "Icon-mdpi", "Icon-ldpi", "Icon-hdpi", "Icon-180", "Icon-167", "Icon-152", "Icon-120", "Icon-87", "Icon-80", "Icon-76", "Icon-58", "Icon-40", "Icon", "Icon@2x"}
--add new icon sizes here
local iconSize = {152, 152, 512, 40, 80, 120, 50, 100, 100, 87, 58, 29, 192, 144, 96, 48, 36, 72, 180, 167, 152, 120, 87, 80, 76, 58, 40, 57, 114}

for i = 1, #iconName do 
    local function listener( event )
        image.height = iconSize[i]
        image.width = iconSize[i]
        display.save( group, { filename= iconName[i] .. ".png", baseDir=system.DocumentsDirectory,  } )
    end

    timer.performWithDelay( 300 * i, listener )
end
