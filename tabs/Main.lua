-- Lesson5

-- Created by: Mr Coxall
-- Created on: Nov 2013
-- Created for: ICS2O
-- This program displays a button and tells the user when it is being selected
-- It also plays sound

-- variables local to entire file
local aButton

-- Use this function to perform your initial setup
function setup()
    -- setup display and drawing functions
    supportedOrientations(LANDSCAPE_ANY)    
    --displayMode(FULLSCREEN)
    noFill()
    noSmooth()
    noStroke()
    pushStyle()
    
    music("A Hero's Quest:Battle", true, 0.25)
    
    --sprite("Cargo Bot:Fast Button Active")
    aButton = Button("Cargo Bot:Fast Button Active", vec2(WIDTH/2, HEIGHT/2))
end

-- This function gets called once every frame
function touched(touch)
    
    -- local varaibles
    aButton:touched(touch)
    
    if (aButton.selected == true) then
        print("The button has been released")
        sound("A Hero's Quest:Arrow Shoot 2")
    end
end

-- This function gets called once every frame
function draw()
    
    -- local varaibles

    -- This sets a dark background color 
    background(0, 0, 0, 255)
    aButton:draw()
end