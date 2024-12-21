--!native
--!optimize 2

type WTDTagTableTag = {
	ID: number,
	tagName: string,
	tagDescription: string,
}

-- for no types error
local LibrarySrc =
	game:HttpGetAsync("https://github.com/ActualMasterOogway/Fluent-Renewed/releases/latest/download/Fluent.luau")
LibrarySrc = loadstring(LibrarySrc)
local Library: FluentUI
Library = LibrarySrc() :: FluentUI

local LPlayer = (game:GetService("Players") :: Players).LocalPlayer
local GUI = LPlayer.PlayerGui :: PlayerGui
local BoardSubFrame = GUI.board.LeaderBoardFrame.ListFrame.BottomFrame.SubFrame :: Frame
local TeleportService = game:GetService("TeleportService") :: TeleportService
local ReplicatedStorage = game:GetService("ReplicatedStorage") :: ReplicatedStorage

local FXEvent = ReplicatedStorage.Folder.FX :: RemoteEvent

local testerButtonPaths = {
	LPlayer.PlayerGui.AwesomeGUI.SettingsThing.Frame.testerButton,
	LPlayer.PlayerGui.AwesomeGUI.SettingsThing.Frame.theButton,
	LPlayer.PlayerGui.AwesomeGUI.SettingsThing.Frame.theButton2,
} :: { TextButton }
local placesIDs = { ["testerLobby"] = 756609063 } :: { [string]: number }

local selectedIcon = ""

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
		updateImagelabelBoardIcon() -- FIXME: dont need to go for every single child when another one added :sob:
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
end

-- fun tab
do
	local testerSectionButtons = Tabs.Fun:AddSection("Tester")

	local testerButtonsToggle = testerSectionButtons:CreateToggle(
		"",
		{ Title = "See tester buttons", Description = "They dont do anything anyways..", Default = false }
	)
	testerButtonsToggle:OnChanged(function()
		for i, v in testerButtonPaths do
			v.Visible = testerButtonsToggle.Value
		end
	end)

	testerSectionButtons:CreateButton({
		Title = "Teleport to the testing lobby",
		Description = "haha get scammed!!",
		Callback = function()
			TeleportService:Teleport(placesIDs.testerLobby)
		end,
	})

	local miscSection = Tabs.Fun:AddSection("Misc")
	miscSection:CreateButton({
		Title = "Show hidden menus in 'menu'",
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
		Title = "Show every campaign",
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
		Title = "Campaign",
		Description = "",
		Default = "",
		Placeholder = "201",
		Numeric = true,
		Finished = false,
		Callback = function() end,
	})
	miscSection:CreateButton({
		Title = "Play",
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
end

-- local tab
do
	Tabs.Local:CreateParagraph("", {
		Title = "⚠️ WARNING ⚠️",
		Content = "This is a local tab.\nOnly ⚠️ YOU ⚠️ will see changes made here!",
		TitleAlignment = "Middle",
		ContentAlignment = Enum.TextXAlignment.Center,
	})

	local leaderboardSectionIcon = Tabs.Local:AddSection("Leaderboard icons")

	local leaderboardmethod = leaderboardSectionIcon:CreateDropdown("boardmethod", {
		Title = "Leaderboard icon replacement method",
		Description = "Select leaderboard icon replacement method",
		Values = { "good", "retarded" },
	})
	leaderboardmethod:SetValue("good")

	leaderboardSectionIcon:CreateParagraph("", {
		Title = "Methods",
		Content = "good - Use this method because its not retarded. Only if this executor supports getsenv and debug.getupvalue \n\nretarded - Using shitty ass method via replacing icon in ImageLabel. Use this if you use something like solara \n\nDONT use both methods in one time...",
		TitleAlignment = "Middle",
		ContentAlignment = Enum.TextXAlignment.Center,
	})

	local leaderboardicon = leaderboardSectionIcon:CreateDropdown("boardicon", {
		Title = "Leaderboard icon replacement method",
		Description = "Select leaderboard icon replacement method",
		Values = { "Asiluga", "Babygoo25", "Realsayon1", "VIP", "No icon" },
	})
	leaderboardicon:SetValue("No icon")

	local boardiconinput = leaderboardSectionIcon:CreateInput("", {
		Title = "Custom icon ID",
		Description = "You need to input ONLY numbers!",
		Default = "",
		Placeholder = "11971577760",
		Numeric = true,
		Finished = false,
		Callback = function() end,
	})

	leaderboardSectionIcon:CreateButton({
		Title = "Set leaderboard icon",
		Description = "",
		Callback = function()
			--[[if leaderboardmethod.Value == "retarded" then
				Library:Notify({ Title = "sorry", Content = "Retarded method is not avaliable.", Duration = 5 })
				return
			end]]

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

	-- getting tags
	local tagsTable = {} :: { [string]: WTDTagTableTag }
	local _, tagPCallResult = pcall(function()
		for i, v in getconnections(FXEvent.OnClientEvent) do
			local value = debug.getupvalue(v.Function, 2) :: { [string]: {any} }
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

	-- make tags last so no flood
	local tagsSection = Tabs.Local:AddSection("Tags")
	local formatString = "[TAG %s] %s [%d]"
	if tagsTable["none"] ~= nil then
		for i, v in tagsTable do
			tagsSection:CreateButton({
				Title = string.format(formatString, i, v.tagName, v.ID),
				Description = v.tagDescription,
				Callback = function()
					LPlayer:SetAttribute("Owned_Tag", i)
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
