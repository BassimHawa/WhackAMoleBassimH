----------------------------------------------------------------------------------------------------------
-- Title: WhackAMole
-- Name: Bassim Hawa
-- Course: ICS2O/3C
-- This programmakes an object appear on the screen for an amount of time
-- and then disappears if the user clicks on the object, his or her score 
--increases by 1
----------------------------------------------------------------------------------------------------------

--hide the status bar
display.setStatusBar(display.HiddenStatusBar)

--Creating background
local bkg = display.setDefault("background", 150/255, 150/255, 150/255)

--create mole

local mole = display.newImage("Images/mole.png", 0, 0)

	--setting position
	mole.x = display.contentCenterX
	mole.y = display.contentCenterY

	--make mole one third of original size
	mole:scale(0.3, 0.3)

	--make the mole invisible
	mole.isVisible = false

local points = display.newText("points: 0", 0, 0, "Georgia", 50)

	--text postion
	points.x = display.contentWidth/2
	points.y = 40


----------------------------------------Functions-----------------------------------------------------------

--This function makes the mole appear in a random (x,y) postion on the screen
--before calling the hide function

local function Popup()
	
	--Choosing random position on the screen between 0 and the size of the screen
	mole.x = math.random( 0, display.contentWidth)
	mole.y = math.random(0, display.contentHeight)

	mole.isVisible = true
    timer.performWithDelay(500, Hide)
end

