--[[

		Gui2Lua™
		10zOfficial
		Version 1.0.0

]]


-- Instances

local CRYONIX = Instance.new("ScreenGui")
local Root = Instance.new("Frame")
local SIDEBAR = Instance.new("Frame")
local MainBtn = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local EditorBtn = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local SettingBtn = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local ImageLabel = Instance.new("ImageLabel")
local UICorner_4 = Instance.new("UICorner")
local BASE = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local MainTab = Instance.new("Frame")
local UICorner_6 = Instance.new("UICorner")
local ChangelogBox = Instance.new("Frame")
local UICorner_7 = Instance.new("UICorner")
local Changelog = Instance.new("TextLabel")
local ContributeBox = Instance.new("Frame")
local UICorner_8 = Instance.new("UICorner")
local Contributer = Instance.new("TextLabel")
local DeveloperBox = Instance.new("Frame")
local UICorner_9 = Instance.new("UICorner")
local Developers = Instance.new("TextLabel")
local ServerBox = Instance.new("Frame")
local UICorner_10 = Instance.new("UICorner")
local Status = Instance.new("TextLabel")
local ActiveAdmin = Instance.new("TextLabel")
local AdminVal = Instance.new("TextLabel")
local ActivePlayers = Instance.new("TextLabel")
local PlayersVal = Instance.new("TextLabel")
local EditorTab = Instance.new("Frame")
local UICorner_11 = Instance.new("UICorner")
local codeBox = Instance.new("TextBox")
local UICorner_12 = Instance.new("UICorner")
local RunBtn = Instance.new("TextButton")
local UICorner_13 = Instance.new("UICorner")
local ClearBtn = Instance.new("TextButton")
local UICorner_14 = Instance.new("UICorner")
local PasteBtn = Instance.new("TextButton")
local UICorner_15 = Instance.new("UICorner")
local CopyBtn = Instance.new("TextButton")
local UICorner_16 = Instance.new("UICorner")
local SettingTab = Instance.new("Frame")
local UICorner_17 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local UICorner_18 = Instance.new("UICorner")

-- Properties

CRYONIX.Name = "CRYONIX"
CRYONIX.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
CRYONIX.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Root.Name = "Root"
Root.Parent = CRYONIX
Root.BackgroundColor3 = Color3.new(0.0823529, 0.0823529, 0.0823529)
Root.BorderColor3 = Color3.new(0, 0, 0)
Root.BorderSizePixel = 0
Root.Position = UDim2.new(0.166209638, 0, 0.178861782, 0)
Root.Size = UDim2.new(0, 645, 0, 345)

SIDEBAR.Name = "SIDEBAR"
SIDEBAR.Parent = Root
SIDEBAR.BackgroundColor3 = Color3.new(0, 0, 0)
SIDEBAR.BorderColor3 = Color3.new(0, 0, 0)
SIDEBAR.BorderSizePixel = 0
SIDEBAR.Size = UDim2.new(0, 127, 0, 345)

MainBtn.Name = "MainBtn"
MainBtn.Parent = SIDEBAR
MainBtn.BackgroundColor3 = Color3.new(0.172549, 0.172549, 0.172549)
MainBtn.BorderColor3 = Color3.new(0, 0, 0)
MainBtn.BorderSizePixel = 0
MainBtn.Position = UDim2.new(0.102362208, 0, 0.358730167, 0)
MainBtn.Size = UDim2.new(0, 101, 0, 50)
MainBtn.Font = Enum.Font.SourceSans
MainBtn.Text = "MAIN"
MainBtn.TextColor3 = Color3.new(1, 1, 1)
MainBtn.TextSize = 17

UICorner.Parent = MainBtn
UICorner.CornerRadius = UDim.new(0, 10)

