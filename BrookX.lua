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
keyFrame.Size = UDim2.new(0, 380, 0, 280)
keyFrame.Position = UDim2.new(0.5, -190, 0.3, 0)
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
keyTitle.Size = UDim2.new(1, 0, 0.25, 0)
keyTitle.Position = UDim2.new(0, 0, 0.03, 0)
keyTitle.BackgroundTransparency = 1
keyTitle.Text = "BrookX By: CobraStudio 😈"
keyTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
keyTitle.TextScaled = true
keyTitle.Font = Enum.Font.GothamBold
keyTitle.Parent = keyFrame

local keySub = Instance.new("TextLabel")
keySub.Size = UDim2.new(1, 0, 0.12, 0)
keySub.Position = UDim2.new(0, 0, 0.22, 0)
keySub.BackgroundTransparency = 1
keySub.Text = "Enter Key to Unlock"
keySub.TextColor3 = Color3.fromRGB(150, 180, 200)
keySub.TextScaled = true
keySub.Font = Enum.Font.Gotham
keySub.Parent = keyFrame

local keyInput = Instance.new("TextBox")
keyInput.Size = UDim2.new(0.85, 0, 0.15, 0)
keyInput.Position = UDim2.new(0.075, 0, 0.37, 0)
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
keyButton.Size = UDim2.new(0.4, 0, 0.15, 0)
keyButton.Position = UDim2.new(0.3, 0, 0.56, 0)
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
claimButton.Position = UDim2.new(0.2, 0, 0.75, 0)
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
keyStatus.Position = UDim2.new(0, 0, 0.9, 0)
keyStatus.BackgroundTransparency = 1
keyStatus.Text = ""
keyStatus.TextColor3 = Color3.fromRGB(150, 150, 150)
keyStatus.TextScaled = true
keyStatus.Font = Enum.Font.Gotham
keyStatus.Parent = keyFrame

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 420, 0, 520)
mainFrame.Position = UDim2.new(0.5, -210, 0.08, 0)
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
header.Size = UDim2.new(1, 0, 0.09, 0)
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

local scrollFrame = Instance.new("ScrollingFrame")
scrollFrame.Size = UDim2.new(0.96, 0, 0.85, 0)
scrollFrame.Position = UDim2.new(0.02, 0, 0.11, 0)
scrollFrame.BackgroundTransparency = 1
scrollFrame.CanvasSize = UDim2.new(0, 0, 0, 900)
scrollFrame.ScrollBarThickness = 4
scrollFrame.ScrollBarImageColor3 = Color3.fromRGB(80, 180, 255)
scrollFrame.Parent = mainFrame

local function createCategory(parent, text, yPos)
    local cat = Instance.new("TextLabel")
    cat.Size = UDim2.new(0.95, 0, 0.04, 0)
    cat.Position = UDim2.new(0.025, 0, yPos, 0)
    cat.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    cat.BackgroundTransparency = 0.9
    cat.BorderSizePixel = 0
    cat.Text = " ⚡ " .. text
    cat.TextColor3 = Color3.fromRGB(80, 180, 255)
    cat.TextScaled = true
    cat.Font = Enum.Font.GothamBold
    cat.TextXAlignment = Enum.TextXAlignment.Left
    cat.Parent = parent
    return cat
end

local function createButton(parent, text, yPos, color, icon, callback)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0.92, 0, 0.055, 0)
    btn.Position = UDim2.new(0.04, 0, yPos, 0)
    btn.BackgroundColor3 = color
    btn.BackgroundTransparency = 0.15
    btn.BorderSizePixel = 1
    btn.BorderColor3 = Color3.fromRGB(255, 255, 255)
    btn.Text = icon .. " " .. text
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.TextScaled = true
    btn.Font = Enum.Font.GothamBold
    btn.TextXAlignment = Enum.TextXAlignment.Left
    btn.Parent = parent
    local btnCorner = Instance.new("UICorner")
    btnCorner.CornerRadius = UDim.new(0, 4)
    btnCorner.Parent = btn
    btn.MouseButton1Click:Connect(callback)
    return btn
