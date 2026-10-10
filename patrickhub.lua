
-- Patrick Hub 🔑
-- Key: catuscatuscatus

local Players = game:GetService("Players")
local player = Players.LocalPlayer

local CorrectKey = "catuscatuscatus"

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "PatrickHub"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = player:WaitForChild("PlayerGui")

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 300, 0, 190)
Frame.Position = UDim2.new(0.5, -150, 0.5, -95)
Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
Frame.Parent = ScreenGui

local Corner = Instance.new("UICorner")
Corner.CornerRadius = UDim.new(0, 12)
Corner.Parent = Frame

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 45)
Title.BackgroundTransparency = 1
Title.Text = "Patrick Hub 🔑"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.Parent = Frame

local KeyBox = Instance.new("TextBox")
KeyBox.Size = UDim2.new(0.8, 0, 0, 35)
KeyBox.Position = UDim2.new(0.1, 0, 0.32, 0)
KeyBox.PlaceholderText = "Enter key..."
KeyBox.Text = ""
KeyBox.TextScaled = true
KeyBox.ClearTextOnFocus = false
KeyBox.Parent = Frame

local Button = Instance.new("TextButton")
Button.Size = UDim2.new(0.8, 0, 0, 35)
Button.Position = UDim2.new(0.1, 0, 0.58, 0)
Button.Text = "Unlock Patrick Hub"
Button.TextScaled = true
Button.BackgroundColor3 = Color3.fromRGB(0, 150, 255)
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.Parent = Frame

local Message = Instance.new("TextLabel")
Message.Size = UDim2.new(1, 0, 0, 25)
Message.Position = UDim2.new(0, 0, 0.83, 0)
Message.BackgroundTransparency = 1
Message.Text = ""
Message.TextColor3 = Color3.fromRGB(255, 255, 255)
Message.TextScaled = true
Message.Parent = Frame

local function checkKey()
    if KeyBox.Text == CorrectKey then
        Message.Text = "Key accepted!"
        Message.TextColor3 = Color3.fromRGB(0, 255, 100)

        task.wait(0.5)
        Frame:Destroy()

        print("Welcome to Patrick Hub!")

        -- Add your own hub features here.
    else
        Message.Text = "Wrong key!"
        Message.TextColor3 = Color3.fromRGB(255, 70, 70)
    end
end

Button.Activated:Connect(checkKey)

KeyBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        checkKey()
    end
end)
Key: catuscatuscatus
