--!native
--!optimize 2

type WTDTagTableTag = {
	ID: number,
	tagName: string,
	tagDescription: string,
}

-- for no types error
local osclockBefore = os.clock()
local LibrarySrc =
	game:HttpGetAsync("https://github.com/ActualMasterOogway/Fluent-Renewed/releases/latest/download/Fluent.luau")
LibrarySrc = loadstring(LibrarySrc)
local Library: FluentUI
Library = LibrarySrc() :: FluentUI
print("took " .. os.clock() - osclockBefore .. "s to load Fluent Renewed library..")

osclockBefore = os.clock()

local TeleportService = game:GetService("TeleportService") :: TeleportService
local ReplicatedStorage = game:GetService("ReplicatedStorage") :: ReplicatedStorage
local Lighting = game:GetService("Lighting") :: Lighting

-- using pcall for no solara errors :money_mouth:
local _, GUI_Module = pcall(function()
	return require(ReplicatedStorage:FindFirstChild("GUI_Module") :: ModuleScript)
end)
local _, TimeModule = pcall(function()
	return require(workspace:FindFirstChild("TimeModule") :: ModuleScript)
end)
local _, MapsModule = pcall(function()
	return require(workspace:FindFirstChild("Module") :: ModuleScript)
end)
local LPlayer = (game:GetService("Players") :: Players).LocalPlayer
local GUI = LPlayer.PlayerGui :: PlayerGui
local BoardSubFrame = GUI.board.LeaderBoardFrame.ListFrame.BottomFrame.SubFrame :: Frame

local FXRemote = ReplicatedStorage.Folder.FX :: RemoteEvent
local TeleportRemote = ReplicatedStorage.TeleportRemote :: RemoteEvent

local placesIDs = { ["testerLobby"] = 756609063 } :: { [string]: number }

local selectedIcon = ""

local WTDVersion = workspace:GetAttribute("Update_Number") :: string
local scriptVersion = "1.13"

local function updateImagelabelBoardIcon()
	for _, v in BoardSubFrame:GetChildren() do
		if v.Name == "b" then
			if (v:FindFirstChild("TitleFrame"):FindFirstChild("Title") :: TextLabel).Text == LPlayer.DisplayName then
				(v:FindFirstChild("BCLabel") :: ImageLabel).Image = selectedIcon
			end
		end
	end
end

local isStartedConnectBoard = false
local function startConnectBoard()
	if isStartedConnectBoard then
		return
	end
	isStartedConnectBoard = true
	BoardSubFrame.ChildAdded:Connect(function()
		updateImagelabelBoardIcon() -- FIXME: dont need to go for every single child when another one added :sob: (solara users dont worth to fix it!)
	end)
end

