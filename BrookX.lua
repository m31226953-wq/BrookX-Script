local player = game.Players.LocalPlayer
local key = "FREE_CobrasCreation102939"
local discordLink = "https://discord.gg/Gca5UP4wjx"
local keyEntered = false

local screenGui = Instance.new("ScreenGui")
screenGui.Parent = player.PlayerGui
screenGui.ResetOnSpawn = false

local function createShadow(instance, size, transparency)
    local shadow = Instance.new("Frame")
    shadow.Size = UDim2.new(1, size, 1, size)
    shadow.Position = UDim2.new(0, -size/2, 0, -size/2)
    shadow.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    shadow.BackgroundTransparency = transparency or 0.5
    shadow.BorderSizePixel = 0
    shadow.Parent = instance
    return shadow
end

local keyFrame = Instance.new("Frame")
keyFrame.Size = UDim2.new(0, 320, 0, 240)
keyFrame.Position = UDim2.new(0.5, -160, 0.3, 0)
keyFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
keyFrame.BackgroundTransparency = 0.05
keyFrame.BorderSizePixel = 2
keyFrame.BorderColor3 = Color3.fromRGB(80, 180, 255)
keyFrame.ClipsDescendants = true
keyFrame.Active = true
keyFrame.Draggable = true
keyFrame.Parent = screenGui
createShadow(keyFrame, 20, 0.7)

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = keyFrame

local glow = Instance.new("Frame")
glow.Size = UDim2.new(1, 0, 0.08, 0)
glow.Position = UDim2.new(0, 0, 0, 0)
glow.BackgroundColor3 = Color3.fromRGB(80, 180, 255)
glow.BackgroundTransparency = 0.3
glow.BorderSizePixel = 0
glow.Parent = keyFrame

local keyTitle = Instance.new("TextLabel")
keyTitle.Size = UDim2.new(1, 0, 0.22, 0)
keyTitle.Position = UDim2.new(0, 0, 0.03, 0)
keyTitle.BackgroundTransparency = 1
keyTitle.Text = "BrookX By: CobraStudio 😈"
keyTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
keyTitle.TextScaled = true
keyTitle.Font = Enum.Font.GothamBold
keyTitle.Parent = keyFrame

local keySub = Instance.new("TextLabel")
keySub.Size = UDim2.new(1, 0, 0.1, 0)
keySub.Position = UDim2.new(0, 0, 0.2, 0)
keySub.BackgroundTransparency = 1
keySub.Text = "Enter Key"
keySub.TextColor3 = Color3.fromRGB(150, 180, 200)
keySub.TextScaled = true
keySub.Font = Enum.Font.Gotham
keySub.Parent = keyFrame

local keyInput = Instance.new("TextBox")
keyInput.Size = UDim2.new(0.85, 0, 0.15, 0)
keyInput.Position = UDim2.new(0.075, 0, 0.33, 0)
keyInput.BackgroundColor3 = Color3.fromRGB(30, 35, 50)
keyInput.BackgroundTransparency = 0.3
keyInput.BorderSizePixel = 1
keyInput.BorderColor3 = Color3.fromRGB(100, 150, 200)
keyInput.PlaceholderText = "Enter Key"
keyInput.PlaceholderColor3 = Color3.fromRGB(120, 140, 160)
keyInput.Text = ""
keyInput.TextColor3 = Color3.fromRGB(255, 255, 255)
keyInput.TextScaled = true
keyInput.Font = Enum.Font.Gotham
keyInput.ClearTextOnFocus = false
keyInput.Parent = keyFrame
local keyCorner = Instance.new("UICorner")
keyCorner.CornerRadius = UDim.new(0, 6)
keyCorner.Parent = keyInput

local keyButton = Instance.new("TextButton")
keyButton.Size = UDim2.new(0.4, 0, 0.14, 0)
keyButton.Position = UDim2.new(0.3, 0, 0.52, 0)
keyButton.BackgroundColor3 = Color3.fromRGB(80, 180, 255)
keyButton.BackgroundTransparency = 0.1
keyButton.BorderSizePixel = 2
keyButton.BorderColor3 = Color3.fromRGB(255, 255, 255)
keyButton.Text = "UNLOCK"
keyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
keyButton.TextScaled = true
keyButton.Font = Enum.Font.GothamBold
keyButton.Parent = keyFrame
local btnCorner = Instance.new("UICorner")
btnCorner.CornerRadius = UDim.new(0, 6)
btnCorner.Parent = keyButton

