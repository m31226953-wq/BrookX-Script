local player = game.Players.LocalPlayer
local key = "FREE_CobrasCreation102939"
local discordLink = "https://discord.gg/Gca5UP4wjx"
local keyEntered = false

local screenGui = Instance.new("ScreenGui")
screenGui.Parent = player.PlayerGui
screenGui.ResetOnSpawn = false

local keyFrame = Instance.new("Frame")
keyFrame.Size = UDim2.new(0, 300, 0, 200)
keyFrame.Position = UDim2.new(0.5, -150, 0.3, 0)
keyFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
keyFrame.BackgroundTransparency = 0.1
keyFrame.BorderSizePixel = 2
keyFrame.BorderColor3 = Color3.fromRGB(80, 180, 255)
keyFrame.Active = true
keyFrame.Draggable = true
keyFrame.Parent = screenGui

local keyTitle = Instance.new("TextLabel")
keyTitle.Size = UDim2.new(1, 0, 0.25, 0)
keyTitle.Position = UDim2.new(0, 0, 0, 0)
keyTitle.BackgroundTransparency = 1
keyTitle.Text = "BrookX By: CobraStudio 😈"
keyTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
keyTitle.TextScaled = true
keyTitle.Font = Enum.Font.GothamBold
keyTitle.Parent = keyFrame

local keyInput = Instance.new("TextBox")
keyInput.Size = UDim2.new(0.8, 0, 0.2, 0)
keyInput.Position = UDim2.new(0.1, 0, 0.3, 0)
keyInput.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
keyInput.BorderSizePixel = 1
keyInput.BorderColor3 = Color3.fromRGB(150, 150, 150)
keyInput.PlaceholderText = "Enter Key"
keyInput.PlaceholderColor3 = Color3.fromRGB(150, 150, 150)
keyInput.Text = ""
keyInput.TextColor3 = Color3.fromRGB(255, 255, 255)
keyInput.TextScaled = true
keyInput.Font = Enum.Font.Gotham
keyInput.ClearTextOnFocus = false
keyInput.Parent = keyFrame

local keyButton = Instance.new("TextButton")
keyButton.Size = UDim2.new(0.4, 0, 0.18, 0)
keyButton.Position = UDim2.new(0.3, 0, 0.55, 0)
keyButton.BackgroundColor3 = Color3.fromRGB(80, 180, 255)
keyButton.BorderSizePixel = 1
keyButton.BorderColor3 = Color3.fromRGB(255, 255, 255)
keyButton.Text = "UNLOCK"
keyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
keyButton.TextScaled = true
keyButton.Font = Enum.Font.GothamBold
keyButton.Parent = keyFrame

local claimButton = Instance.new("TextButton")
claimButton.Size = UDim2.new(0.6, 0, 0.15, 0)
claimButton.Position = UDim2.new(0.2, 0, 0.78, 0)
claimButton.BackgroundColor3 = Color3.fromRGB(255, 200, 50)
claimButton.BorderSizePixel = 1
claimButton.BorderColor3 = Color3.fromRGB(255, 255, 255)
claimButton.Text = "Claim Key!"
claimButton.TextColor3 = Color3.fromRGB(255, 255, 255)
claimButton.TextScaled = true
claimButton.Font = Enum.Font.GothamBold
claimButton.Parent = keyFrame

local keyStatus = Instance.new("TextLabel")
keyStatus.Size = UDim2.new(1, 0, 0.1, 0)
keyStatus.Position = UDim2.new(0, 0, 0.9, 0)
keyStatus.BackgroundTransparency = 1
keyStatus.Text = ""
keyStatus.TextColor3 = Color3.fromRGB(255, 255, 255)
keyStatus.TextScaled = true
keyStatus.Font = Enum.Font.Gotham
keyStatus.Parent = keyFrame

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 380, 0, 480)
mainFrame.Position = UDim2.new(0.5, -190, 0.08, 0)
mainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
mainFrame.BackgroundTransparency = 0.1
mainFrame.BorderSizePixel = 2
mainFrame.BorderColor3 = Color3.fromRGB(255, 80, 80)
mainFrame.Active = true
mainFrame.Draggable = true
mainFrame.Visible = false
mainFrame.Parent = screenGui

local mainTitle = Instance.new("TextLabel")
mainTitle.Size = UDim2.new(1, 0, 0.07, 0)
mainTitle.Position = UDim2.new(0, 0, 0, 0)
mainTitle.BackgroundTransparency = 1
mainTitle.Text = "BrookX By: CobraStudio 😈"
mainTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
mainTitle.TextScaled = true
mainTitle.Font = Enum.Font.GothamBold
mainTitle.Parent = mainFrame