local Window = Library:CreateWindow({
	Title = "WTDhook: Lobby",
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

	Fun = Window:CreateTab({
		Title = "Fun",
		Icon = "hand-metal",
	}),

	Local = Window:CreateTab({
		Title = "Locally",
		Icon = "cloud-off",
	}),
}

-- main tab
do
	local isUpdatedText = "❌ script is NOT updated for this version; requires v" .. scriptVersion
	if WTDVersion == scriptVersion then
		isUpdatedText = "✅ script is updated for this version!"
	end
	local seasonText = "🍂 current season: ???"
	if TimeModule ~= nil then
		seasonText = "🍂 current season: " .. TimeModule.GetSeason()
	end
	Tabs.Main:CreateParagraph(
		"",
		{
			Title = "🏠 World Tower Defense",
			Content = string.format("v%s\n\n%s\n\n%s", WTDVersion, seasonText, isUpdatedText),
		}
	)

	Tabs.Main:CreateButton({
		Title = "🌀 No blur",
		Description = "Removes really bad blur at 8+ graphics",
		Callback = function()
			for i, v in Lighting:GetChildren() do
				if v.Name == "DepthOfField" then
					v:Destroy()
				end
			end
		end,
	})

	Tabs.Main:CreateButton({
		Title = "❄️ No snow",
		Description = "REMOVE SNOW FOR +999 FPS 🔥🔥🔥🗣️🗣️🗣️\nDoesn't increase performance by the way..",
		Callback = function()
			-- still (water) rain for some reason; babygoo is lazy :sob:
			local pRain = workspace:FindFirstChild("pRain") :: Part
			local Rains = workspace:FindFirstChild("rains") :: Folder
			if pRain then
				pRain:Destroy()
			end
			if Rains then
				Rains:Destroy()
			end
		end,
	})
end

-- fun tab
do
	local testerSectionButtons = Tabs.Fun:AddSection("Tester")

	local testerButtonsToggle = testerSectionButtons:CreateToggle(
		"",
		{ Title = "🧪 Show tester buttons", Description = "They dont do anything anyways..", Default = false }
	)
	testerButtonsToggle:OnChanged(function()
		GUI.AwesomeGUI.SettingsThing.Frame.Tester_Menu.Visible = not GUI.AwesomeGUI.SettingsThing.Frame.Tester_Menu.Visible
	end)

	testerSectionButtons:CreateButton({
		Title = "🌀 Teleport to the testing lobby",
		Description = "haha get scammed!!",
		Callback = function()
			TeleportService:Teleport(placesIDs.testerLobby)
		end,
	})

	local miscSection = Tabs.Fun:AddSection("Misc")
	miscSection:CreateButton({
		Title = "🕵️ Show hidden menus in 'menu'",
		Description = "",
		Callback = function()
			for i, v in LPlayer.PlayerGui.AwesomeGUI.Shop.ImageLabel.ScrollingFrame:GetChildren() do
				if v.Name == "Base" then
					v.Visible = true
				end
			end
		end,
	})

	miscSection:CreateButton({
		Title = "🏢 Show every campaign",
		Description = "",
		Callback = function()
			for i, v in LPlayer.PlayerGui.AwesomeGUI.Shop.ChallengeArray.Array2:GetChildren() do
				if v.Name == "Stage" then
					v.Visible = true
				end
			end
		end,
	})

	local campaignidInput = miscSection:CreateInput("", {
		Title = "📝 Campaign",
		Description = "",
		Default = "",
		Placeholder = "201",
		Numeric = true,
		Finished = false,
		Callback = function() end,
	})
	miscSection:CreateButton({
		Title = "🎮 Play this campaign ID",
		Description = "",
		Callback = function()
			if campaignidInput.Value == "" then
				Library:Notify({ Title = "retarded", Content = "input campaign id..", Duration = 5 })
				return
			end

			(ReplicatedStorage.AccessoryHandle :: RemoteEvent):FireServer(
				"PlayChallenge",
				tonumber(campaignidInput.Value)
			)
		end,
	})

	do
		local section = Tabs.Fun:AddSection("Teleporter")

		section:CreateButton({
			Title = "🌍 Select random map",
			Callback = function()
				if MapsModule ~= nil then
					local randomMap = MapsModule.MapsEasyT[math.random(1, #MapsModule.MapsEasyT)]
					TeleportRemote:FireServer("SetMap", { randomMap })
				end
			end,
		})
	end
end

-- local tab
do
	Tabs.Local:CreateParagraph("", {
		Title = "⚠️ WARNING ⚠️",
		Content = "This is a local tab.\nOnly ⚠️ YOU ⚠️ will see changes made here!",
		TitleAlignment = "Middle",
		ContentAlignment = Enum.TextXAlignment.Center,
	})

	do
		local leaderboardSectionIcon = Tabs.Local:AddSection("Leaderboard")

		local leaderboardmethod = leaderboardSectionIcon:CreateDropdown("boardmethod", {
			Title = "🔍 Leaderboard icon replacement method",
			Description = "Select leaderboard icon replacement method",
			Values = { "good", "retarded" },
		})
		leaderboardmethod:SetValue("good")

		leaderboardSectionIcon:CreateParagraph("", {
			Title = "Methods",
			Content = "👍 good - Use this method because its not retarded. Only if this executor supports getsenv and debug.getupvalue \n\n🤪 retarded - Using shitty ass method via replacing icon in ImageLabel. Use this if you use something like solara. \n\nRetarded method will overwrite good method",
			TitleAlignment = "Middle",
			ContentAlignment = Enum.TextXAlignment.Center,
		})

		local leaderboardicon = leaderboardSectionIcon:CreateDropdown("boardicon", {
			Title = "🖼️ Leaderboard icon",
			Description = "Select leaderboard icon replacement method",
			Values = { "Asiluga", "Babygoo25", "Realsayon1", "VIP", "No icon" },
		})
		leaderboardicon:SetValue("No icon")

		local boardiconinput = leaderboardSectionIcon:CreateInput("", {
			Title = "🆔 Custom icon ID",
			Description = "You need to input ONLY numbers!",
			Default = "",
			Placeholder = "11971577760",
			Numeric = true,
			Finished = false,
			Callback = function() end,
		})

		leaderboardSectionIcon:CreateButton({
			Title = "🏆 Set leaderboard icon",
			Description = "",
			Callback = function()
				local iconPrompts = {
					["Asiluga"] = "rbxassetid://9840325624",
					["Babygoo25"] = "rbxassetid://2998647800",
					["Realsayon1"] = "rbxassetid://9840323740",
					["VIP"] = "rbxassetid://11919061440",
				}

				if boardiconinput.Value == "" then
					selectedIcon = iconPrompts[leaderboardicon.Value] or ""
				else
					selectedIcon = "rbxassetid://" .. boardiconinput.Value
				end

				if leaderboardmethod.Value == "good" then
					local success, response = pcall(function()
						local targetfunc = getsenv(LPlayer.PlayerGui.board.Leaderboard).RegenPlayers :: () -> ();
						(debug.getupvalue(targetfunc, 3) :: { [number]: string })[LPlayer.UserId] = selectedIcon
						targetfunc()
					end)

					if not success then
						Library:Notify({ Title = "Board icon: Error!", Content = response, Duration = 8 })
					end
				else
					startConnectBoard()
					updateImagelabelBoardIcon()
				end
			end,
		})

		leaderboardSectionIcon:CreateToggle("", {
			Title = "🎭 Hide from board",
			Description = "Hides your userid and name from leaderboard header",
			Callback = function(state)
				if state then
					(GUI.board.LeaderBoardFrame.Header.PlayerName :: TextLabel).TextTransparency = 1;
					(GUI.board.LeaderBoardFrame.Header.User_ID :: TextLabel).TextTransparency = 1
				else
					(GUI.board.LeaderBoardFrame.Header.PlayerName :: TextLabel).TextTransparency = 0;
					(GUI.board.LeaderBoardFrame.Header.User_ID :: TextLabel).TextTransparency = 0
				end
			end,
		})
	end

	-- getting tags
	local tagsTable = {} :: { [string]: WTDTagTableTag }
	local _, tagPCallResult = pcall(function()
		for i, v in getconnections(FXRemote.OnClientEvent) do
			local value
			pcall(function()
				value = debug.getupvalue(v.Function, 2) :: { [string]: { any } }
			end)
			if value == nil then
				continue
			end
			if type(value) == "table" then
				if value["none"] ~= nil then
					-- fucking types
					for a, b in value do
						tagsTable[a] = {}
						tagsTable[a].ID = b[1]
						tagsTable[a].tagName = b[2]
						tagsTable[a].tagDescription = b[3]
					end
					break
				end
			end
		end
	end)

	do
		local section = Tabs.Local:AddSection("Trinkets")

		section:CreateButton({
			Title = "🔮 Get every single trinket",
			Description = "You will not be able to equip it\nResets after switching tabs in menu",
			Callback = newcclosure(function()
				local trinkets = {} :: { string }
				for i, _ in GUI_Module.Trinket do
					table.insert(trinkets, i)
				end

				firesignal(FXRemote.OnClientEvent, "Trinket_Data", trinkets, #trinkets, { #trinkets })
			end),
		})
	end

	-- make tags last so no flood
	local tagsSection = Tabs.Local:AddSection("Tags")
	local formatString = "🏷️ [TAG %s] %s [%d]"
	if tagsTable["none"] ~= nil then
		for i, v in tagsTable do
			tagsSection:CreateButton({
				Title = string.format(formatString, i, v.tagName, v.ID),
				Description = v.tagDescription,
				Callback = function()
					LPlayer:SetAttribute("Owned_Tag", i)
					Library:Notify({ Title = "Owned tag", Content = "now using tag " .. v.tagName, Duration = 8 })
				end,
			})
		end
	else
		tagsSection:CreateParagraph(
			"",
			{ Title = "Error..", Content = "Failed to get Tags. Error:\n" .. tagPCallResult }
		)
	end
end

Window:SelectTab(1)

print("took " .. os.clock() - osclockBefore .. "s to load main script!")
