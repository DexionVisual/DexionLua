-- [[ NeverRoblox Loader & Hub ]]

local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")

local LocalPlayer = Players.LocalPlayer
local PlayerName = LocalPlayer.Name
local DisplayName = LocalPlayer.DisplayName

if CoreGui:FindFirstChild("NeverRoblox_HUD") then CoreGui.NeverRoblox_HUD:Destroy() end
if CoreGui:FindFirstChild("NeverRoblox_Welcome") then CoreGui.NeverRoblox_Welcome:Destroy() end
if CoreGui:FindFirstChild("NeverRoblox_Hub") then CoreGui.NeverRoblox_Hub:Destroy() end

------------------------------------------------------------------------
-- [ЧАСТЬ 1: СТАБИЛЬНЫЙ HUD С FPS И ПИНГОМ]
------------------------------------------------------------------------
local HUD_Gui = Instance.new("ScreenGui")
HUD_Gui.Name = "NeverRoblox_HUD"
HUD_Gui.Parent = CoreGui
HUD_Gui.ResetOnSpawn = false

local HUD_Panel = Instance.new("Frame")
HUD_Panel.Name = "MainPanel"
HUD_Panel.Parent = HUD_Gui
HUD_Panel.Position = UDim2.new(0, 15, 0, 15)
HUD_Panel.Size = UDim2.new(0, 180, 0, 45)
HUD_Panel.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
HUD_Panel.BackgroundTransparency = 0.2
HUD_Panel.BorderSizePixel = 0

local HUD_Corner = Instance.new("UICorner")
HUD_Corner.CornerRadius = UDim.new(0, 6)
HUD_Corner.Parent = HUD_Panel

local HUD_Line = Instance.new("Frame")
HUD_Line.Parent = HUD_Panel
HUD_Line.Size = UDim2.new(0, 4, 1, 0)
HUD_Line.BackgroundColor3 = Color3.fromRGB(220, 20, 60)
HUD_Line.BorderSizePixel = 0

local HUD_LineCorner = Instance.new("UICorner")
HUD_LineCorner.CornerRadius = UDim.new(0, 6)
HUD_LineCorner.Parent = HUD_Line

local FpsLabel = Instance.new("TextLabel")
FpsLabel.Parent = HUD_Panel
FpsLabel.Position = UDim2.new(0, 15, 0, 0)
FpsLabel.Size = UDim2.new(0, 75, 1, 0)
FpsLabel.BackgroundTransparency = 1
FpsLabel.Font = Enum.Font.RobotoMono
FpsLabel.TextSize = 14
FpsLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
FpsLabel.TextXAlignment = Enum.TextXAlignment.Left
FpsLabel.Text = "FPS: Calc"

local PingLabel = Instance.new("TextLabel")
PingLabel.Parent = HUD_Panel
PingLabel.Position = UDim2.new(0, 95, 0, 0)
PingLabel.Size = UDim2.new(0, 75, 1, 0)
PingLabel.BackgroundTransparency = 1
PingLabel.Font = Enum.Font.RobotoMono
PingLabel.TextSize = 14
PingLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
PingLabel.TextXAlignment = Enum.TextXAlignment.Left
PingLabel.Text = "PNG: Calc"

local fpsTable = {}
local lastUpdate = os.clock()

RunService.RenderStepped:Connect(function()
    local now = os.clock()
    table.insert(fpsTable, now)
    while fpsTable and fpsTable < now - 1 do table.remove(fpsTable, 1) end
    
    if now - lastUpdate >= 0.4 then
        local currentFps = #fpsTable
        if currentFps == 0 then currentFps = math.floor(Workspace:GetRealPhysicsFPS()) end
        
        local currentPing = 0
        if LocalPlayer and LocalPlayer:GetNetworkPing() then
            currentPing = math.floor(LocalPlayer:GetNetworkPing() * 1000)
        else
            currentPing = math.floor(game:GetService("Stats").Network.ServerPing:GetValue())
        end
        if currentPing <= 0 then currentPing = 15 end 

        FpsLabel.Text = "FPS: " .. tostring(currentFps)
        PingLabel.Text = "PNG: " .. tostring(currentPing)
        
        if currentPing > 150 then
            PingLabel.TextColor3 = Color3.fromRGB(220, 20, 60)
        elseif currentPing > 80 then
            PingLabel.TextColor3 = Color3.fromRGB(255, 165, 0)
        else
            PingLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        end
        lastUpdate = now
    end
end)