local exitButton = Instance.new("TextButton")
exitButton.Size = UDim2.new(0.06, 0, 0.06, 0)
exitButton.Position = UDim2.new(0.93, 0, 0.01, 0)
exitButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
exitButton.BorderSizePixel = 1
exitButton.BorderColor3 = Color3.fromRGB(255, 255, 255)
exitButton.Text = "X"
exitButton.TextColor3 = Color3.fromRGB(255, 255, 255)
exitButton.TextScaled = true
exitButton.Font = Enum.Font.GothamBold
exitButton.Parent = mainFrame

local function makeRow(yPos)
    local row = Instance.new("Frame")
    row.Size = UDim2.new(0.96, 0, 0.07, 0)
    row.Position = UDim2.new(0.02, 0, yPos, 0)
    row.BackgroundTransparency = 1
    row.Parent = mainFrame
    return row
end

local function makeButton(parent, text, xPos, width, color, callback)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(width or 0.4, 0, 0.85, 0)
    btn.Position = UDim2.new(xPos, 0, 0.07, 0)
    btn.BackgroundColor3 = color
    btn.BackgroundTransparency = 0.2
    btn.BorderSizePixel = 1
    btn.BorderColor3 = Color3.fromRGB(255, 255, 255)
    btn.Text = text
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.TextScaled = true
    btn.Font = Enum.Font.GothamBold
    btn.Parent = parent
    btn.MouseButton1Click:Connect(callback)
    return btn
end

local function makeToggle(parent, text, xPos, width, color, callback)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(width or 0.4, 0, 0.85, 0)
    btn.Position = UDim2.new(xPos, 0, 0.07, 0)
    btn.BackgroundColor3 = color
    btn.BackgroundTransparency = 0.2
    btn.BorderSizePixel = 1
    btn.BorderColor3 = Color3.fromRGB(255, 255, 255)
    btn.Text = text .. " OFF"
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.TextScaled = true
    btn.Font = Enum.Font.GothamBold
    btn.Parent = parent
    local state = false
    btn.MouseButton1Click:Connect(function()
        state = not state
        if state then
            btn.Text = text .. " ON"
            btn.BackgroundColor3 = Color3.fromRGB(0, 200, 0)
        else
            btn.Text = text .. " OFF"
            btn.BackgroundColor3 = color
        end
        callback(state)
    end)
    return btn, function() return state end
end

local function makeInput(parent, xPos, width, placeholder)
    local input = Instance.new("TextBox")
    input.Size = UDim2.new(width or 0.35, 0, 0.85, 0)
    input.Position = UDim2.new(xPos, 0, 0.07, 0)
    input.BackgroundColor3 = Color3.fromRGB(30, 30, 45)
    input.BorderSizePixel = 1
    input.BorderColor3 = Color3.fromRGB(100, 100, 150)
    input.PlaceholderText = placeholder or ""
    input.PlaceholderColor3 = Color3.fromRGB(120, 120, 150)
    input.Text = ""
    input.TextColor3 = Color3.fromRGB(255, 255, 255)
    input.TextScaled = true
    input.Font = Enum.Font.Gotham
    input.ClearTextOnFocus = false
    input.Parent = parent
    return input
end

local row1 = makeRow(0.09)
local noclipToggle = makeToggle(row1, "Noclip", 0.05, 0.4, Color3.fromRGB(0, 100, 200), function(state)
    local char = player.Character
    if not char then return end
    for _, part in pairs(char:GetDescendants()) do
        if part:IsA("BasePart") then
            part.CanCollide = not state
        end
    end
end)

local jumpToggle = makeToggle(row1, "Jump", 0.55, 0.4, Color3.fromRGB(0, 150, 100), function(state)
    local char = player.Character
    if not char then return end
    local humanoid = char:FindFirstChild("Humanoid")
    if not humanoid then return end
    if state then
        humanoid.UseJumpPower = true
        game:GetService("UserInputService").JumpRequest:Connect(function()
            if jumpState then
                humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end)
    end
end)
local jumpState = false

local row2 = makeRow(0.18)
local invisibleToggle = makeToggle(row2, "Invisible", 0.05, 0.4, Color3.fromRGB(100, 50, 150), function(state)
    local char = player.Character
    if not char then return end
    for _, part in pairs(char:GetDescendants()) do
        if part:IsA("BasePart") then
            part.Transparency = state and 1 or 0
        end
    end
end)

