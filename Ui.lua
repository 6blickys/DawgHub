local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()

-- check game
if game.PlaceID == then
    GUI:Notification{
        Title = "Alert",
        Text = "You shall bump the thread on V3rmillion!",
        Duration = 3,
        Callback = function() end
    }
    -- call the script here
end -- continue with ellse ifs
-- end of game supported checking

-- innitiate the gui interface
local GUI = Mercury:Create{
    Name = "Mercury",
    Size = UDim2.fromOffset(600, 400),
    Theme = Mercury.Themes.Dark,
    Link = "https://github.com/deeeity/mercury-lib"
}
-- innitate the tabs
local Chars = GUI:Tab{
	Name = "Character",
	Icon = "rbxassetid://8569322835"
}

local Scripts = GUI:Tab{
	Name = "Scripts",
	Icon = "rbxassetid://8569322835"
}

local Other = GUI:Tab{
	Name = "Other",
	Icon = "rbxassetid://8569322835"
}
-- chars gui

-- walkspeed and jumpower
local wss
local jps
local ws
local jp

Chars:Toggle{
	Name = "WalkSpeed",
	StartingState = false,
	Description = "Set a custom walkspeed",
	Callback = function(state) 
        if state == true then
            wss = true
        else
            wss = false
    end
}

Chars:Slider{
	Name = "Speed",
	Default = 17,
	Min = 0,
	Max = 100,
	Callback = function(v)
        if wss == true then
            ws = v
            humanoid = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid")
            humanoid.WalkSpeed = ws
    end
}

Chars:Toggle{
	Name = "JumpPower",
	StartingState = false,
	Description = "Set a custom walkspeed",
	Callback = function(state) 
        if state == true then
            jps = true
        else
            jps = false
    end
}

Chars:Slider{
	Name = "Jump",
	Default = 17,
	Min = 0,
	Max = 100,
	Callback = function(v)
        if jps == true then
            jp = v
            humanoid = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid")
            humanoid.WalkSpeed = jp
    end
}