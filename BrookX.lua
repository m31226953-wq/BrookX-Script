local player = game.Players.LocalPlayer
local key = "FREE_CobrasCreation102939"
local keyEntered = false
local discordLink = "https://discord.gg/Gca5UP4wjx"

local screenGui = Instance.new("ScreenGui")
screenGui.Parent = player.PlayerGui
screenGui.ResetOnSpawn = false

local keyFrame = Instance.new("Frame")
keyFrame.Size = UDim2.new(0, 350, 0, 250)
keyFrame.Position = UDim2.new(0.5, -175, 0.3, 0)
keyFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
keyFrame.BackgroundTransparency = 0.1
keyFrame.BorderSizePixel = 3
keyFrame.BorderColor3 = Color3.fromRGB(255, 200, 0)
keyFrame.Active = true
keyFrame.Draggable = true
keyFrame.Parent = screenGui

local keyTitle = Instance.new("TextLabel")
keyTitle.Size = UDim2.new(1, 0, 0.2, 0)
keyTitle.Position = UDim2.new(0, 0, 0, 0)
keyTitle.BackgroundTransparency = 1
keyTitle.Text = "BrookX By: CobraStudio 😈"
keyTitle.TextColor3 = Color3.fromRGB(255, 200, 0)
keyTitle.TextScaled = true
keyTitle.Font = Enum.Font.GothamBold
keyTitle.Parent = keyFrame

local keyInput = Instance.new("TextBox")
keyInput.Size = UDim2.new(0.8, 0, 0.15, 0)
keyInput.Position = UDim2.new(0.1, 0, 0.25, 0)
keyInput.BackgroundColor3 = Color3.fromRGB(50, 50, 60)
keyInput.BackgroundTransparency = 0.3
keyInput.BorderSizePixel = 1
keyInput.BorderColor3 = Color3.fromRGB(255, 255, 255)
keyInput.PlaceholderText = "Enter Key"
keyInput.PlaceholderColor3 = Color3.fromRGB(150, 150, 150)
keyInput.Text = ""
keyInput.TextColor3 = Color3.fromRGB(255, 255, 255)
keyInput.TextScaled = true
keyInput.Font = Enum.Font.Gotham
keyInput.ClearTextOnFocus = false
keyInput.Parent = keyFrame

local keyButton = Instance.new("TextButton")
keyButton.Size = UDim2.new(0.4, 0, 0.15, 0)
keyButton.Position = UDim2.new(0.3, 0, 0.45, 0)
keyButton.BackgroundColor3 = Color3.fromRGB(255, 200, 0)
keyButton.BackgroundTransparency = 0.2
keyButton.BorderSizePixel = 2
keyButton.BorderColor3 = Color3.fromRGB(255, 255, 255)
keyButton.Text = "UNLOCK"
keyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
keyButton.TextScaled = true
keyButton.Font = Enum.Font.GothamBold
keyButton.Parent = keyFrame

local claimButton = Instance.new("TextButton")
claimButton.Size = UDim2.new(0.6, 0, 0.15, 0)
claimButton.Position = UDim2.new(0.2, 0, 0.65, 0)
claimButton.BackgroundColor3 = Color3.fromRGB(0, 150, 255)
claimButton.BackgroundTransparency = 0.2
claimButton.BorderSizePixel = 2
claimButton.BorderColor3 = Color3.fromRGB(255, 255, 255)
claimButton.Text = "Claim Key!"
claimButton.TextColor3 = Color3.fromRGB(255, 255, 255)
claimButton.TextScaled = true
claimButton.Font = Enum.Font.GothamBold
claimButton.Parent = keyFrame

local keyStatus = Instance.new("TextLabel")
keyStatus.Size = UDim2.new(1, 0, 0.15, 0)
keyStatus.Position = UDim2.new(0, 0, 0.85, 0)
keyStatus.BackgroundTransparency = 1
keyStatus.Text = ""
keyStatus.TextColor3 = Color3.fromRGB(150, 150, 150)
keyStatus.TextScaled = true
keyStatus.Font = Enum.Font.Gotham
keyStatus.Parent = keyFrame

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 400, 0, 500)
mainFrame.Position = UDim2.new(0.5, -200, 0.1, 0)
mainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
mainFrame.BackgroundTransparency = 0.1
mainFrame.BorderSizePixel = 3
mainFrame.BorderColor3 = Color3.fromRGB(255, 50, 50)
mainFrame.Active = true
mainFrame.Draggable = true
mainFrame.Visible = false
mainFrame.Parent = screenGui

