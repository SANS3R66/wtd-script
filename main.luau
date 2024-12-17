-- for no types error
local LibrarySrc =
	game:HttpGetAsync("https://github.com/ActualMasterOogway/Fluent-Renewed/releases/latest/download/Fluent.luau")
LibrarySrc = loadstring(LibrarySrc)
local Library: FluentUI
if LibrarySrc ~= nil then
	Library = LibrarySrc() :: FluentUI
end

local LPlayer = (game:GetService("Players") :: Players).LocalPlayer
local TeleportService = game:GetService("TeleportService")
local ReplicatedStorage = game:GetService("ReplicatedStorage") :: ReplicatedStorage

local testerButtonPaths = {
	LPlayer.PlayerGui.AwesomeGUI.SettingsThing.Frame.testerButton,
	LPlayer.PlayerGui.AwesomeGUI.SettingsThing.Frame.theButton,
	LPlayer.PlayerGui.AwesomeGUI.SettingsThing.Frame.theButton2,
}
local placesIDs = { ["testerLobby"] = 756609063 }

local Window = Library:CreateWindow({
	Title = "wetede script!",
	SubTitle = "Fluent UI Library: Renewed!!!!1",
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
		Values = { "Asiluga", "Babygoo25", "Realsayon1", "No icon" },
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
			if leaderboardmethod.Value == "retarded" then
				Library:Notify({ Title = "sorry", Content = "Retarded method is not avaliable.", Duration = 5 })
				return
			end

			--if leaderboardicon.Value == nil then Library:Notify{Title = "retarded", Content = "Select icon..", Duration = 5} return end

			local iconPrompts = {
				["Asiluga"] = "rbxassetid://9840325624",
				["Babygoo25"] = "rbxassetid://2998647800",
				["Realsayon1"] = "rbxassetid://9840323740",
			}

			local success, response = pcall(function()
				local targetfunc = getsenv(LPlayer.PlayerGui.board.Leaderboard).RegenPlayers :: () -> ()
				local newiconValue
				if boardiconinput.Value == "" then
					newiconValue = iconPrompts[leaderboardicon.Value]
				else
					print(boardiconinput.Value)
					newiconValue = "rbxassetid://" .. boardiconinput.Value
				end
				(debug.getupvalue(targetfunc, 3) :: { [number]: string })[LPlayer.UserId] = newiconValue
				targetfunc()
			end)

			if not success then
				Library:Notify({ Title = "Board icon: Error!", Content = response, Duration = 8 })
			end
		end,
	})
end