EditorBtn.Name = "EditorBtn"
EditorBtn.Parent = SIDEBAR
EditorBtn.BackgroundColor3 = Color3.new(0.172549, 0.172549, 0.172549)
EditorBtn.BorderColor3 = Color3.new(0, 0, 0)
EditorBtn.BorderSizePixel = 0
EditorBtn.Position = UDim2.new(0.102362208, 0, 0.568253994, 0)
EditorBtn.Size = UDim2.new(0, 101, 0, 50)
EditorBtn.Font = Enum.Font.SourceSans
EditorBtn.Text = "EDITOR"
EditorBtn.TextColor3 = Color3.new(0.996078, 0.996078, 0.996078)
EditorBtn.TextSize = 17
EditorBtn.TextStrokeColor3 = Color3.new(0.996078, 0.996078, 0.996078)
EditorBtn.TextWrapped = true

UICorner_2.Parent = EditorBtn
UICorner_2.CornerRadius = UDim.new(0, 10)

SettingBtn.Name = "SettingBtn"
SettingBtn.Parent = SIDEBAR
SettingBtn.BackgroundColor3 = Color3.new(0.172549, 0.172549, 0.172549)
SettingBtn.BorderColor3 = Color3.new(0, 0, 0)
SettingBtn.BorderSizePixel = 0
SettingBtn.Position = UDim2.new(0.102362208, 0, 0.777777791, 0)
SettingBtn.Size = UDim2.new(0, 101, 0, 50)
SettingBtn.Font = Enum.Font.SourceSans
SettingBtn.Text = "SETTINGS"
SettingBtn.TextColor3 = Color3.new(1, 1, 1)
SettingBtn.TextSize = 17
SettingBtn.TextWrapped = true

UICorner_3.Parent = SettingBtn
UICorner_3.CornerRadius = UDim.new(0, 10)

ImageLabel.Parent = SIDEBAR
ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel.BorderColor3 = Color3.new(0, 0, 0)
ImageLabel.BorderSizePixel = 5
ImageLabel.Position = UDim2.new(0.168723524, 0, 0.0539682545, 0)
ImageLabel.Size = UDim2.new(0, 83, 0, 81)
ImageLabel.Image = "rbxassetid://124791284"

UICorner_4.Parent = SIDEBAR
UICorner_4.CornerRadius = UDim.new(0, 10)

BASE.Name = "BASE"
BASE.Parent = Root
BASE.BackgroundColor3 = Color3.new(0.0823529, 0.0823529, 0.0823529)
BASE.BorderColor3 = Color3.new(0, 0, 0)
BASE.BorderSizePixel = 0
BASE.Position = UDim2.new(0.201267824, 0, 0, 0)
BASE.Size = UDim2.new(0, 515, 0, 315)

UICorner_5.Parent = BASE
UICorner_5.CornerRadius = UDim.new(0, 10)

MainTab.Name = "MainTab"
MainTab.Parent = BASE
MainTab.Active = true
MainTab.BackgroundColor3 = Color3.new(0.0509804, 0.0509804, 0.0509804)
MainTab.BorderColor3 = Color3.new(0, 0, 0)
MainTab.BorderSizePixel = 0
MainTab.Size = UDim2.new(0, 515, 0, 345)
MainTab.Visible = false

UICorner_6.Parent = MainTab
UICorner_6.CornerRadius = UDim.new(0, 10)

ChangelogBox.Name = "ChangelogBox"
ChangelogBox.Parent = MainTab
ChangelogBox.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
ChangelogBox.BorderColor3 = Color3.new(0, 0, 0)
ChangelogBox.BorderSizePixel = 0
ChangelogBox.Position = UDim2.new(0.0194174759, 0, 0, 0)
ChangelogBox.Size = UDim2.new(0, 235, 0, 163)

UICorner_7.Parent = ChangelogBox
UICorner_7.CornerRadius = UDim.new(0, 10)

Changelog.Name = "Changelog"
Changelog.Parent = ChangelogBox
Changelog.BackgroundColor3 = Color3.new(1, 1, 1)
Changelog.BackgroundTransparency = 1
Changelog.BorderColor3 = Color3.new(0, 0, 0)
Changelog.BorderSizePixel = 0
Changelog.Position = UDim2.new(0.0286717191, 0, 0, 0)
Changelog.Size = UDim2.new(0, 124, 0, 46)
Changelog.Font = Enum.Font.Bangers
Changelog.Text = "CHANGELOGS:"
Changelog.TextColor3 = Color3.new(1, 1, 1)
Changelog.TextScaled = true
Changelog.TextSize = 14
Changelog.TextWrapped = true

