local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/DenDenZZZ/Kavo-UI-Library/main/Kavo.lua"))()

local Window = Library.CreateLib("War Hub", "Midnight")

-- Main Tab
local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Main")

-- Kill Enemy Toggle
Section:NewToggle("Kill Enemy", "Automatically Kill Enemy When Near", function(state)
    if state then
        Section:MakeNotification("WarHub", "Kill Enemy Loaded!", 5)
        
        spawn(function()
            while state do
                wait(0.1)
                local player = game.Players.LocalPlayer
                local humanoid = player.Character and player.Character:FindFirstChild("Humanoid")
                if humanoid then
                    for _, enemy in pairs(game.workspace:GetDescendants()) do
                        if enemy.Name == "Humanoid" and enemy.Parent.Name.Team ~= player.Team then
                            local A_1 = "shootRifle"
                            local A_2 = ""
                            local A_3 = { [1] = enemy.Parent.HumanoidRootPart }
                            local Event = game:GetService("ReplicatedStorage").Event
                            Event:FireServer(A_1, A_2, A_3)

                            local A_2_hit = "hit"
                            local A_3_hit = { [1] = enemy }
                            Event:FireServer(A_1, A_2_hit, A_3_hit)
                        end
                    end
                end
            end
        end)
    else
        Section:MakeNotification("WarHub", "Kill Enemy Unloaded!", 5)
    end
end)

-- Infinity Ammo Button
Section:NewButton("Infinity Ammo", "Makes your ammo infinite", function()
    spawn(function()
        while wait(3) do
            local player = game.Players.LocalPlayer
            if player.Character and player.Character:FindFirstChild("Humanoid") then
                -- Ensure the exploit environment is supported
                if not (getgc and is_synapse_function) then
                    Section:MakeNotification("WarHub", "Error: Your Exploits Not Supported!", 5)
                    return
                end

                -- Find the reload function and set upvalue for infinite ammo
                local reloadFunc = findFunction("reload") -- Assuming findFunction works
                local reloadIndex = 4
                setupValue(reloadFunc, reloadIndex, math.huge) -- Assuming setupValue works
            end
        end
    end)
end)

-- Fast Fire Button (For Desktop)
Section:NewToggle("Fast Fire", "Hold E to Fire Fast", function(state)
    spawn(function()
        while wait(0.1) do
            if state then
                local player = game.Players.LocalPlayer
                local character = player.Character
                if character and character:FindFirstChild("Humanoid") then
                    local weapon = character:FindFirstChild("M1 Garand")
                    if weapon then
                        -- Fire the weapon
                        if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.E) then
                            weapon:Activate()
                        end
                    end
                end
            end
        end
    end)
end)

-- Fast Fire (Mobile) Button
Section:NewToggle("Fast Fire (Mobile)", "Hold Touch to Fire Fast", function(state)
    spawn(function()
        while wait(0.1) do
            if state then
                local player = game.Players.LocalPlayer
                local character = player.Character
                if character and character:FindFirstChild("Humanoid") then
                    local UIS = game:GetService("UserInputService")
                    local touchInput = nil
                    -- Listen for touch input (Mobile)
                    UIS.TouchStarted:Connect(function(touch, gameProcessed)
                        if gameProcessed then return end
                        touchInput = touch
                    end)

                    UIS.TouchEnded:Connect(function(touch)
                        if touch == touchInput then
                            touchInput = nil
                        end
                    end)

                    -- If touch is being held down, activate firing
                    while touchInput do
                        local weapon = character:FindFirstChild("M1 Garand")
                        if weapon then
                            weapon:Activate() -- Trigger the fire action
                        end
                        wait(0.1) -- This wait prevents rapid firing and simulates holding down
                    end
                end
            end
        end
    end)
end)