local claimButton = Instance.new("TextButton")
claimButton.Size = UDim2.new(0.6, 0, 0.14, 0)
claimButton.Position = UDim2.new(0.2, 0, 0.7, 0)
claimButton.BackgroundColor3 = Color3.fromRGB(255, 200, 50)
claimButton.BackgroundTransparency = 0.1
claimButton.BorderSizePixel = 2
claimButton.BorderColor3 = Color3.fromRGB(255, 255, 255)
claimButton.Text = "🔑 Claim Key!"
claimButton.TextColor3 = Color3.fromRGB(255, 255, 255)
claimButton.TextScaled = true
claimButton.Font = Enum.Font.GothamBold
claimButton.Parent = keyFrame
local claimCorner = Instance.new("UICorner")
claimCorner.CornerRadius = UDim.new(0, 6)
claimCorner.Parent = claimButton

local keyStatus = Instance.new("TextLabel")
keyStatus.Size = UDim2.new(1, 0, 0.1, 0)
keyStatus.Position = UDim2.new(0, 0, 0.88, 0)
keyStatus.BackgroundTransparency = 1
keyStatus.Text = ""
keyStatus.TextColor3 = Color3.fromRGB(150, 150, 150)
keyStatus.TextScaled = true
keyStatus.Font = Enum.Font.Gotham
keyStatus.Parent = keyFrame

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 340, 0, 440)
mainFrame.Position = UDim2.new(0.5, -170, 0.08, 0)
mainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
mainFrame.BackgroundTransparency = 0.05
mainFrame.BorderSizePixel = 2
mainFrame.BorderColor3 = Color3.fromRGB(255, 80, 80)
mainFrame.ClipsDescendants = true
mainFrame.Active = true
mainFrame.Draggable = true
mainFrame.Visible = false
mainFrame.Parent = screenGui
createShadow(mainFrame, 20, 0.7)
local mainCorner = Instance.new("UICorner")
mainCorner.CornerRadius = UDim.new(0, 12)
mainCorner.Parent = mainFrame

local header = Instance.new("Frame")
header.Size = UDim2.new(1, 0, 0.08, 0)
header.Position = UDim2.new(0, 0, 0, 0)
header.BackgroundColor3 = Color3.fromRGB(255, 80, 80)
header.BackgroundTransparency = 0.2
header.BorderSizePixel = 0
header.Parent = mainFrame

local mainTitle = Instance.new("TextLabel")
mainTitle.Size = UDim2.new(0.85, 0, 1, 0)
mainTitle.Position = UDim2.new(0, 0, 0, 0)
mainTitle.BackgroundTransparency = 1
mainTitle.Text = "BrookX By: CobraStudio 😈"
mainTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
mainTitle.TextScaled = true
mainTitle.Font = Enum.Font.GothamBold
mainTitle.Parent = header

local exitButton = Instance.new("TextButton")
exitButton.Size = UDim2.new(0.08, 0, 0.7, 0)
exitButton.Position = UDim2.new(0.91, 0, 0.15, 0)
exitButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
exitButton.BackgroundTransparency = 0.2
exitButton.BorderSizePixel = 1
exitButton.BorderColor3 = Color3.fromRGB(255, 255, 255)
exitButton.Text = "X"
exitButton.TextColor3 = Color3.fromRGB(255, 255, 255)
exitButton.TextScaled = true
exitButton.Font = Enum.Font.GothamBold
exitButton.Parent = header
local exitCorner = Instance.new("UICorner")
exitCorner.CornerRadius = UDim.new(0, 4)
exitCorner.Parent = exitButton

local function createButton(parent, text, yPos, color, callback)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0.42, 0, 0.055, 0)
    btn.Position = UDim2.new(yPos, 0, 0, 0)
    btn.BackgroundColor3 = color
    btn.BackgroundTransparency = 0.15
    btn.BorderSizePixel = 1
    btn.BorderColor3 = Color3.fromRGB(255, 255, 255)
    btn.Text = text
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.TextScaled = true
    btn.Font = Enum.Font.GothamBold
    btn.Parent = parent
    local btnCorner = Instance.new("UICorner")
    btnCorner.CornerRadius = UDim.new(0, 4)
    btnCorner.Parent = btn
    btn.MouseButton1Click:Connect(callback)
    return btn
end

