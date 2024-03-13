local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()

local GUI = Library:create{
    Theme = Library.Themes.Serika
}

local tab = GUI:tab{
    Icon = "rbxassetid://6034996695",
    Name = "Aimbot"
}

tab:button({
    Name = "show prompt",
    Callback = function()
        tab:prompt{
            Title = "baby",
            Text = "shark doo doo doo doo im blank lmao",
            Buttons = {
                Ok = function()
                    tab:prompt{
                        Followup = true,
                        Title = "really?",
                        Text = "you sure?=",
                        Buttons = {
                            Yes = function()
                                tab:prompt{
                                    Followup = true,
                                    Title = "xd",
                                    Text = "sus",
                                    Buttons = {
                                        balls = function()
                                            GUI:set_status("github")
                                        end,
                                        anal = function()
                                            GUI:set_Status("money")
                                        end
                                    }
                                }
                            end,
                        }
                    }
                end,
            }
        }
    end,
})
tab:keybind({Callback = function()
    GUI:prompt()
end,})
tab:dropdown({
    Name = "Dropdown",
    Description = "yeeeeeeeeeeeeeeeeeeeboi",
    StartingText = "Bodypart",
    Items = {
        "Head",
        "Torso",
        "Random"
    }
})
local cum = tab:slider({Callback = function(v)
    GUI:set_status(v)
end})

tab:textbox({Callback = function(v)
    GUI:prompt{Text = v}
end,})

tab:color_picker({
    Name = "Color Of the Hub",
    Style = Library.ColorPickerStyles.Legacy,
    Description = "Click to adjust color...",
    Callback = function(color)
        print(color)
    end,
})