local mainTitle = Instance.new("TextLabel")
mainTitle.Size = UDim2.new(1, 0, 0.08, 0)
mainTitle.Position = UDim2.new(0, 0, 0, 0)
mainTitle.BackgroundTransparency = 1
mainTitle.Text = "BrookX By: CobraStudio 😈"
mainTitle.TextColor3 = Color3.fromRGB(255, 50, 50)
mainTitle.TextScaled = true
mainTitle.Font = Enum.Font.GothamBold
mainTitle.Parent = mainFrame

local exitButton = Instance.new("TextButton")
exitButton.Size = UDim2.new(0.08, 0, 0.07, 0)
exitButton.Position = UDim2.new(0.92, 0, 0, 0)
exitButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
exitButton.BackgroundTransparency = 0.3
exitButton.BorderSizePixel = 1
exitButton.BorderColor3 = Color3.fromRGB(255, 255, 255)
exitButton.Text = "X"
exitButton.TextColor3 = Color3.fromRGB(255, 255, 255)
exitButton.TextScaled = true
exitButton.Font = Enum.Font.GothamBold
exitButton.Parent = mainFrame

local scrollFrame = Instance.new("ScrollingFrame")
scrollFrame.Size = UDim2.new(0.95, 0, 0.85, 0)
scrollFrame.Position = UDim2.new(0.025, 0, 0.1, 0)
scrollFrame.BackgroundTransparency = 1
scrollFrame.CanvasSize = UDim2.new(0, 0, 0, 800)
scrollFrame.ScrollBarThickness = 5
scrollFrame.Parent = mainFrame

local function createButton(parent, text, yPos, color, callback)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0.9, 0, 0.06, 0)
    btn.Position = UDim2.new(0.05, 0, yPos, 0)
    btn.BackgroundColor3 = color
    btn.BackgroundTransparency = 0.3
    btn.BorderSizePixel = 2
    btn.BorderColor3 = Color3.fromRGB(255, 255, 255)
    btn.Text = text
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.TextScaled = true
    btn.Font = Enum.Font.GothamBold
    btn.Parent = parent
    btn.MouseButton1Click:Connect(callback)
    return btn
end

local function createToggle(parent, text, yPos, callback)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0.9, 0, 0.06, 0)
    btn.Position = UDim2.new(0.05, 0, yPos, 0)
    btn.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
    btn.BackgroundTransparency = 0.3
    btn.BorderSizePixel = 2
    btn.BorderColor3 = Color3.fromRGB(255, 255, 255)
    btn.Text = text .. " [OFF]"
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.TextScaled = true
    btn.Font = Enum.Font.GothamBold
    btn.Parent = parent
    local state = false
    btn.MouseButton1Click:Connect(function()
        state = not state
        if state then
            btn.Text = text .. " [ON]"
            btn.BackgroundColor3 = Color3.fromRGB(0, 200, 0)
        else
            btn.Text = text .. " [OFF]"
            btn.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
        end
        callback(state)
    end)
    return btn, function() return state end
end

local function createDropdown(parent, text, yPos, options, callback)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0.9, 0, 0.06, 0)
    btn.Position = UDim2.new(0.05, 0, yPos, 0)
    btn.BackgroundColor3 = Color3.fromRGB(50, 50, 100)
    btn.BackgroundTransparency = 0.3
    btn.BorderSizePixel = 2
    btn.BorderColor3 = Color3.fromRGB(255, 255, 255)
    btn.Text = text .. ": " .. options[1]
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.TextScaled = true
    btn.Font = Enum.Font.GothamBold
    btn.Parent = parent
    local index = 1
    btn.MouseButton1Click:Connect(function()
        index = index + 1
        if index > #options then index = 1 end
        btn.Text = text .. ": " .. options[index]
        callback(options[index])
    end)
    return btn, function() return options[index] end
end

local noclipState = false
local invisibleState = false
local jumpState = false
local rainbowTagState = false
local followTarget = nil
local followActive = false
local killCount = 0
local selectedPlayer = nil
local killModeActive = false
local soundIdInput = nil
local currentSound = nil

