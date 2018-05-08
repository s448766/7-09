-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created By: Faiyaz Hossain
-- Created On: May 2018
--
-----------------------------------------------------------------------------------------

display.setStatusBar(display.HiddenStatusBar)

local sheetOptionsIdleBoy = {
    width = 232,
    height = 439,
    numFrames = 10 
}

local sheetIdleNinjaBoy = graphics.newImageSheet( "./assets/spritesheets/ninjaBoyIdle.png", sheetOptionsIdleBoy )

local sheetOptionsRunBoy = {
    width = 363,
    height = 458,
    numFrames = 10
}

local sheetRunNinjaBoy = graphics.newImageSheet( "./assets/spritesheets/ninjaBoyJumpRun.png", sheetOptionsRunBoy )

local sheetOptionsIdleGirl = {
    width = 290,
    height = 500,
    numFrames = 10
}

local sheetIdleNinjaGirl = graphics.newImageSheet( "./assets/spritesheets/ninjaGirlIdle.png", sheetOptionsIdleGirl )

local sheetOptionsRunGirl = {
    width = 376,
    height = 520,
    numFrames = 10
}

local sheetRunNinjaGirl = graphics.newImageSheet( "./assets/spritesheets/ninjaGirlRun.png", sheetOptionsRunGirl )

-- sequence table
local sequence_data = {
    {
        name = "idleBoy",
        start = 1,
        count  = 10,
        time = 750,
        loopCount = 0,
        sheet = sheetIdleNinjaBoy

    },
    {
        name = "runBoy",
        start = 1,
        count  = 10,
        time = 600,
        loopCount = 0,
        sheet = sheetRunNinjaBoy
    },
    {
        name = "idleGirl",
        start = 1,
        count  = 10,
        time = 750,
        loopCount = 0,
        sheet = sheetIdleNinjaGirl
    },
    {
        name = "runGirl",
        start = 1,
        count  = 10,
        time = 600,
        loopCount = 0,
        sheet = sheetRunNinjaGirl
    }
}

local ninjaGirl = display.newSprite( sheetIdleNinjaGirl, sequence_data)
ninjaGirl.x = display.contentCenterX + 500
ninjaGirl.y = display.contentCenterY

local ninjaBoy = display.newSprite( sheetIdleNinjaBoy, sequence_data)
ninjaBoy.x = display.contentCenterX - 546
ninjaBoy.y = display.contentCenterY

ninjaBoy:play()
ninjaGirl:play()


local function swapSheetGirl()
    ninjaGirl:setSequence( "runGirl" )
    ninjaGirl:play()
end

local function swapSheetBoy()
    ninjaBoy:setSequence( "runBoy" )
    ninjaBoy:play()
end

timer.performWithDelay( 2000, swapSheetGirl )
timer.performWithDelay( 2000, swapSheetBoy)