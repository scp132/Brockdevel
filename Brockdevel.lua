-- Create the GUI
local player = game.Players.LocalPlayer
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "BrokenHavenGui"
screenGui.Parent = player.PlayerGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.5, 0, 0.5, 0)
frame.Position = UDim2.new(0.25, 0, 0.25, 0)
frame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)  -- Red color
frame.Parent = screenGui

local label = Instance.new("TextLabel")
label.Size = UDim2.new(1, 0, 1, 0)
label.BackgroundTransparency = 1
label.Text = "Broken Haven"
label.TextColor3 = Color3.fromRGB(255, 255, 255)
label.TextScaled = true
label.Parent = frame

-- Show image after 2 minutes
local function showImage()
    local imageLabel = Instance.new("ImageLabel")
    imageLabel.Size = UDim2.new(0.5, 0, 0.5, 0)
    imageLabel.Position = UDim2.new(0.25, 0, 0.25, 0)
    imageLabel.Image = "https://static.wikia.nocookie.net/77e415da-ea5e-489f-b99f-2a5128c3f73c/scale-to-width/755"
    imageLabel.Parent = screenGui
end

-- Kick the player with the ban message after 1 minute
local function kickPlayer()
    wait(60)  -- Wait for 1 minute
    player:Kick("You were kicked from this game: Account Ban (1042) \nYour account was BANNED because it used cheats, scripts, bots and/or exploits. \nThe ban is PERMANENT and can't be appealed! \n(Error Code: 267)")
end

-- Wait for 2 minutes before showing the image
wait(120)  -- Wait for 2 minutes
showImage()

-- Kick the player after 1 minute from now
kickPlayer()