ContributeBox.Name = "ContributeBox"
ContributeBox.Parent = MainTab
ContributeBox.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
ContributeBox.BorderColor3 = Color3.new(0, 0, 0)
ContributeBox.BorderSizePixel = 0
ContributeBox.Position = UDim2.new(0.522330105, 0, 0, 0)
ContributeBox.Size = UDim2.new(0, 235, 0, 163)

UICorner_8.Parent = ContributeBox
UICorner_8.CornerRadius = UDim.new(0, 10)

Contributer.Name = "Contributer"
Contributer.Parent = ContributeBox
Contributer.BackgroundColor3 = Color3.new(1, 1, 1)
Contributer.BackgroundTransparency = 1
Contributer.BorderColor3 = Color3.new(0, 0, 0)
Contributer.BorderSizePixel = 0
Contributer.Position = UDim2.new(0.041437678, 0, 0, 0)
Contributer.Size = UDim2.new(0, 124, 0, 46)
Contributer.Font = Enum.Font.Bangers
Contributer.Text = "CONTRIBUTERS:"
Contributer.TextColor3 = Color3.new(1, 1, 1)
Contributer.TextScaled = true
Contributer.TextSize = 14
Contributer.TextWrapped = true

DeveloperBox.Name = "DeveloperBox"
DeveloperBox.Parent = MainTab
DeveloperBox.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
DeveloperBox.BorderColor3 = Color3.new(0, 0, 0)
DeveloperBox.BorderSizePixel = 0
DeveloperBox.Position = UDim2.new(0.526213586, 0, 0.524775684, 0)
DeveloperBox.Size = UDim2.new(0, 235, 0, 163)

UICorner_9.Parent = DeveloperBox
UICorner_9.CornerRadius = UDim.new(0, 10)

Developers.Name = "Developers"
Developers.Parent = DeveloperBox
Developers.BackgroundColor3 = Color3.new(1, 1, 1)
Developers.BackgroundTransparency = 1
Developers.BorderColor3 = Color3.new(0, 0, 0)
Developers.BorderSizePixel = 0
Developers.Position = UDim2.new(0.03292704, 0, 0, 0)
Developers.Size = UDim2.new(0, 124, 0, 40)
Developers.Font = Enum.Font.Bangers
Developers.Text = "DEVELOPERS:"
Developers.TextColor3 = Color3.new(1, 1, 1)
Developers.TextScaled = true
Developers.TextSize = 14
Developers.TextWrapped = true

ServerBox.Name = "ServerBox"
ServerBox.Parent = MainTab
ServerBox.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
ServerBox.BorderColor3 = Color3.new(0, 0, 0)
ServerBox.BorderSizePixel = 0
ServerBox.Position = UDim2.new(0.0194174759, 0, 0.516080022, 0)
ServerBox.Size = UDim2.new(0, 235, 0, 163)

UICorner_10.Parent = ServerBox
UICorner_10.CornerRadius = UDim.new(0, 10)

Status.Name = "Status"
Status.Parent = ServerBox
Status.BackgroundColor3 = Color3.new(1, 1, 1)
Status.BackgroundTransparency = 1
Status.BorderColor3 = Color3.new(0, 0, 0)
Status.BorderSizePixel = 0
Status.Position = UDim2.new(-0.0011155149, 0, 0.0184049085, 0)
Status.Size = UDim2.new(0, 108, 0, 35)
Status.Font = Enum.Font.Bangers
Status.Text = "STATUS:"
Status.TextColor3 = Color3.new(1, 1, 1)
Status.TextScaled = true
Status.TextSize = 14
Status.TextWrapped = true

