
-- Patrick Hub 🔑
-- Key: catuscatuscatus

local Players = game:GetService("Players")
local player = Players.LocalPlayer

if not player then
    warn("Patrick Hub must run on the client!")
    return
end

local CorrectKey = "catuscatuscatus"

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "PatrickHub"
ScreenGui.ResetOnSpawn = false
ScreenGui.DisplayOrder = 100
ScreenGui.Parent = player:WaitForChild("PlayerGui")

local Frame = Instance.new("Frame")
Frame.Name = "MainFrame"
Frame.Size = UDim2.fromOffset(320, 200)
Frame.Position = UDim2.new(0.5, -160, 0.5, -100)
Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
Frame.BorderSizePixel = 0
Frame.Parent = ScreenGui

local Corner = Instance.new("UICorner")
Corner.CornerRadius = UDim.new(0, 12)
Corner.Parent = Frame

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, -20, 0, 45)
Title.Position = UDim2.fromOffset(10, 5)
Title.BackgroundTransparency = 1
Title.Text = "Patrick Hub 🔑"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.Font = Enum.Font.GothamBold
Title.Parent = Frame

local KeyBox = Instance.new("TextBox")
KeyBox.Size = UDim2.new(0.8, 0, 0, 38)
KeyBox.Position = UDim2.new(0.1, 0, 0, 60)
KeyBox.PlaceholderText = "Enter key..."
KeyBox.PlaceholderColor3 = Color3.fromRGB(180, 180, 190)
KeyBox.Text = ""
KeyBox.TextScaled = true
KeyBox.Font = Enum.Font.Gotham
KeyBox.ClearTextOnFocus = false
KeyBox.BackgroundColor3 = Color3.fromRGB(45, 45, 60)
KeyBox.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyBox.Parent = Frame

local BoxCorner = Instance.new("UICorner")
BoxCorner.CornerRadius = UDim.new(0, 8)
BoxCorner.Parent = KeyBox

local Button = Instance.new("TextButton")
Button.Size = UDim2.new(0.8, 0, 0, 38)
Button.Position = UDim2.new(0.1, 0, 0, 108)
Button.Text = "Unlock Patrick Hub"
Button.TextScaled = true
Button.Font = Enum.Font.GothamBold
Button.BackgroundColor3 = Color3.fromRGB(0, 150, 255)
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.Parent = Frame

local ButtonCorner = Instance.new("UICorner")
ButtonCorner.CornerRadius = UDim.new(0, 8)
ButtonCorner.Parent = Button

local Message = Instance.new("TextLabel")
Message.Size = UDim2.new(1, -20, 0, 30)
Message.Position = UDim2.new(0, 10, 1, -32)
Message.BackgroundTransparency = 1
Message.Text = "Enter your key to continue"
Message.TextColor3 = Color3.fromRGB(200, 200, 210)
Message.TextScaled = true
Message.Font = Enum.Font.Gotham
Message.Parent = Frame

local function checkKey()
    if KeyBox.Text == CorrectKey then
        Message.Text = "Key accepted!"
        Message.TextColor3 = Color3.fromRGB(0, 255, 100)
        Button.Text = "Unlocked!"

        task.wait(0.5)
        Frame:Destroy()

        print("Welcome to Patrick Hub!")
        -- Add your own hub features here.
    else
        Message.Text = "Wrong key! Try again."
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
