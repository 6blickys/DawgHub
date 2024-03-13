-- definitions
Players = game:GetService("Players")
Delay = 1
ESP = FALSE

-- main function
local function ESP()
    for i,v in pairs(game.Players:GetChildren()) do
        local username = v.Name
        local pl = game.Workspace:FindFirstChild("Players")
        if not pl then
            print("Game not supported. Are you playing Dahood?")
        end
        local char = pl:FindFirstChild(username)
        if char:FindFirstChild("Highlight") then
            return
        else
            highlight = Instance.New("Highlight")
            highlight.Parent = char
        end
        highlight = Instance.New("Highlight")
        highlight.Parent = char
        end
end

-- loop
while true do wait()
    wait(Delay)
    ESP
end