ActiveAdmin.Name = "ActiveAdmin"
ActiveAdmin.Parent = ServerBox
ActiveAdmin.BackgroundColor3 = Color3.new(1, 1, 1)
ActiveAdmin.BackgroundTransparency = 1
ActiveAdmin.BorderColor3 = Color3.new(0, 0, 0)
ActiveAdmin.BorderSizePixel = 0
ActiveAdmin.Position = UDim2.new(-0.0011155149, 0, 0.263511598, 0)
ActiveAdmin.Size = UDim2.new(0, 99, 0, 22)
ActiveAdmin.Font = Enum.Font.Cartoon
ActiveAdmin.Text = "ADMIN: "
ActiveAdmin.TextColor3 = Color3.new(1, 1, 1)
ActiveAdmin.TextScaled = true
ActiveAdmin.TextSize = 14
ActiveAdmin.TextWrapped = true

AdminVal.Name = "AdminVal"
AdminVal.Parent = ServerBox
AdminVal.BackgroundColor3 = Color3.new(1, 1, 1)
AdminVal.BackgroundTransparency = 1
AdminVal.BorderColor3 = Color3.new(0, 0, 0)
AdminVal.BorderSizePixel = 0
AdminVal.Position = UDim2.new(0.177607894, 0, 0.275781542, 0)
AdminVal.Size = UDim2.new(0, 99, 0, 22)
AdminVal.Font = Enum.Font.Cartoon
AdminVal.Text = "0"
AdminVal.TextColor3 = Color3.new(1, 1, 1)
AdminVal.TextScaled = true
AdminVal.TextSize = 14
AdminVal.TextWrapped = true

ActivePlayers.Name = "ActivePlayers"
ActivePlayers.Parent = ServerBox
ActivePlayers.BackgroundColor3 = Color3.new(1, 1, 1)
ActivePlayers.BackgroundTransparency = 1
ActivePlayers.BorderColor3 = Color3.new(0, 0, 0)
ActivePlayers.BorderSizePixel = 0
ActivePlayers.Position = UDim2.new(0.45845896, 0, 0.275781542, 0)
ActivePlayers.Size = UDim2.new(0, 99, 0, 22)
ActivePlayers.Font = Enum.Font.Cartoon
ActivePlayers.Text = "SERVER:"
ActivePlayers.TextColor3 = Color3.new(1, 1, 1)
ActivePlayers.TextScaled = true
ActivePlayers.TextSize = 14
ActivePlayers.TextWrapped = true

PlayersVal.Name = "PlayersVal"
PlayersVal.Parent = ServerBox
PlayersVal.BackgroundColor3 = Color3.new(1, 1, 1)
PlayersVal.BackgroundTransparency = 1
PlayersVal.BorderColor3 = Color3.new(0, 0, 0)
PlayersVal.BorderSizePixel = 0
PlayersVal.Position = UDim2.new(0.679735541, 0, 0.275781542, 0)
PlayersVal.Size = UDim2.new(0, 99, 0, 22)
PlayersVal.Font = Enum.Font.Cartoon
PlayersVal.Text = "0"
PlayersVal.TextColor3 = Color3.new(1, 1, 1)
PlayersVal.TextScaled = true
PlayersVal.TextSize = 14
PlayersVal.TextWrapped = true

EditorTab.Name = "EditorTab"
EditorTab.Parent = BASE
EditorTab.Active = true
EditorTab.BackgroundColor3 = Color3.new(0.0823529, 0.0823529, 0.0823529)
EditorTab.BorderColor3 = Color3.new(0, 0, 0)
EditorTab.BorderSizePixel = 0
EditorTab.Size = UDim2.new(0, 515, 0, 345)
EditorTab.Visible = false

UICorner_11.Parent = EditorTab
UICorner_11.CornerRadius = UDim.new(0, 10)