local function createToggle(parent, text, yPos, color, callback)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0.42, 0, 0.055, 0)
    btn.Position = UDim2.new(yPos, 0, 0, 0)
    btn.BackgroundColor3 = color
    btn.BackgroundTransparency = 0.15
    btn.BorderSizePixel = 1
    btn.BorderColor3 = Color3.fromRGB(255, 255, 255)
    btn.Text = text .. " [OFF]"
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.TextScaled = true
    btn.Font = Enum.Font.GothamBold
    btn.Parent = parent
    local btnCorner = Instance.new("UICorner")
    btnCorner.CornerRadius = UDim.new(0, 4)
    btnCorner.Parent = btn
    local state = false
    btn.MouseButton1Click:Connect(function()
        state = not state
        if state then
            btn.Text = text .. " [ON]"
            btn.BackgroundColor3 = Color3.fromRGB(0, 200, 0)
            btn.BackgroundTransparency = 0.15
        else
            btn.Text = text .. " [OFF]"
            btn.BackgroundColor3 = color
            btn.BackgroundTransparency = 0.15
        end
        callback(state)
    end)
    return btn, function() return state end
end

local function createInput(parent, text, yPos, placeholder, width)
    local input = Instance.new("TextBox")
    input.Size = UDim2.new(width or 0.42, 0, 0.055, 0)
    input.Position = UDim2.new(yPos, 0, 0, 0)
    input.BackgroundColor3 = Color3.fromRGB(25, 30, 45)
    input.BackgroundTransparency = 0.3
    input.BorderSizePixel = 1
    input.BorderColor3 = Color3.fromRGB(100, 150, 200)
    input.PlaceholderText = placeholder or text
    input.PlaceholderColor3 = Color3.fromRGB(120, 140, 160)
    input.Text = ""
    input.TextColor3 = Color3.fromRGB(255, 255, 255)
    input.TextScaled = true
    input.Font = Enum.Font.Gotham
    input.ClearTextOnFocus = false
    input.Parent = parent
    local inputCorner = Instance.new("UICorner")
    inputCorner.CornerRadius = UDim.new(0, 4)
    inputCorner.Parent = input
    return input
end

local function createLabel(parent, text, yPos, color)
    local lbl = Instance.new("TextLabel")
    lbl.Size = UDim2.new(0.12, 0, 0.055, 0)
    lbl.Position = UDim2.new(yPos, 0, 0, 0)
    lbl.BackgroundTransparency = 1
    lbl.Text = text
    lbl.TextColor3 = color or Color3.fromRGB(200, 200, 200)
    lbl.TextScaled = true
    lbl.Font = Enum.Font.GothamBold
    lbl.Parent = parent
    return lbl
end

local row1 = Instance.new("Frame")
row1.Size = UDim2.new(0.96, 0, 0.065, 0)
row1.Position = UDim2.new(0.02, 0, 0.10, 0)
row1.BackgroundTransparency = 1
row1.Parent = mainFrame

local noclipToggle, getNoclip = createToggle(row1, "Noclip", 0.04, Color3.fromRGB(0, 100, 200), function(state)
    local char = player.Character
    if not char then return end
    for _, part in pairs(char:GetDescendants()) do
        if part:IsA("BasePart") then
            part.CanCollide = not state
        end
    end
end)

local invisibleToggle, getInvisible = createToggle(row1, "Invisible", 0.54, Color3.fromRGB(100, 50, 150), function(state)
    local char = player.Character
    if not char then return end
    for _, part in pairs(char:GetDescendants()) do
        if part:IsA("BasePart") then
            part.Transparency = state and 1 or 0
        end
    end
end)

local row2 = Instance.new("Frame")
row2.Size = UDim2.new(0.96, 0, 0.065, 0)
row2.Position = UDim2.new(0.02, 0, 0.18, 0)
row2.BackgroundTransparency = 1
row2.Parent = mainFrame

local jumpToggle, getJump = createToggle(row2, "Jump", 0.04, Color3.fromRGB(0, 150, 100), function(state)
    local char = player.Character
    if not char then return end
    local humanoid = char:FindFirstChild("Humanoid")
    if not humanoid then return end
    if state then
        humanoid.UseJumpPower = true
        game:GetService("UserInputService").JumpRequest:Connect(function()
            if getJump() then
                humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end)
    end
end)

local row3 = Instance.new("Frame")
row3.Size = UDim2.new(0.96, 0, 0.065, 0)
row3.Position = UDim2.new(0.02, 0, 0.26, 0)
row3.BackgroundTransparency = 1
row3.Parent = mainFrame