end

local function createToggle(parent, text, yPos, color, icon, callback)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0.92, 0, 0.055, 0)
    btn.Position = UDim2.new(0.04, 0, yPos, 0)
    btn.BackgroundColor3 = color
    btn.BackgroundTransparency = 0.15
    btn.BorderSizePixel = 1
    btn.BorderColor3 = Color3.fromRGB(255, 255, 255)
    btn.Text = icon .. " " .. text .. " [OFF]"
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.TextScaled = true
    btn.Font = Enum.Font.GothamBold
    btn.TextXAlignment = Enum.TextXAlignment.Left
    btn.Parent = parent
    local btnCorner = Instance.new("UICorner")
    btnCorner.CornerRadius = UDim.new(0, 4)
    btnCorner.Parent = btn
    local state = false
    btn.MouseButton1Click:Connect(function()
        state = not state
        if state then
            btn.Text = icon .. " " .. text .. " [ON]"
            btn.BackgroundColor3 = Color3.fromRGB(0, 200, 0)
            btn.BackgroundTransparency = 0.15
        else
            btn.Text = icon .. " " .. text .. " [OFF]"
            btn.BackgroundColor3 = color
            btn.BackgroundTransparency = 0.15
        end
        callback(state)
    end)
    return btn, function() return state end
end

local function createDropdown(parent, text, yPos, options, callback)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0.92, 0, 0.055, 0)
    btn.Position = UDim2.new(0.04, 0, yPos, 0)
    btn.BackgroundColor3 = Color3.fromRGB(30, 30, 60)
    btn.BackgroundTransparency = 0.15
    btn.BorderSizePixel = 1
    btn.BorderColor3 = Color3.fromRGB(255, 255, 255)
    btn.Text = " 👤 " .. text .. ": " .. options[1]
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.TextScaled = true
    btn.Font = Enum.Font.GothamBold
    btn.TextXAlignment = Enum.TextXAlignment.Left
    btn.Parent = parent
    local btnCorner = Instance.new("UICorner")
    btnCorner.CornerRadius = UDim.new(0, 4)
    btnCorner.Parent = btn
    local index = 1
    btn.MouseButton1Click:Connect(function()
        index = index + 1
        if index > #options then index = 1 end
        btn.Text = " 👤 " .. text .. ": " .. options[index]
        callback(options[index])
    end)
    return btn, function() return options[index] end
end

local function createInput(parent, text, yPos, placeholder)
    local input = Instance.new("TextBox")
    input.Size = UDim2.new(0.92, 0, 0.05, 0)
    input.Position = UDim2.new(0.04, 0, yPos, 0)
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

local yPos = 0.02

createCategory(scrollFrame, "MOVEMENT", yPos)
yPos = yPos + 0.06

local noclipToggle, getNoclip = createToggle(scrollFrame, "Noclip Mode+", yPos, Color3.fromRGB(0, 100, 200), "🚀", function(state)
    local char = player.Character
    if not char then return end
    for _, part in pairs(char:GetDescendants()) do
        if part:IsA("BasePart") then
            part.CanCollide = not state
        end
    end
end)
yPos = yPos + 0.06