codeBox.Name = "codeBox"
codeBox.Parent = EditorTab
codeBox.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
codeBox.BorderColor3 = Color3.new(0, 0, 0)
codeBox.BorderSizePixel = 0
codeBox.Position = UDim2.new(0.011650485, 0, 0.0434782617, 0)
codeBox.Size = UDim2.new(0, 491, 0, 253)
codeBox.Font = Enum.Font.SourceSans
codeBox.MultiLine = true
codeBox.PlaceholderColor3 = Color3.new(0.74902, 0.74902, 0.74902)
codeBox.PlaceholderText = "print(\"Made By itzC9\")"
codeBox.Text = ""
codeBox.TextColor3 = Color3.new(1, 1, 1)
codeBox.TextSize = 14
codeBox.TextWrapped = true
codeBox.TextXAlignment = Enum.TextXAlignment.Left
codeBox.TextYAlignment = Enum.TextYAlignment.Top

UICorner_12.Parent = codeBox
UICorner_12.CornerRadius = UDim.new(0, 10)

RunBtn.Name = "RunBtn"
RunBtn.Parent = EditorTab
RunBtn.BackgroundColor3 = Color3.new(0.172549, 0.172549, 0.172549)
RunBtn.BorderColor3 = Color3.new(0, 0, 0)
RunBtn.BorderSizePixel = 0
RunBtn.Position = UDim2.new(0.768381655, 0, 0.810904086, 0)
RunBtn.Size = UDim2.new(0, 101, 0, 50)
RunBtn.Font = Enum.Font.SourceSans
RunBtn.Text = "RUN"
RunBtn.TextColor3 = Color3.new(1, 1, 1)
RunBtn.TextSize = 17

UICorner_13.Parent = RunBtn
UICorner_13.CornerRadius = UDim.new(0, 10)

ClearBtn.Name = "ClearBtn"
ClearBtn.Parent = EditorTab
ClearBtn.BackgroundColor3 = Color3.new(0.172549, 0.172549, 0.172549)
ClearBtn.BorderColor3 = Color3.new(0, 0, 0)
ClearBtn.BorderSizePixel = 0
ClearBtn.Position = UDim2.new(0.558672905, 0, 0.810904086, 0)
ClearBtn.Size = UDim2.new(0, 101, 0, 50)
ClearBtn.Font = Enum.Font.SourceSans
ClearBtn.Text = "CLEAR"
ClearBtn.TextColor3 = Color3.new(1, 1, 1)
ClearBtn.TextSize = 17

UICorner_14.Parent = ClearBtn
UICorner_14.CornerRadius = UDim.new(0, 10)

PasteBtn.Name = "PasteBtn"
PasteBtn.Parent = EditorTab
PasteBtn.BackgroundColor3 = Color3.new(0.172549, 0.172549, 0.172549)
PasteBtn.BorderColor3 = Color3.new(0, 0, 0)
PasteBtn.BorderSizePixel = 0
PasteBtn.Position = UDim2.new(0.350905925, 0, 0.810904086, 0)
PasteBtn.Size = UDim2.new(0, 101, 0, 50)
PasteBtn.Font = Enum.Font.SourceSans
PasteBtn.Text = "PASTE"
PasteBtn.TextColor3 = Color3.new(1, 1, 1)
PasteBtn.TextSize = 17

UICorner_15.Parent = PasteBtn
UICorner_15.CornerRadius = UDim.new(0, 10)

CopyBtn.Name = "CopyBtn"
CopyBtn.Parent = EditorTab
CopyBtn.BackgroundColor3 = Color3.new(0.172549, 0.172549, 0.172549)
CopyBtn.BorderColor3 = Color3.new(0, 0, 0)
CopyBtn.BorderSizePixel = 0
CopyBtn.Position = UDim2.new(0.0111001022, 0, 0.810904086, 0)
CopyBtn.Size = UDim2.new(0, 101, 0, 50)
CopyBtn.Font = Enum.Font.SourceSans
CopyBtn.Text = "COPY"
CopyBtn.TextColor3 = Color3.new(1, 1, 1)
CopyBtn.TextSize = 17

UICorner_16.Parent = CopyBtn
UICorner_16.CornerRadius = UDim.new(0, 10)

