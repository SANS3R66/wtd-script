local osclockBefore = os.clock()
local LibrarySrc =
	game:HttpGetAsync("https://github.com/ActualMasterOogway/Fluent-Renewed/releases/latest/download/Fluent.luau")
LibrarySrc = loadstring(LibrarySrc)
local Library: FluentUI
Library = LibrarySrc() :: FluentUI
print("took " .. os.clock() - osclockBefore .. "s to load Fluent Renewed library..")
osclockBefore = os.clock()

local ReplicatedStorage = game:GetService("ReplicatedStorage") :: ReplicatedStorage
local Lighting = game:GetService("Lighting") :: Lighting
local Debris = game:GetService("Debris") :: Debris

local LPlayer = (game:GetService("Players") :: Players).LocalPlayer
local Character = LPlayer.Character :: Model
local HRoot = Character:FindFirstChild("HumanoidRootPart") :: Part
local _GUI = LPlayer.PlayerGui :: PlayerGui
local FX = ReplicatedStorage.Folder.FX :: RemoteEvent

local selectedIcon

local Window = Library:CreateWindow({
	Title = "WTDhook: Archive: Lobby",
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
	Tabs.Main:CreateButton({
		Title = "No blur",
		Description = "Removes really bad blur at 8+ graphics",
		Callback = function()
			for i, v in Lighting:GetChildren() do
				if v.Name == "DepthOfField" then
					v:Destroy()
				end
			end
		end,
	})
end

-- fun tab
do
	do
		local section = Tabs.Fun:AddSection("Vent")

		section:CreateButton({
			Title = "Teleport to the vent",
			Callback = function()
				HRoot.CFrame = CFrame.new(1347.62646484375, -78.74113464355469, 275.0109558105469)
			end,
		})

		section:CreateButton({
			Title = "Blow up the vent",
			Description = "Re-implemented from decompilation\nVentbars will explode automatically from server if you have or have more than 50(?) trophies\nThis is local obv",
			Callback = function()
				local openthing = workspace:FindFirstChild("OpenThing") :: Part
				if workspace:FindFirstChild("VentBars") then
					(workspace:FindFirstChild("VentBars") :: UnionOperation):Destroy()
				end
				local v3 = Instance.new("Sound")
				v3.Pitch = 1
				v3.Volume = 2.5
				v3.SoundId = "rbxassetid://3995434918"
				v3.Parent = openthing
				v3:Play()
				Debris:AddItem(v3, 3.2)
				local v4 = Instance.new("Explosion")
				v4.Position = openthing.Position
				v4.BlastRadius = 0
				v4.Parent = workspace
				Debris:AddItem(v4, 1)
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
		local section = Tabs.Local:AddSection("Leaderboard icons")

		local leaderboardicon = section:CreateDropdown("boardicon", {
			Title = "Leaderboard icon replacement method",
			Description = "Select leaderboard icon replacement method",
			Values = { "Asiluga", "Babygoo25", "Realsayon1", "VIP", "No icon" },
		})
		leaderboardicon:SetValue("No icon")

		local boardiconinput = section:CreateInput("", {
			Title = "Custom icon ID",
			Description = "You need to input ONLY numbSers!",
			Default = "",
			Placeholder = "11971577760",
			Numeric = true,
			Finished = false,
			Callback = function() end,
		})

		section:CreateButton({
			Title = "Set leaderboard icon",
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

				local success, response = pcall(function()
					local targetfunc = getsenv(LPlayer.PlayerGui.board.Leaderboard).RegenPlayers :: () -> ();
					(debug.getupvalue(targetfunc, 1) :: { [string]: string })[LPlayer.Name] = selectedIcon
					targetfunc()
				end)

				if not success then
					Library:Notify({ Title = "Board icon: Error", Content = response, Duration = 8 })
				end
			end,
		})
	end

	do
		local section = Tabs.Local:AddSection("Trash bag")
		local trashbagColors = section:CreateDropdown("", {
			Title = "Trash bag color",
			Description = "Warning: diamond trash bag will destroy proximity prompt!!",
			Values = { "Gold", "Diamond" },
		})
		trashbagColors:SetValue("Gold")

		section:CreateButton({
			Title = "Change trash bag color",
			Callback = function()
				firesignal(FX.OnClientEvent, "Gold", trashbagColors.Value == "Gold" and "Gold" or "Diamond")
			end,
		})
	end
end

Window:SelectTab(3)

print("took " .. os.clock() - osclockBefore .. "s to load main script! done!")
