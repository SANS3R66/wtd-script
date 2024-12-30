--!native
--!optimize 2

makefolder("wtdhook")
makefolder("wtdhook/macroses")

-- im not gonna make an interpretation so just lua table
local function table_to_string(t: { any }, indent: string): string
	local lines = {}
	for k, v in pairs(t) do
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

local LibrarySrc =
	game:HttpGetAsync("https://github.com/ActualMasterOogway/Fluent-Renewed/releases/latest/download/Fluent.luau")
LibrarySrc = loadstring(LibrarySrc)
local Library: FluentUI
if LibrarySrc ~= nil then
	Library = LibrarySrc() :: FluentUI
end

local LPlayer = (game:GetService("Players") :: Players).LocalPlayer
local GUI = LPlayer.PlayerGui :: PlayerGui
local Towers = GUI.AwesomeGUI.Towers :: Frame
local ReplicatedStorage = game:GetService("ReplicatedStorage") :: ReplicatedStorage
local SpawnUnit = ReplicatedStorage:FindFirstChild("SpawnUnit") :: RemoteEvent
local UpgradeTower = ReplicatedStorage:FindFirstChild("UpgradeTower") :: RemoteEvent

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

--[[ -- TODO: upgrades
local args = {
    [1] = "lol",
    [2] = game:GetService("Players").LocalPlayer:WaitForChild("Tower1")
}

game:GetService("ReplicatedStorage"):WaitForChild("UpgradeTower"):FireServer(unpack(args))
]]

-- main tab
do
	-- TODO: make macros more stable
	-- TODO: make macros record and play restart game
	-- TODO: make macros record and play unit targetting (veri important!!!)
	-- TODO: make macros record and play mode selection and start now (auto farm??)

	local macrosSection = Tabs.Main:AddSection("Macros")
	macrosSection:CreateParagraph("", { Title = "Macros section", Content = "Allows you to play or record macros" })
	local fileMacros = macrosSection:CreateInput("", { Title = "Macros file name", Default = "macros.lua" })

	local isMacrosRecording = false
	local isMacrosPlaying = false
	local secondsMacros = 0
	local macrosResult = {}
	local mt = getrawmetatable(game)
	setreadonly(mt, false)
	local old
	old = hookmetamethod(game, "__namecall", function(Self, ...)
		local args = { ... }
		local method = getnamecallmethod()
		if method == "FireServer" and isMacrosRecording then
			if args[1] == "lol" then
				task.spawn(function()
					local timestamp = secondsMacros
					macrosResult[timestamp] = {}
					local UITower = Towers:FindFirstChild(args[2].Name) :: TextButton
					local spawnlocation = args[3]
					if type(spawnlocation) == "number" then
						macrosResult[timestamp].type = "spawn"
						macrosResult[timestamp].tower = args[2].Name
						macrosResult[timestamp].spawnlocation = spawnlocation
						macrosResult[timestamp].position = args[4]

						Library:Notify({
							Title = string.format("[%s] Macros", fileMacros.Value),
							Content = string.format(
								"RECORDED: Spawning unit %s",
								findUnitNameUsingUI(cloneref(UITower) :: TextButton)
							),
							Duration = 3,
						})

						print("detected 5")
					elseif spawnlocation == nil then
						macrosResult[timestamp].type = "upgrade"
						macrosResult[timestamp].tower = args[2].Name
						Library:Notify({
							Title = string.format("[%s] Macros", fileMacros.Value),
							Content = string.format("RECORDED: Upgrading unit %s", findUnitNameUsingUI(UITower)),
							Duration = 3,
						})
					end
				end)
			end
		end

		return old(Self, ...)
	end)

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
			local lastTick = os.clock()

			task.spawn(function()
				-- TODO: make everything in RunService or else :angry:
				while task.wait() do -- task.wait() is "If no duration is given the duration will default to zero meaning the thread will automatically resume on the next step."
					if not isMacrosRecording then
						break
					end

					local dt = os.clock() - lastTick
					secondsMacros += dt

					lastTick = os.clock()
				end
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

			writefile(
				string.format("wtdhook/macroses/%s", fileMacros.Value),
				string.format("return {%s}", table_to_string(macrosResult, ""))
			)
		end,
	})

	macrosSection:CreateButton({
		Title = "Play macros",
		Description = "Plays macros from selected macros\nShould work on solara!!",
		Callback = function()
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

			local lastTick = os.clock()
			local secondsMacros = 0

			local macrosStr = loadfile(string.format("wtdhook/macroses/%s", fileMacros.Value), "WTDMacros")
			local macroTable = macrosStr() :: {
				[number]: {
					type: "spawn" | "upgrade",
					position: Vector3,
					spawnlocation: number,
					tower: "Tower1" | "Tower2" | "Tower3" | "Tower4" | "Tower5",
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
			while macroIndex <= #sortedMacros do
				local dt = os.clock() - lastTick
				secondsMacros += dt
				lastTick = os.clock()

				if secondsMacros >= sortedMacros[macroIndex].timestamp then
					local macrosData = sortedMacros[macroIndex].data
					local UITower = Towers:FindFirstChild(macrosData.tower) :: TextButton

					if macrosData.type == "spawn" then
						SpawnUnit:FireServer("lol", UITower, macrosData.spawnlocation, macrosData.position)
						Library:Notify({
							Title = string.format("[%s] Macros", fileMacros.Value),
							Content = string.format("Placed unit %s", findUnitNameUsingUI(UITower)),
							Duration = 3,
						})
					elseif macrosData.type == "upgrade" then
						UpgradeTower:FireServer("lol", UITower)
						Library:Notify({
							Title = string.format("[%s] Macros", fileMacros.Value),
							Content = string.format("Upgraded unit %s", findUnitNameUsingUI(UITower)),
							Duration = 3,
						})
					else
						Library:Notify({
							Title = string.format("[%s] Macros", fileMacros.Value),
							Content = string.format("Unknown timestamp type [%s] action, ignoring", macrosData.type),
							Duration = 5,
						})
					end
					sortedMacros[macroIndex] = nil
					macroIndex += 1
				end

				task.wait()
			end

			isMacrosPlaying = false
		end,
	})
end