------------------------------------------------------------------------
-- [ЧАСТЬ 2: ОКНО ПРИВЕТСТВИЯ С ИМЕНЕМ АККАУНТА (WELCOME)]
------------------------------------------------------------------------
local Welcome_Gui = Instance.new("ScreenGui")
Welcome_Gui.Name = "NeverRoblox_Welcome"
Welcome_Gui.Parent = CoreGui

local Welcome_Panel = Instance.new("Frame")
Welcome_Panel.Size = UDim2.new(0, 300, 0, 70)
Welcome_Panel.Position = UDim2.new(0.5, -150, 0.85, 0)
Welcome_Panel.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
Welcome_Panel.BackgroundTransparency = 1
Welcome_Panel.BorderSizePixel = 0
Welcome_Panel.Parent = Welcome_Gui

local Welcome_Corner = Instance.new("UICorner")
Welcome_Corner.CornerRadius = UDim.new(0, 8)
Welcome_Corner.Parent = Welcome_Panel

local Welcome_Line = Instance.new("Frame")
Welcome_Line.Size = UDim2.new(0, 4, 1, 0)
Welcome_Line.BackgroundColor3 = Color3.fromRGB(220, 20, 60)
Welcome_Line.BackgroundTransparency = 1
Welcome_Line.BorderSizePixel = 0
Welcome_Line.Parent = Welcome_Panel

local Welcome_LineCorner = Instance.new("UICorner")
Welcome_LineCorner.CornerRadius = UDim.new(0, 8)
Welcome_LineCorner.Parent = Welcome_Line

local Welcome_Title = Instance.new("TextLabel")
Welcome_Title.Size = UDim2.new(1, -20, 0, 30)
Welcome_Title.Position = UDim2.new(0, 15, 0, 8)
Welcome_Title.BackgroundTransparency = 1
Welcome_Title.Font = Enum.Font.GothamBold
Welcome_Title.TextSize = 16
Welcome_Title.TextColor3 = Color3.fromRGB(220, 20, 60)
Welcome_Title.TextXAlignment = Enum.TextXAlignment.Left
Welcome_Title.Text = "NeverRoblox Loaded!"
Welcome_Title.TextTransparency = 1
Welcome_Title.Parent = Welcome_Panel

local Welcome_Sub = Instance.new("TextLabel")
Welcome_Sub.Size = UDim2.new(1, -20, 0, 25)
Welcome_Sub.Position = UDim2.new(0, 15, 0, 34)
Welcome_Sub.BackgroundTransparency = 1
Welcome_Sub.Font = Enum.Font.Gotham
Welcome_Sub.TextSize = 13
Welcome_Sub.TextColor3 = Color3.fromRGB(230, 230, 230)
Welcome_Sub.TextXAlignment = Enum.TextXAlignment.Left
Welcome_Sub.Text = "Welcome back, " .. DisplayName .. " (@" .. PlayerName .. ")"
Welcome_Sub.TextTransparency = 1
Welcome_Sub.Parent = Welcome_Panel

TweenService:Create(Welcome_Panel, TweenInfo.new(0.5), {BackgroundTransparency = 0.15}):Play()
TweenService:Create(Welcome_Line, TweenInfo.new(0.5), {BackgroundTransparency = 0}):Play()
TweenService:Create(Welcome_Title, TweenInfo.new(0.5), {TextTransparency = 0}):Play()
TweenService:Create(Welcome_Sub, TweenInfo.new(0.5), {TextTransparency = 0}):Play()

task.delay(3, function()
    TweenService:Create(Welcome_Panel, TweenInfo.new(0.5), {BackgroundTransparency = 1}):Play()
    TweenService:Create(Welcome_Line, TweenInfo.new(0.5), {BackgroundTransparency = 1}):Play()
    TweenService:Create(Welcome_Title, TweenInfo.new(0.5), {TextTransparency = 1}):Play()
    TweenService:Create(Welcome_Sub, TweenInfo.new(0.5), {TextTransparency = 1}):Play()
    task.wait(0.5)
    Welcome_Gui:Destroy()
end)

------------------------------------------------------------------------
-- [ЧАСТЬ 3: ГРАФИЧЕСКИЙ ХАБ ДЛЯ СКРИПТОВ (NEVERROBLOX HUB)]
------------------------------------------------------------------------
local Hub_Gui = Instance.new("ScreenGui")
Hub_Gui.Name = "NeverRoblox_Hub"
Hub_Gui.Parent = CoreGui
Hub_Gui.ResetOnSpawn = false

