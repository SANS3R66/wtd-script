--native -- THOSE WHO NATIVE IN LOCAL SCRIPTS :SKULL:
--!optimize 2

--[[
    options (put globals before script load): -- put in autoexec for normal work
    auto [
        _G.autorestart = nil/true -- will macros restart on win or lose or sandbox
        _G.autoload = "macros.lua" -- macros to play on script load
        _G.autovote = nil | "painless" | "casual" | "burdensome" -- vote mode and start now on script load
        _G.afk = nil/true -- sets fps cap to 30 and disables 3D rendering

        example [
            _G.autorestart = true
            _G.autoload = "macros_casual.lua"
            _G.autovote = "casual"
        ]
    ]
]]

makefolder("wtdhook")
makefolder("wtdhook/macroses")

-- im not gonna make an interpretation so just lua table
local function table_to_string(t: { any }, indent: string): string
	local lines = {}
	for k, v in t do
		local key_str
		if type(k) == "string" and not string.match(k, "^%d+$") then
			key_str = k .. " = "
		else
			key_str = "[" .. tostring(k) .. "] = "
		end
		if type(v) == "table" then
			table.insert(lines, key_str .. "{\n" .. table_to_string(v, indent .. "  ") .. indent .. "}")
		elseif type(v) == "vector" then
			local vector_str = "Vector3.new(" .. v.X .. ", " .. v.Y .. ", " .. v.Z .. ")"
			table.insert(lines, key_str .. vector_str)
		elseif type(v) == "string" then
			table.insert(lines, key_str .. `"{v}"`)
		else
			table.insert(lines, key_str .. tostring(v))
		end
	end
	return table.concat(lines, ",\n") .. "\n"
end

local function _getLastIndex(tbl: { any }): number
	local maxIndex = nil
	for index in tbl do
		if maxIndex == nil or index > maxIndex then
			maxIndex = index
		end
	end
	return maxIndex
end

local function findUnitNameUsingUI(UITower: TextButton)
	return (UITower:FindFirstChild("TowerName") :: TextLabel).Text
end

if not game:IsLoaded() then
	print("Waiting for World Tower Defense survival place load..")
	game.Loaded:Wait()
	print("Place loaded!")
end

local LibrarySrc =
	game:HttpGetAsync("https://github.com/ActualMasterOogway/Fluent-Renewed/releases/latest/download/Fluent.luau")
LibrarySrc = loadstring(LibrarySrc)
local Library
if LibrarySrc ~= nil then
	Library = LibrarySrc()
end

local ReplicatedStorage = game:GetService("ReplicatedStorage") :: ReplicatedStorage
local Lighting = game:GetService("Lighting") :: Lighting
local RunService = game:GetService("RunService") :: RunService
local TeleportService = game:GetService("TeleportService") :: TeleportService
local GuiService = game:GetService("GuiService") :: GuiService
local UserInputService = game:GetService("UserInputService") :: UserInputService
local PathfindingService = game:GetService("PathfindingService") :: PathfindingService

local LPlayer = (game:GetService("Players") :: Players).LocalPlayer
local GUI = LPlayer.PlayerGui :: PlayerGui
local Towers = GUI.AwesomeGUI.Towers :: Frame
local SpawnUnit = ReplicatedStorage:FindFirstChild("SpawnUnit") :: RemoteEvent
local UpgradeTower = ReplicatedStorage:FindFirstChild("UpgradeTower") :: RemoteEvent
local ChangeUnitTargetting = ReplicatedStorage.ChangeUnitTargetting :: RemoteEvent
local BluTeamUnits = workspace:FindFirstChild("BluTeamUnits") :: Folder
local CASH = LPlayer:WaitForChild("CASH", 20) :: NumberValue

-- antiafk
local VirtualUser = game:GetService("VirtualUser")
LPlayer.Idled:Connect(function()
	VirtualUser:CaptureController()
	VirtualUser:ClickButton2(Vector2.new())
end)

-- autorejoin
GuiService.ErrorMessageChanged:Connect(function()
	TeleportService:Teleport(game.PlaceId, LPlayer)
end)

if _G.afk then
	setfpscap(30)
	RunService:Set3dRenderingEnabled(false)
end