local row3 = makeRow(0.27)
local skinInput = makeInput(row3, 0.05, 0.5, "Player name for skin")
makeButton(row3, "Copy Skin", 0.58, 0.37, Color3.fromRGB(0, 150, 200), function()
    local name = skinInput.Text
    if name == "" then return end
    for _, plr in pairs(game.Players:GetPlayers()) do
        if plr.Name:lower():find(name:lower()) then
            local targetChar = plr.Character
            if not targetChar then return end
            local char = player.Character
            if not char then return end
            for _, part in pairs(char:GetDescendants()) do
                if part:IsA("BasePart") and targetChar:FindFirstChild(part.Name) then
                    local targetPart = targetChar[part.Name]
                    if targetPart:IsA("BasePart") then
                        part.BrickColor = targetPart.BrickColor
                        part.Material = targetPart.Material
                        part.Transparency = targetPart.Transparency
                    end
                end
            end
            break
        end
    end
end)

local row4 = makeRow(0.36)
local soundInput = makeInput(row4, 0.05, 0.5, "Sound ID")
makeButton(row4, "Play Sound", 0.58, 0.37, Color3.fromRGB(0, 200, 100), function()
    local id = soundInput.Text
    if id == "" then return end
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://" .. id
    sound.Volume = 1
    sound.Looped = false
    sound.Parent = game.Workspace
    sound:Play()
    game:GetService("Debris"):AddItem(sound, 3)
end)

local row5 = makeRow(0.45)
local followInput = makeInput(row5, 0.05, 0.5, "Player to follow")
makeButton(row5, "Follow", 0.58, 0.37, Color3.fromRGB(0, 100, 200), function()
    local name = followInput.Text
    if name == "" then return end
    for _, plr in pairs(game.Players:GetPlayers()) do
        if plr.Name:lower():find(name:lower()) then
            spawn(function()
                while plr and plr.Character and player.Character do
                    local hrp = plr.Character:FindFirstChild("HumanoidRootPart")
                    if hrp and player.Character:FindFirstChild("HumanoidRootPart") then
                        player.Character.HumanoidRootPart.CFrame = hrp.CFrame
                    end
                    task.wait(0.1)
                end
            end)
            break
        end
    end
end)

local row6 = makeRow(0.54)
makeButton(row6, "Stop Follow", 0.05, 0.4, Color3.fromRGB(200, 50, 50), function()
    player.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame
end)

local row7 = makeRow(0.63)
local killInput = makeInput(row7, 0.05, 0.3, "Name")
local countInput = makeInput(row7, 0.38, 0.2, "Count")
countInput.Text = "1"
makeButton(row7, "Kill", 0.62, 0.33, Color3.fromRGB(255, 0, 0), function()
    local name = killInput.Text
    local count = tonumber(countInput.Text) or 1
    if name == "" then return end
    for i = 1, count do
        for _, plr in pairs(game.Players:GetPlayers()) do
            if plr.Name:lower():find(name:lower()) then
                local char = plr.Character
                if not char then return end
                local hrp = char:FindFirstChild("HumanoidRootPart")
                if not hrp then return end
                local cart = Instance.new("Part")
                cart.Size = Vector3.new(5, 2, 3)
                cart.BrickColor = BrickColor.new("Bright red")
                cart.Material = Enum.Material.Plastic
                cart.Parent = game.Workspace
                cart.Position = hrp.Position + Vector3.new(0, 1, 0)
                local weld = Instance.new("Weld")
                weld.Part0 = cart
                weld.Part1 = hrp
                weld.C0 = CFrame.new(0, 1, 0)
                weld.Parent = cart
                local bp = Instance.new("BodyPosition")
                bp.MaxForce = Vector3.new(4000, 4000, 4000)
                bp.Position = Vector3.new(0, -500, 0)
                bp.Parent = cart
                task.wait(2)
                cart:Destroy()
                break
            end
        end
        task.wait(0.3)
    end
end)

local row8 = makeRow(0.72)
makeButton(row8, "Detect Players", 0.3, 0.4, Color3.fromRGB(0, 200, 150), function()
    local msg = "Players Online:\n"
    for _, plr in pairs(game.Players:GetPlayers()) do
        msg = msg .. plr.Name .. "\n"
    end
    player:Chat(msg)
end)

keyButton.MouseButton1Click:Connect(function()
    if keyInput.Text == key then
        keyEntered = true
        keyFrame.Visible = false
        mainFrame.Visible = true
    else
        keyStatus.Text = "Invalid Key"
        keyStatus.TextColor3 = Color3.fromRGB(255, 0, 0)
    end
end)

claimButton.MouseButton1Click:Connect(function()
    setclipboard(discordLink)
    keyStatus.Text = "Link Copied!"
    keyStatus.TextColor3 = Color3.fromRGB(0, 255, 0)
end)

exitButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)