local jumpToggle, getJump = createToggle(scrollFrame, "Jump Mode", yPos, Color3.fromRGB(0, 150, 100), "🦘", function(state)
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
yPos = yPos + 0.06

createCategory(scrollFrame, "VISUALS", yPos)
yPos = yPos + 0.06

local invisibleToggle, getInvisible = createToggle(scrollFrame, "Invisible Mode+", yPos, Color3.fromRGB(100, 50, 150), "👻", function(state)
    local char = player.Character
    if not char then return end
    for _, part in pairs(char:GetDescendants()) do
        if part:IsA("BasePart") then
            part.Transparency = state and 1 or 0
        end
    end
end)
yPos = yPos + 0.06

local rainbowToggle, getRainbow = createToggle(scrollFrame, "Rainbow Tag", yPos, Color3.fromRGB(200, 0, 150), "🌈", function(state)
    local char = player.Character
    if not char then return end
    local head = char:FindFirstChild("Head")
    if not head then return end
    if state then
        spawn(function()
            while getRainbow() do
                local hue = tick() % 1
                local color = Color3.fromHSV(hue, 1, 1)
                head.BrickColor = BrickColor.new(color)
                local tag = player:FindFirstChild("NameDisplay")
                if tag then
                    tag.BackgroundColor3 = color
                end
                task.wait(0.05)
            end
        end)
    else
        head.BrickColor = BrickColor.new("White")
        local tag = player:FindFirstChild("NameDisplay")
        if tag then
            tag.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        end
    end
end)
yPos = yPos + 0.06

createCategory(scrollFrame, "SKIN & SOUND", yPos)
yPos = yPos + 0.06

local playerDropdown, getPlayer = createDropdown(scrollFrame, "Select Player", yPos, {"None"}, function(val)
    for _, plr in pairs(game.Players:GetPlayers()) do
        if plr.Name == val then
            selectedPlayer = plr
            return
        end
    end
    selectedPlayer = nil
end)
local selectedPlayer = nil
yPos = yPos + 0.06

createButton(scrollFrame, "Copy Skin", yPos, Color3.fromRGB(0, 150, 200), "📋", function()
    if not selectedPlayer then return end
    local targetChar = selectedPlayer.Character
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
end)
yPos = yPos + 0.06

local soundInput = createInput(scrollFrame, "Sound ID", yPos, "Enter Sound ID")
yPos = yPos + 0.06

createButton(scrollFrame, "Play Sound (3 sec)", yPos, Color3.fromRGB(0, 200, 100), "🔊", function()
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
yPos = yPos + 0.06

createCategory(scrollFrame, "PLAYER CONTROL", yPos)
yPos = yPos + 0.06

local followInput = createInput(scrollFrame, "Player Name", yPos, "Player to follow")
yPos = yPos + 0.06

local followActive = false
local followTarget = nil

createButton(scrollFrame, "View Player", yPos, Color3.fromRGB(0, 100, 200), "👁️", function()
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
yPos = yPos + 0.06

createButton(scrollFrame, "Stop View", yPos, Color3.fromRGB(200, 50, 50), "⏹️", function()
    followActive = false
    followTarget = nil
end)
yPos = yPos + 0.06

local killInput = createInput(scrollFrame, "Player Name", yPos, "Player to kill")
yPos = yPos + 0.06

local countInput = createInput(scrollFrame, "Kill Count", yPos, "Kill count (default: 1)")
countInput.Text = "1"
yPos = yPos + 0.06

local function killPlayer(target)
    if not target then return end
    local char = target.Character
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
end

createButton(scrollFrame, "Kill Player", yPos, Color3.fromRGB(255, 0, 0), "💀", function()
    local name = killInput.Text
    local count = tonumber(countInput.Text) or 1
    for i = 1, count do
        for _, plr in pairs(game.Players:GetPlayers()) do
            if plr.Name:lower():find(name:lower()) then
                killPlayer(plr)
                task.wait(0.5)
                break
            end
        end
    end
end)
yPos = yPos + 0.06

createCategory(scrollFrame, "TOOLS", yPos)
yPos = yPos + 0.06

createButton(scrollFrame, "Detect Players", yPos, Color3.fromRGB(0, 200, 150), "📡", function()
    local msg = "👥 Players Online:\n"
    for _, plr in pairs(game.Players:GetPlayers()) do
        msg = msg .. "• " .. plr.Name .. "\n"
    end
    player:Chat(msg)
end)
yPos = yPos + 0.06

scrollFrame.CanvasSize = UDim2.new(0, 0, 0, yPos * 400 + 50)

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