local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Parent = Hub_Gui
MainFrame.Size = UDim2.new(0, 450, 0, 280)
MainFrame.Position = UDim2.new(0.5, -225, 0.5, -140)
MainFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
MainFrame.BorderSizePixel = 0
MainFrame.Active = true
MainFrame.Draggable = true

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 8)
MainCorner.Parent = MainFrame

local Sidebar = Instance.new("Frame")
Sidebar.Name = "Sidebar"
Sidebar.Parent = MainFrame
Sidebar.Size = UDim2.new(0, 130, 1, 0)
Sidebar.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
Sidebar.BorderSizePixel = 0

local SidebarCorner = Instance.new("UICorner")
SidebarCorner.CornerRadius = UDim.new(0, 8)
SidebarCorner.Parent = Sidebar

local LogoLabel = Instance.new("TextLabel")
LogoLabel.Parent = Sidebar
LogoLabel.Size = UDim2.new(1, 0, 0, 45)
LogoLabel.BackgroundTransparency = 1
LogoLabel.Font = Enum.Font.GothamBold
LogoLabel.TextSize = 15
LogoLabel.TextColor3 = Color3.fromRGB(220, 20, 60)
LogoLabel.Text = "NEVER ROBLOX"

local ContentFrame = Instance.new("ScrollingFrame")
ContentFrame.Name = "ContentFrame"
ContentFrame.Parent = MainFrame
ContentFrame.Position = UDim2.new(0, 140, 0, 15)
ContentFrame.Size = UDim2.new(1, -155, 1, -30)
ContentFrame.BackgroundTransparency = 1
ContentFrame.BorderSizePixel = 0
ContentFrame.CanvasSize = UDim2.new(0, 0, 0, 400)
ContentFrame.ScrollBarThickness = 4

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.Parent = ContentFrame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 8)

local function AddScriptButton(name, description, callback)
    local ButtonFrame = Instance.new("Frame")
    ButtonFrame.Size = UDim2.new(1, -5, 0, 50)
    ButtonFrame.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
    ButtonFrame.BorderSizePixel = 0
    ButtonFrame.Parent = ContentFrame
    
    local B_Corner = Instance.new("UICorner")
    B_Corner.CornerRadius = UDim.new(0, 5)
    B_Corner.Parent = ButtonFrame
    
    local B_Title = Instance.new("TextLabel")
    B_Title.Size = UDim2.new(0.7, 0, 0, 28)
    B_Title.Position = UDim2.new(0, 10, 0, 2)
    B_Title.BackgroundTransparency = 1
    B_Title.Font = Enum.Font.GothamBold
    B_Title.TextSize = 13
    B_Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    B_Title.TextXAlignment = Enum.TextXAlignment.Left
    B_Title.Text = name
    B_Title.Parent = ButtonFrame

    local B_Desc = Instance.new("TextLabel")
    B_Desc.Size = UDim2.new(0.7, 0, 0, 18)
    B_Desc.Position = UDim2.new(0, 10, 0, 26)
    B_Desc.BackgroundTransparency = 1
    B_Desc.Font = Enum.Font.Gotham
    B_Desc.TextSize = 10
    B_Desc.TextColor3 = Color3.fromRGB(150, 150, 150)
    B_Desc.TextXAlignment = Enum.TextXAlignment.Left
    B_Desc.Text = description
    B_Desc.Parent = ButtonFrame

    local ExecButton = Instance.new("TextButton")
    ExecButton.Size = UDim2.new(0.25, 0, 0, 30)
    ExecButton.Position = UDim2.new(0.72, 0, 0, 10)
    ExecButton.BackgroundColor3 = Color3.fromRGB(220, 20, 60)
    ExecButton.Font = Enum.Font.GothamBold
    ExecButton.TextSize = 12
    ExecButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    ExecButton.Text = "RUN"
    ExecButton.Parent = ButtonFrame

    local EB_Corner = Instance.new("UICorner")
    EB_Corner.CornerRadius = UDim.new(0, 4)
    EB_Corner.Parent = ExecButton

    ExecButton.MouseButton1Click:Connect(function()
        ExecButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ExecButton.TextColor3 = Color3.fromRGB(220, 20, 60)
        task.wait(0.1)
        ExecButton.BackgroundColor3 = Color3.fromRGB(220, 20, 60)
        ExecButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        pcall(callback)
    end)
end