local skinLabel = createLabel(row3, "Skin:", 0.02, Color3.fromRGB(200, 200, 200))
local skinInput = createInput(row3, "Player Name", 0.14, "Player name", 0.40)
local skinBtn = createButton(row3, "Copy", 0.58, Color3.fromRGB(0, 150, 200), function()
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

local row4 = Instance.new("Frame")
row4.Size = UDim2.new(0.96, 0, 0.065, 0)
row4.Position = UDim2.new(0.02, 0, 0.34, 0)
row4.BackgroundTransparency = 1
row4.Parent = mainFrame

local soundLabel = createLabel(row4, "Sound:", 0.02, Color3.fromRGB(200, 200, 200))
local soundInput = createInput(row4, "Sound ID", 0.14, "Enter ID", 0.40)
local soundBtn = createButton(row4, "Play", 0.58, Color3.fromRGB(0, 200, 100), function()
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

local row5 = Instance.new("Frame")
row5.Size = UDim2.new(0.96, 0, 0.065, 0)
row5.Position = UDim2.new(0.02, 0, 0.42, 0)
row5.BackgroundTransparency = 1
row5.Parent = mainFrame

local followLabel = createLabel(row5, "Follow:", 0.02, Color3.fromRGB(200, 200, 200))
local followInput = createInput(row5, "Player Name", 0.14, "Player name", 0.40)
local followActive = false
local followTarget = nil
local followBtn = createButton(row5, "View", 0.58, Color3.fromRGB(0, 100, 200), function()
    if followActive then
        followActive = false
        followTarget = nil
        return
    end
    local name = followInput.Text
    for _, plr in pairs(game.Players:GetPlayers()) do
        if plr.Name:lower():find(name:lower()) then
            followTarget = plr
            followActive = true
            spawn(function()
                while followActive and followTarget and followTarget.Character do
                    local hrp = followTarget.Character:FindFirstChild("HumanoidRootPart")
                    if hrp and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                        player.Character.HumanoidRootPart.CFrame = hrp.CFrame
                    end
                    task.wait(0.1)
                end
            end)
            break
        end
    end
end)

local row6 = Instance.new("Frame")
row6.Size = UDim2.new(0.96, 0, 0.065, 0)
row6.Position = UDim2.new(0.02, 0, 0.50, 0)
row6.BackgroundTransparency = 1
row6.Parent = mainFrame

local killLabel = createLabel(row6, "Kill:", 0.02, Color3.fromRGB(200, 200, 200))
local killInput = createInput(row6, "Player Name", 0.14, "Player name", 0.30)
local countInput = createInput(row6, "Count", 0.48, "1", 0.20)
local killBtn = createButton(row6, "Kill", 0.72, Color3.fromRGB(255, 0, 0), function()
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

local row7 = Instance.new("Frame")
row7.Size = UDim2.new(0.96, 0, 0.065, 0)
row7.Position = UDim2.new(0.02, 0, 0.58, 0)
row7.BackgroundTransparency = 1
row7.Parent = mainFrame

local stopBtn = createButton(row7, "Stop View", 0.04, Color3.fromRGB(200, 50, 50), function()
    followActive = false
    followTarget = nil
end)

local detectBtn = createButton(row7, "Detect Players", 0.50, Color3.fromRGB(0, 200, 150), function()
    local msg = "👥 Players Online:\n"
    for _, plr in pairs(game.Players:GetPlayers()) do
        msg = msg .. "• " .. plr.Name .. "\n"
    end
    player:Chat(msg)
end)

keyButton.MouseButton1Click:Connect(function()
    if keyInput.Text == key then
        keyEntered = true
        keyFrame.Visible = false
        mainFrame.Visible = true
    else
        keyStatus.Text = "❌ Invalid Key"
        keyStatus.TextColor3 = Color3.fromRGB(255, 0, 0)
    end
end)

claimButton.MouseButton1Click:Connect(function()
    setclipboard(discordLink)
    keyStatus.Text = "✅ Link Copied!"
    keyStatus.TextColor3 = Color3.fromRGB(0, 255, 0)
end)

exitButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)

game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.Return then
        if keyInput:IsFocused() and not keyEntered then
            if keyInput.Text == key then
                keyEntered = true
                keyFrame.Visible = false
                mainFrame.Visible = true
            else
                keyStatus.Text = "❌ Invalid Key"
                keyStatus.TextColor3 = Color3.fromRGB(255, 0, 0)
            end
        end
    end
end)