if _G.autorestart then
	local function restart()
		ReplicatedStorage:FindFirstChild("Died"):FindFirstChild("RestartGame"):FireServer()
		task.wait(8) -- those who know
		TeleportService:Teleport(game.PlaceId, LPlayer)
	end

	ReplicatedStorage.END_LOSE.OnClientEvent:Connect(restart)
	ReplicatedStorage.END_WIN.OnClientEvent:Connect(restart)
	ReplicatedStorage.yeah.OnClientEvent:Connect(restart)
end

local MAX_TARGETTING_DISTANCE = 0.55

local Window = Library:CreateWindow({
	Title = "WTDhook: Survival",
	SubTitle = "",
	TabWidth = 160,
	Size = UDim2.fromOffset(830, 525),
	Resize = true,
	MinSize = Vector2.new(470, 380),
	Acrylic = true,
	Theme = "Dark",
	MinimizeKey = Enum.KeyCode.LeftControl,
})

local Tabs = {
	Main = Window:CreateTab({
		Title = "Main",
		Icon = "app-window",
	}),
}

-- main tab
do
	-- TODO: make macros record and play unit targetting
	--[[
            halfy done. current method using position to compare, so it wont work for moving units
            tough retargetting moving unit is not that common so idk
        ]]
	-- TODO: make macros record and play unit destroy
	-- TODO: make macros record and play mode selection and start now (auto farm??)

	local macrosSection = Tabs.Main:AddSection("Macros")
	macrosSection:CreateParagraph("", { Title = "Macros section", Content = "Allows you to play or record macros" })
	local fileMacros =
		macrosSection:CreateInput("", { Title = "Macros file name", Default = _G.autoload or "macros.lua" })

	local isMacrosRecording = false
	local isMacrosPlaying = false
	local secondsMacros = 0
	local macrosResult = {}

	if hookmetamethod then -- solara users
		local mt = getrawmetatable(game)
		setreadonly(mt, false)
		local old
		old = hookmetamethod(
			game,
			"__namecall",
			newcclosure(function(self, ...)
				if not isMacrosRecording then
					return old(self, ...)
				end
				local method = getnamecallmethod()
				local args = { ... }

				if method == "FireServer" then
					local timestamp = secondsMacros
					if args[1] == "lol" then
						task.spawn(function()
							macrosResult[timestamp] = {}
							local UITower = Towers:FindFirstChild(args[2].Name) :: TextButton
							local spawnlocation = args[3]

							if type(spawnlocation) == "number" then -- placing unit
								macrosResult[timestamp].type = "spawn"
								macrosResult[timestamp].tower = args[2].Name
								macrosResult[timestamp].spawnlocation = spawnlocation
								macrosResult[timestamp].position = args[4]

								task.defer(function() -- creates thread
									setthreadidentity(8)
									Library:Notify({
										Title = string.format("[%.1fs: %s] Macros", secondsMacros, fileMacros.Value),
										Content = string.format(
											"RECORDED: Spawning unit '%s'",
											findUnitNameUsingUI(cloneref(UITower) :: TextButton)
										),
										Duration = 3,
									})

									-- we chaning identity in our thread (not in __namecall thread), so changing identity back is useless
								end)
							elseif spawnlocation == nil then -- upgrading unit
								macrosResult[timestamp].type = "upgrade"
								macrosResult[timestamp].tower = args[2].Name

								task.defer(function()
									setthreadidentity(8)
									Library:Notify({
										Title = string.format("[%.1fs: %s] Macros", secondsMacros, fileMacros.Value),
										Content = string.format(
											"RECORDED: Upgrading unit '%s'",
											findUnitNameUsingUI(UITower)
										),
										Duration = 3,
									})
								end)
							end
						end)
					end
					if self.Name == "ChangeUnitTargetting" then
						task.spawn(function()
							local unitPosition = args[1]:FindFirstChild("HumanoidRootPart").Position

							if args[2] == "SetTarget" then -- retargetting unit
								local target = args[3][1]

								macrosResult[timestamp] = {}
								macrosResult[timestamp].type = "target"
								macrosResult[timestamp].position = unitPosition
								macrosResult[timestamp].target = target

								task.defer(function()
									setthreadidentity(8)
									Library:Notify({
										Title = string.format("[%.1fs: %s] Macros", secondsMacros, fileMacros.Value),
										Content = string.format(
											"RECORDED: Retargetting unit '%s' to '%s'",
											args[1].Name,
											target
										),
										Duration = 3,
									})
								end)
							else -- destroying unit
								macrosResult[timestamp] = {}
								macrosResult[timestamp].type = "destroy"
								macrosResult[timestamp].position = unitPosition

								task.defer(function()
									setthreadidentity(8)
									Library:Notify({
										Title = string.format("[%.1fs: %s] Macros", secondsMacros, fileMacros.Value),
										Content = string.format("RECORDED: Destroying unit '%s'", args[1].Name),
										Duration = 3,
									})
								end)
							end
						end)
					end
				end

				return old(self, ...)
			end)
		)
	end

	macrosSection:CreateButton({
		Title = "Record macros",
		Description = "Starts recording your tower placements\nWont work on solara",
		Callback = function()
			if isMacrosRecording then
				Library:Notify({
					Title = "Macros",
					Content = string.format("Macros is already recording!"),
					Duration = 5,
				})
				return
			end
			secondsMacros = 0
			isMacrosRecording = true
			Library:Notify({ Title = "Macros", Content = "Recording macros...", Duration = 5 })
			--local lastTick = os.clock()

			task.spawn(function()
				-- TODO: make everything in RunService or else :angry: -- made!!
				local connection
				connection = RunService.Heartbeat:Connect(function(dt)
					if not isMacrosRecording then
						connection:Disconnect()
						return
					end
					secondsMacros += dt
				end)
			end)
		end,
	})

	macrosSection:CreateButton({
		Title = "Stop record macros",
		Description = "Stops recording your tower placements and saves to the file",
		Callback = function()
			if not isMacrosRecording then
				return
			end
			isMacrosRecording = false
			Library:Notify({
				Title = "Macros",
				Content = string.format("Macros recorded and saved as `%s`!", fileMacros.Value),
				Duration = 5,
			})
			--getrawmetatable(game)["__namecall"] = old

			local path = string.format("wtdhook/macroses/%s", fileMacros.Value)

			if isfile(path) then
				delfile(path)
			end
			writefile(path, string.format("return {%s}", table_to_string(macrosResult, "")))
		end,
	})

	local function internal_playMacros()
		if isMacrosPlaying then
			Library:Notify({
				Title = "Macros",
				Content = string.format("Macros is already playing.."),
				Duration = 5,
			})
			return
		end
		isMacrosPlaying = true

		Library:Notify({
			Title = "Macros",
			Content = string.format("Playing macros `%s`...", fileMacros.Value),
			Duration = 5,
		})

		local secondsMacros = 0

		local macrosStr = loadfile(string.format("wtdhook/macroses/%s", fileMacros.Value), "WTDMacros")
		local macroTable = macrosStr() :: {
			[number]: {
				type: "spawn" | "upgrade" | "target" | "destroy",
				position: Vector3,
				spawnlocation: number,
				tower: "Tower1" | "Tower2" | "Tower3" | "Tower4" | "Tower5",
				target: string,
			},
		}

		local sortedMacros = {}
		for timestamp, data in macroTable do
			table.insert(sortedMacros, { timestamp = timestamp, data = data })
		end
		table.sort(sortedMacros, function(a, b)
			return a.timestamp < b.timestamp
		end)

		local macroIndex = 1
		local connection
		connection = RunService.Heartbeat:Connect(function(dt)
			if macroIndex <= #sortedMacros then
				secondsMacros += dt

				if secondsMacros >= sortedMacros[macroIndex].timestamp then
					local macrosData = sortedMacros[macroIndex].data
					local UITower = Towers:FindFirstChild(macrosData.tower or "Tower1") :: TextButton
					local realCost = UITower:FindFirstChild("RealCost") :: NumberValue
					local upCost = UITower:FindFirstChild("UpCost") :: NumberValue

					if macrosData.type == "spawn" then
						task.defer(function()
							if CASH.Value < realCost.Value then -- would be useless if 'repeat' wont execute code atleast 1 time
								Library:Notify({
									Title = string.format("WARN [%s] Macros", fileMacros.Value),
									Content = string.format(
										"Awaiting money to place unit '%s'",
										findUnitNameUsingUI(UITower)
									),
									Duration = 5,
								})

								repeat
									RunService.Heartbeat:Wait()
								until CASH.Value >= realCost.Value
							end
							SpawnUnit:FireServer("lol", UITower, macrosData.spawnlocation, macrosData.position)
							Library:Notify({
								Title = string.format("[%s] Macros", fileMacros.Value),
								Content = string.format("Placed unit '%s'", findUnitNameUsingUI(UITower)),
								Duration = 5,
							})
						end)
					elseif macrosData.type == "upgrade" then
						task.defer(function()
							if CASH.Value < upCost.Value then
								Library:Notify({
									Title = string.format("WARN [%s] Macros", fileMacros.Value),
									Content = string.format(
										"Awaiting money to upgrade unit '%s'",
										findUnitNameUsingUI(UITower)
									),
									Duration = 5,
								})

								repeat
									RunService.Heartbeat:Wait()
								until CASH.Value >= upCost.Value
							end

							UpgradeTower:FireServer("lol", UITower)
							Library:Notify({
								Title = string.format("[%s] Macros", fileMacros.Value),
								Content = string.format("Upgraded unit '%s'", findUnitNameUsingUI(UITower)),
								Duration = 5,
							})
						end)
					elseif macrosData.type == "target" then
						local foundUnit = nil

						for i, v in BluTeamUnits:GetChildren() do
							local distance = vector.magnitude(v.HumanoidRootPart.Position - macrosData.position)

							if distance <= MAX_TARGETTING_DISTANCE then
								foundUnit = v
								break
							end
						end

						if foundUnit == nil then
							Library:Notify({
								Title = string.format("WARN [%s] Macros", fileMacros.Value),
								Content = "Couldnt find unit to retarget, ignoring",
								Duration = 5,
							})
						else
							ChangeUnitTargetting:FireServer(foundUnit, "SetTarget", { macrosData.target })

							Library:Notify({
								Title = string.format("[%s] Macros", fileMacros.Value),
								Content = string.format(
									"Retargetted unit '%s' to '%s'",
									foundUnit.Name,
									macrosData.target
								),
								Duration = 5,
							})
						end
					elseif macrosData.type == "destroy" then -- same as target
						local foundUnit = nil
						local foundUnitName: string

						for i, v in BluTeamUnits:GetChildren() do
							local distance = vector.magnitude(v.HumanoidRootPart.Position - macrosData.position)

							if distance <= MAX_TARGETTING_DISTANCE then
								foundUnit = v
								foundUnitName = v.Name
								break
							end
						end

						if foundUnit == nil then
							Library:Notify({
								Title = string.format("WARN [%s] Macros", fileMacros.Value),
								Content = "Couldnt find unit to destroy, ignoring",
								Duration = 5,
							})
						else
							ChangeUnitTargetting:FireServer(foundUnit, true)

							Library:Notify({
								Title = string.format("[%s] Macros", fileMacros.Value),
								Content = string.format("Destroyed unit '%s'", foundUnitName),
								Duration = 5,
							})
						end
					else
						Library:Notify({
							Title = string.format("WARN [%s] Macros", fileMacros.Value),
							Content = string.format("Unknown timestamp type [%s] action, ignoring", macrosData.type),
							Duration = 5,
						})
					end

					sortedMacros[macroIndex] = nil
					macroIndex += 1
				end
			else
				isMacrosPlaying = false
				Library:Notify({
					Title = string.format("[%s] Macros: Success", fileMacros.Value),
					Content = "Done! Macros file has no more instructions!!",
					Duration = 8,
				})
				connection:Disconnect()
			end
		end)
	end

	macrosSection:CreateButton({
		Title = "Play macros",
		Description = "Plays macros from selected macros\n(you cant stop it)\nShould work on solara!!",
		Callback = function()
			internal_playMacros()
		end,
	})

	if _G.autovote then
		local selectedVote: string = _G.autovote
		local toVote = "EasyVotes"

		if selectedVote == string.lower("Casual") then
			toVote = "NormalVotes"
		elseif selectedVote == string.lower("Burdensome") then
			toVote = "HardVotes"
		end

		ReplicatedStorage:FindFirstChild("VoteMap"):FireServer(toVote)
		ReplicatedStorage:FindFirstChild("VoteMap"):FireServer("StartNow")

		Library:Notify({
			Title = "Macros helper",
			Content = string.format("Auto voted for '%s' mode and started now", _G.autovote),
			Duration = 7,
		})
	end

	task.defer(function()
		if _G.autoload then
			local GameState = Lighting:FindFirstChild("GameStuff"):FindFirstChild("GameState") :: NumberValue
			--local SecondsLeft = Lighting:FindFirstChild("GameStuff"):FindFirstChild("SecondsLeft") :: NumberValue
			GameState.Changed:Wait() -- starting up
			GameState.Changed:Wait() -- mode selected
			Library:Notify({
				Title = "Macros helper",
				Content = string.format("Auto playing macros '%s'!!", _G.autoload),
				Duration = 8,
			})
			internal_playMacros()
		end
	end)

	--
	local miscSection = Tabs.Main:AddSection("Misc")
	miscSection:CreateParagraph("", { Title = "Misc section", Content = "Some misc stuff" })

	local upgkeybindsActivated = false
	local UPG_KEY_CODES = {
		[Enum.KeyCode.Z] = "Tower1",
		[Enum.KeyCode.X] = "Tower2",
		[Enum.KeyCode.C] = "Tower3",
		[Enum.KeyCode.V] = "Tower4",
		[Enum.KeyCode.B] = "Tower5",
	}

	local altHold = false

	UserInputService.InputBegan:Connect(function(input, gamepre)
		if not gamepre then
			if upgkeybindsActivated then
				local tower = UPG_KEY_CODES[input.KeyCode]
				if tower then
					UpgradeTower:FireServer("lol", Towers:FindFirstChild(tower))
				end
			end

			if input.KeyCode == Enum.KeyCode.LeftAlt then
				altHold = true
			end
		end
	end)
	UserInputService.InputEnded:Connect(function(input, gamepre)
		if not gamepre then
			if input.KeyCode == Enum.KeyCode.LeftAlt then
				altHold = false
			end
		end
	end)

	for i = 1, 5 do
		local tower = "Tower" .. tostring(i)
		local towerpath = GUI.AwesomeGUI.Towers:FindFirstChild(tower) :: TextButton
		local spawns = getsenv(towerpath.ReallyImportantScript).spawns
		print(tower, towerpath, spawns)

		local oldS
		oldS = hookfunction(spawns, function(pos)
			-- too many upvalues so i cant use those locals
			if altHold then
				repeat
					game:GetService("RunService").Heartbeat:Wait()
				until game.Players.LocalPlayer.CASH.Value >= getcallingscript().Parent.RealCost.Value and getcallingscript().Parent.Cooldown.Value <= 0
			end

			return oldS(pos)
		end)
	end

	miscSection:CreateButton({
		Title = "Toggle upgrade keybinds",
		Description = "Allows you to upgrade units with keybinds:\nZ, X, C, V, B.\n(click again to this button to deactivate/activate)",
		Callback = function()
			upgkeybindsActivated = not upgkeybindsActivated
		end,
	})

	miscSection:CreateButton({
		Title = "Show rusher path",
		Description = "Shows, how rushers gonna rush\n(may be not accurate)",
		Callback = function()
			for i, zspawn in workspace.BluTeamZombieSpawns:GetChildren() do
				task.defer(function()
					local Path = PathfindingService:CreatePath({ AgentRadius = 3 })
					Path:ComputeAsync(zspawn.Position, workspace.BluTeamUnits.BLUend.HumanoidRootPart.Position)
					local fold = Instance.new("Folder", workspace)
					fold.Name = "wtd_rush_path"
					local desiredColor = Color3.fromRGB(math.random(1, 255), math.random(1, 255), math.random(1, 255))

					for i, v in Path:GetWaypoints() do
						local part = Instance.new("Part", fold)
						part.Anchored = true
						part.CanCollide = false
						part.Position = v.Position
						part.Transparency = 0.5
						part.Size = vector.create(0.6, 0.6, 0.6)
						part.Color = desiredColor
					end
				end)
			end
		end,
	})
end
