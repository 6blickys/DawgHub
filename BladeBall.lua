-- // Locals \\ --
local workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer = Players.LocalPlayer
local BASE_ThresHold = 0.2
local Velocity = 0.050
local Velocity_Scaling = 0.1
local immediate_Parry_Distance = 15
local immediate_Velocity_Distance = 85
local UIS = game:GetService("UserInputService")
-- // Main \\ --
local Heartbeatconnection
local focusedball, displayball = nil, nil
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local BallFolder = workspace:WaitForChild("Balls")
local ParryButtonPress = ReplicatedStorage.Remotes.ParryButtonPress
local SliderValue = 20
local DistanceVisualizer = nil
local isRunning = false
local notifyparried = false
local playergui = game:GetService("PlayerGui")
local HotBar = PlayerGui:WaitForChild("HotBar")
local userange = false

local uigrad = HotBar.Block.border1.UIGradient
-- // Functions \\ --
local function IsPlayerOnMobile()
    return UserInputService.TouchEnabled and not (UserInputService.KeyboardEnabled or UserInputService.GamepadEnabled)
end