local function toggleNoclip(state)
    noclipState = state
    local char = player.Character
    if not char then return end
    for _, part in pairs(char:GetDescendants()) do
        if part:IsA("BasePart") then
            part.CanCollide = not state
        end
    end
end

local function toggleInvisible(state)
    invisibleState = state
    local char = player.Character
    if not char then return end
    for _, part in pairs(char:GetDescendants()) do
        if part:IsA("BasePart") then
            part.Transparency = state and 1 or 0
        end
    end
end

local function toggleJump(state)
    jumpState = state
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
end

local function toggleRainbowTag(state)
    rainbowTagState = state
    local char = player.Character
    if not char then return end
    local head = char:FindFirstChild("Head")
    if not head then return end
    if state then
        spawn(function()
            while rainbowTagState do
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
end

local function playGlobalSound()
    local id = soundIdInput.Text
    if id == "" then return end
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://" .. id
    sound.Volume = 1
    sound.Looped = false
    sound.Parent = game.Workspace
    sound:Play()
    game:GetService("Debris"):AddItem(sound, 3)
end

local function copySkin()
    if not selectedPlayer then return end
    local targetChar = selectedPlayer.Character
    if not targetChar then return end
    local char = player.Character
    if not char then return end
    
    local function copyParts(fromPart, toPart)
        if fromPart:IsA("BasePart") and toPart:IsA("BasePart") then
            toPart.BrickColor = fromPart.BrickColor
            toPart.Material = fromPart.Material
            toPart.Transparency = fromPart.Transparency
            toPart.Size = fromPart.Size
        end
        for _, child in pairs(fromPart:GetChildren()) do
            local targetChild = toPart:FindFirstChild(child.Name)
            if targetChild then
                copyParts(child, targetChild)
            end
        end
    end
    
    copyParts(targetChar, char)
end

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

local function toggleFollow(playerName)
    if followActive then
        followActive = false
        followTarget = nil
        return
    end
    for _, plr in pairs(game.Players:GetPlayers()) do
        if plr.Name:lower():find(playerName:lower()) then
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
end

local yPos = 0
local function addSpacer()
    yPos = yPos + 0.07
end

local function addButton(text, color, callback)
    yPos = yPos + 0.07
    createButton(scrollFrame, text, yPos, color, callback)
end

local function addToggle(text, callback)
    yPos = yPos + 0.07
    createToggle(scrollFrame, text, yPos, callback)
end

local function addDropdown(text, options, callback)
    yPos = yPos + 0.07
    createDropdown(scrollFrame, text, yPos, options, callback)
end

addToggle("Noclip Mode+", toggleNoclip)
addToggle("Invisible Mode+", toggleInvisible)
addToggle("Jump Mode", toggleJump)
addToggle("Rainbow Tag", toggleRainbowTag)

yPos = yPos + 0.07
local playerDropdown, getPlayer = createDropdown(scrollFrame, "Select Player", yPos, {"None"}, function(val)
    for _, plr in pairs(game.Players:GetPlayers()) do
        if plr.Name == val then
            selectedPlayer = plr
            return
        end
    end
    selectedPlayer = nil
end)

addButton("Copy Skin!", Color3.fromRGB(0, 200, 200), copySkin)

yPos = yPos + 0.07
local soundInput = Instance.new("TextBox")
soundInput.Size = UDim2.new(0.8, 0, 0.05, 0)
soundInput.Position = UDim2.new(0.1, 0, yPos, 0)
soundInput.BackgroundColor3 = Color3.fromRGB(50, 50, 60)
soundInput.BackgroundTransparency = 0.3
soundInput.BorderSizePixel = 1
soundInput.BorderColor3 = Color3.fromRGB(255, 255, 255)
soundInput.PlaceholderText = "Sound ID (3 sec)"
soundInput.PlaceholderColor3 = Color3.fromRGB(150, 150, 150)
soundInput.Text = ""
soundInput.TextColor3 = Color3.fromRGB(255, 255, 255)
soundInput.TextScaled = true
soundInput.Font = Enum.Font.Gotham
soundInput.ClearTextOnFocus = false
soundInput.Parent = scrollFrame
soundIdInput = soundInput

addButton("Play Sound", Color3.fromRGB(0, 200, 0), playGlobalSound)

yPos = yPos + 0.07
local followInput = Instance.new("TextBox")
followInput.Size = UDim2.new(0.8, 0, 0.05, 0)
followInput.Position = UDim2.new(0.1, 0, yPos, 0)
followInput.BackgroundColor3 = Color3.fromRGB(50, 50, 60)
followInput.BackgroundTransparency = 0.3
followInput.BorderSizePixel = 1
followInput.BorderColor3 = Color3.fromRGB(255, 255, 255)
followInput.PlaceholderText = "Player to follow"
followInput.PlaceholderColor3 = Color3.fromRGB(150, 150, 150)
followInput.Text = ""
followInput.TextColor3 = Color3.fromRGB(255, 255, 255)
followInput.TextScaled = true
followInput.Font = Enum.Font.Gotham
followInput.ClearTextOnFocus = false
followInput.Parent = scrollFrame

addButton("View", Color3.fromRGB(0, 150, 255), function()
    toggleFollow(followInput.Text)
end)
addButton("Stop View", Color3.fromRGB(255, 0, 0), function()
    followActive = false
    followTarget = nil
end)

yPos = yPos + 0.07
local killInput = Instance.new("TextBox")
killInput.Size = UDim2.new(0.8, 0, 0.05, 0)
killInput.Position = UDim2.new(0.1, 0, yPos, 0)
killInput.BackgroundColor3 = Color3.fromRGB(50, 50, 60)
killInput.BackgroundTransparency = 0.3
killInput.BorderSizePixel = 1
killInput.BorderColor3 = Color3.fromRGB(255, 255, 255)
killInput.PlaceholderText = "Player to kill"
killInput.PlaceholderColor3 = Color3.fromRGB(150, 150, 150)
killInput.Text = ""
killInput.TextColor3 = Color3.fromRGB(255, 255, 255)
killInput.TextScaled = true
killInput.Font = Enum.Font.Gotham
killInput.ClearTextOnFocus = false
killInput.Parent = scrollFrame

addButton("Kill", Color3.fromRGB(255, 0, 0), function()
    for _, plr in pairs(game.Players:GetPlayers()) do
        if plr.Name:lower():find(killInput.Text:lower()) then
            killPlayer(plr)
            break
        end
    end
end)

yPos = yPos + 0.07
local countInput = Instance.new("TextBox")
countInput.Size = UDim2.new(0.8, 0, 0.05, 0)
countInput.Position = UDim2.new(0.1, 0, yPos, 0)
countInput.BackgroundColor3 = Color3.fromRGB(50, 50, 60)
countInput.BackgroundTransparency = 0.3
countInput.BorderSizePixel = 1
countInput.BorderColor3 = Color3.fromRGB(255, 255, 255)
countInput.PlaceholderText = "Kill count"
countInput.PlaceholderColor3 = Color3.fromRGB(150, 150, 150)
countInput.Text = "1"
countInput.TextColor3 = Color3.fromRGB(255, 255, 255)
countInput.TextScaled = true
countInput.Font = Enum.Font.Gotham
countInput.ClearTextOnFocus = false
countInput.Parent = scrollFrame

addButton("Kill Mode", Color3.fromRGB(200, 0, 0), function()
    local count = tonumber(countInput.Text) or 1
    for i = 1, count do
        for _, plr in pairs(game.Players:GetPlayers()) do
            if plr.Name:lower():find(killInput.Text:lower()) then
                killPlayer(plr)
                task.wait(0.5)
                break
            end
        end
    end
end)

yPos = yPos + 0.07
addButton("Detect Players", Color3.fromRGB(0, 255, 200), function()
    local msg = "Players online:\n"
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
        yPos = 0
        for _, child in pairs(scrollFrame:GetChildren()) do
            if child:IsA("TextButton") or child:IsA("TextBox") then
                child:Destroy()
            end
        end
        mainFrame.Parent = screenGui
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

game.Players.PlayerAdded:Connect(function()
    if playerDropdown then
        local options = {"None"}
        for _, plr in pairs(game.Players:GetPlayers()) do
            table.insert(options, plr.Name)
        end
    end
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
                keyStatus.Text = "Invalid Key"
                keyStatus.TextColor3 = Color3.fromRGB(255, 0, 0)
            end
        end
    end
end)