SettingTab.Name = "SettingTab"
SettingTab.Parent = BASE
SettingTab.BackgroundColor3 = Color3.new(0.0823529, 0.0823529, 0.0823529)
SettingTab.BorderColor3 = Color3.new(0, 0, 0)
SettingTab.BorderSizePixel = 0
SettingTab.Size = UDim2.new(0, 515, 0, 345)
SettingTab.Visible = false

UICorner_17.Parent = SettingTab
UICorner_17.CornerRadius = UDim.new(0, 10)

TextLabel.Parent = SettingTab
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BorderColor3 = Color3.new(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.248543695, 0, 0.426086962, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.TextColor3 = Color3.new(0, 0, 0)
TextLabel.TextSize = 14

UICorner_18.Parent = Root
UICorner_18.CornerRadius = UDim.new(0, 10)

-- Scripts
local function MainLocalScript()
	-- Root is in outer scope (we created the GUI above)
	local root = Root
	local sidebar = root:WaitForChild("SIDEBAR")
	local base = root:WaitForChild("BASE")

	-- Get buttons & tabs
	local mainBtn = sidebar:WaitForChild("MainBtn")
	local editorBtn = sidebar:WaitForChild("EditorBtn")
	local settingBtn = sidebar:WaitForChild("SettingBtn")

	local mainTab = base:WaitForChild("MainTab")
	local editorTab = base:WaitForChild("EditorTab")
	local settingTab = base:WaitForChild("SettingTab")

	-- Editor controls
	local codeBox = editorTab:WaitForChild("codeBox")
	local runBtn = editorTab:WaitForChild("RunBtn")
	local clearBtn = editorTab:WaitForChild("ClearBtn")
	local pasteBtn = editorTab:WaitForChild("PasteBtn")
	local copyBtn = editorTab:WaitForChild("CopyBtn")

	-- Services
	local UserInputService = game:GetService("UserInputService")
	local StarterGui = game:GetService("StarterGui")

	-- Colors
	local defaultColor = Color3.fromRGB(44, 44, 44) -- matches original ~0.1725
	local activeColor = Color3.fromRGB(0, 170, 255) -- highlight

	-- safe notify wrapper
	local function notify(title, text, duration)
		duration = duration or 3
		pcall(function()
			StarterGui:SetCore("SendNotification", {
				Title = title,
				Text = text,
				Duration = duration
			})
		end)
	end

	-- Helper: reset all sidebar buttons to default color
	local function resetSidebarColors()
		for _, child in pairs(sidebar:GetChildren()) do
			if child:IsA("TextButton") then
				child.BackgroundColor3 = defaultColor
			end
		end
	end

	-- Switch tab function
	local tabMap = {
		MainBtn = mainTab,
		EditorBtn = editorTab,
		SettingBtn = settingTab
	}

	local function switchTab(button)
		-- Hide all tabs
		for _, frame in pairs(tabMap) do
			frame.Visible = false
		end
		-- Reset colors
		resetSidebarColors()
		-- Show requested tab and highlight
		local tab = tabMap[button.Name]
		if tab then
			tab.Visible = true
			button.BackgroundColor3 = activeColor
		end
	end

	-- init: set default UI state
	resetSidebarColors()
	-- set button starting color based on original
	mainBtn.BackgroundColor3 = activeColor
	mainTab.Visible = true
	editorTab.Visible = false
	settingTab.Visible = false

	-- Connect buttons
	mainBtn.MouseButton1Click:Connect(function()
		switchTab(mainBtn)
	end)
	editorBtn.MouseButton1Click:Connect(function()
		switchTab(editorBtn)
	end)
	settingBtn.MouseButton1Click:Connect(function()
		switchTab(settingBtn)
	end)

	-- ========== Editor Button Behavior ==========

	-- Copy
	copyBtn.MouseButton1Click:Connect(function()
		local text = tostring(codeBox.Text or "")
		if text ~= "" then
			-- compatibility: some exploit environments use setclipboard
			pcall(function()
				if setclipboard then
					setclipboard(text)
				end
			end)
			notify("[CryonixApi]", "Code copied to clipboard!", 2)
		else
			notify("[CryonixApi]", "Nothing to copy!", 2)
		end
	end)

	-- Paste (append)
	pasteBtn.MouseButton1Click:Connect(function()
		local ok, clip = pcall(function()
			if getclipboard then
				return getclipboard()
			end
			return ""
		end)
		if ok and clip and clip ~= "" then
			codeBox.Text = codeBox.Text .. tostring(clip)
			notify("[CryonixApi]", "Pasted from clipboard.", 1.5)
		else
			notify("[CryonixApi]", "Clipboard unavailable or empty.", 2)
		end
	end)

	-- Clear
	clearBtn.MouseButton1Click:Connect(function()
		codeBox.Text = ""
		notify("[CryonixApi]", "Editor cleared.", 1.2)
	end)

	-- Run (safe pcall + show results)
	runBtn.MouseButton1Click:Connect(function()
		local src = tostring(codeBox.Text or "")
		if src == "" then
			notify("[CryonixApi]", "No code to run.", 2)
			return
		end

		-- attempt to compile
		local fn, loadErr = loadstring(src)
		if not fn then
			notify("[CryonixApi] Error", "Compile error: " .. tostring(loadErr), 5)
			return
		end

		-- run safely
		local ok, runtimeErr = pcall(function()
			fn()
		end)
		if ok then
			notify("[CryonixApi]", "Script ran successfully.", 2)
		else
			notify("[CryonixApi] Error", "Runtime error: " .. tostring(runtimeErr), 5)
		end
	end)

	-- ========== Hotkeys (when editor is focused) ==========
	UserInputService.InputBegan:Connect(function(input, processed)
		if processed then return end
		-- only act when EditorTab is visible and user is typing in the codeBox
		if not editorTab.Visible then return end
		-- check ctrl down
		local ctrlDown = UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) or UserInputService:IsKeyDown(Enum.KeyCode.RightControl)
		if not ctrlDown then return end

		if input.KeyCode == Enum.KeyCode.C then
			-- Ctrl+C: copy
			pcall(function() if setclipboard then setclipboard(codeBox.Text) end end)
			notify("[CryonixApi]", "Code copied to clipboard!", 1.5)
		elseif input.KeyCode == Enum.KeyCode.V then
			-- Ctrl+V: paste
			local ok, clip = pcall(function() return (getclipboard and getclipboard() or "") end)
			if ok and clip and clip ~= "" then
				codeBox.Text = codeBox.Text .. tostring(clip)
				notify("[CryonixApi]", "Pasted from clipboard.", 1.2)
			else
				notify("[CryonixApi]", "Clipboard unavailable or empty.", 2)
			end
		elseif input.KeyCode == Enum.KeyCode.X then
			-- Ctrl+X: cut (copy then clear)
			pcall(function() if setclipboard then setclipboard(codeBox.Text) end end)
			codeBox.Text = ""
			notify("[CryonixApi]", "Cut to clipboard.", 1.5)
		elseif input.KeyCode == Enum.KeyCode.R then
			-- Ctrl+R: run
			local src = tostring(codeBox.Text or "")
			if src == "" then
				notify("[CryonixApi]", "No code to run.", 2)
				return
			end
			local fn, loadErr = loadstring(src)
			if not fn then
				notify("[CryonixApi] Error", "Compile error: " .. tostring(loadErr), 5)
				return
			end
			local ok, runtimeErr = pcall(fn)
			if ok then
				notify("[CryonixApi]", "Script ran successfully.", 2)
			else
				notify("[CryonixApi] Error", "Runtime error: " .. tostring(runtimeErr), 5)
			end
		end
	end)

	-- small UX tweak: focus codeBox on editor tab open
	editorBtn.MouseButton1Click:Connect(function()
		wait(0.08)
		codeBox:CaptureFocus()
	end)
end

-- run the GUI script
coroutine.wrap(MainLocalScript)()