-- ESP Toggle
Section:NewToggle("ESP", "See all players in the game", function(state)
    if state then
        local settings = {
            defaultcolor = Color3.fromRGB(255, 0, 0),
            teamcheck = true,
            teamcolor = true
        };

        -- services
        local runService = game:GetService("RunService")
        local players = game:GetService("Players")
        local localPlayer = players.LocalPlayer
        local camera = workspace.CurrentCamera

        -- functions
        local newVector2, newColor3, newDrawing = Vector2.new, Color3.new, Drawing.new
        local tan, rad = math.tan, math.rad
        local round = function(...) local a = {}; for i,v in next, table.pack(...) do a[i] = math.round(v); end return unpack(a); end
        local wtvp = function(...) local a, b = camera.WorldToViewportPoint(camera, ...) return newVector2(a.X, a.Y), b, a.Z end

        local espCache = {}
        local function createEsp(player)
            local drawings = {}

            drawings.box = newDrawing("Square")
            drawings.box.Thickness = 1
            drawings.box.Filled = false
            drawings.box.Color = settings.defaultcolor
            drawings.box.Visible = false
            drawings.box.ZIndex = 2

            drawings.boxoutline = newDrawing("Square")
            drawings.boxoutline.Thickness = 3
            drawings.boxoutline.Filled = false
            drawings.boxoutline.Color = newColor3()
            drawings.boxoutline.Visible = false
            drawings.boxoutline.ZIndex = 1

            espCache[player] = drawings
        end

        local function removeEsp(player)
            if rawget(espCache, player) then
                for _, drawing in next, espCache[player] do
                    drawing:Remove()
                end
                espCache[player] = nil
            end
        end

        local function updateEsp(player, esp)
            local character = player and player.Character
            if character then
                local cframe = character:GetModelCFrame()
                local position, visible, depth = wtvp(cframe.Position)
                esp.box.Visible = visible
                esp.boxoutline.Visible = visible

                if cframe and visible then
                    local scaleFactor = 1 / (depth * tan(rad(camera.FieldOfView / 2)) * 2) * 1000
                    local width, height = round(4 * scaleFactor, 5 * scaleFactor)
                    local x, y = round(position.X, position.Y)

                    esp.box.Size = newVector2(width, height)
                    esp.box.Position = newVector2(round(x - width / 2, y - height / 2))
                    esp.box.Color = settings.teamcolor and player.TeamColor.Color or settings.defaultcolor

                    esp.boxoutline.Size = esp.box.Size
                    esp.boxoutline.Position = esp.box.Position
                end
            else
                esp.box.Visible = false
                esp.boxoutline.Visible = false
            end
        end

        -- main
        for _, player in next, players:GetPlayers() do
            if player ~= localPlayer then
                createEsp(player)
            end
        end

        players.PlayerAdded:Connect(function(player)
            createEsp(player)
        end)

        players.PlayerRemoving:Connect(function(player)
            removeEsp(player)
        end)

        runService:BindToRenderStep("esp", Enum.RenderPriority.Camera.Value, function()
            for player, drawings in next, espCache do
                if settings.teamcheck and player.Team == localPlayer.Team then
                    continue
                end

                if drawings and player ~= localPlayer then
                    updateEsp(player, drawings)
                end
            end
        end)
    else
        Section:MakeNotification("WarHub", "ESP Unloaded!", 5)
    end
end)

-- RPG Shoot Button
Section:NewToggle("Shoots Lands and Ship", "You Need RPG", function(state)
    spawn(function()
        while wait() do
            if state then
                local mouse = game.Players.LocalPlayer:GetMouse()
                local A_2 = { [1] = mouse.Hit.p }
                game:GetService("ReplicatedStorage").Event:FireServer("fireRPG", A_2)
            end
        end
    end)
end)

-- Additional Buttons for External Scripts
Section:NewButton("Basic Script", "Load External Script", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Hm5011/hussain/refs/heads/main/Naval%20Warfare"))()
end)

Section:NewButton("Advance Script", "Load External Script", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/raimbowo1/naval/main/GUI"))()
end)

-- Other Tab
local Tab2 = Window:NewTab("Other")
local Section2 = Tab2:NewSection("Other")
-- Add more functionality as needed in this section