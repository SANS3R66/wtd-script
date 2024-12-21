-- Decompiler will be improved soon!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2024-12-21 07:21:36
-- Luau version 6, Types version 3
-- Time taken: 0.399163 seconds

local longstring1 = "Character is slowed down and effected by status effects for longer. Other negative effects may be present depending on Mudsplatter's rank."
local longstring2 = "Character is slowed down 10% and receiving 2 damage every second. Effects are stackable.\n If 'Frozen' is applied to this character, this effect disappears.\n This effect disappears faster while it is raining."
local longstring3 = "Activated Ability: When used while in Mortar's range, Mortar's range will be centered around your position & stay there.\n When used again, switches back to normal."
local module_upvr = {
	Invalid = {
		Recon = true;
		Assassin = true;
		Swordfighter = true;
		Juggernaut = true;
		Dissolver = true;
		Engineer = true;
		Barrager = true;
		Moving = true;
		Noobfighter = true;
		Ninja = true;
		Brawler = true;
		Tazer = true;
		Chesspiece = true;
		Template = true;
		Aviator = true;
		Mecha = true;
		Artificer = true;
		Wrecker = true;
		Pumpkin = true;
		Striker = true;
		Blademaster = true;
		Dancer = true;
	};
	Boots = {
		Bunny = "Moving";
		Outlaw = "Moving";
		Ignitor = "Moving";
		Cryomancer = "Moving";
		Soldier = "Moving";
		Destructor = "Moving";
		Sniper = "Moving";
		Mudsplatter = "Moving";
		Farmer = "Moving";
		Lookout = "Moving";
		Glazier = "Moving";
		Blockbuster = "Moving";
		Reaper = "Moving";
		Guerrilla = "Moving";
		Demoman = "Moving";
		Rifler = "Moving";
		Sargeant = "Moving";
		Verglasar = "Moving";
		Agent = "Moving";
		Airstrike = "Moving";
		Eradicator = "Moving";
		Saboteur = "Moving";
		General = "Moving";
		Medic = "Moving";
		Operative = "Moving";
		Turreter = "Moving";
		Kindler = "Moving";
		Agronomist = "Moving";
		Constructor = "Moving";
		Ruler = "Moving";
		Enchantress = "Moving";
		Snowman = "Moving";
		Trapper = "Moving";
		Valkyrie = "Moving";
		Converter = "Moving";
		Gasoliner = "Moving";
		Cosmonaut = "Moving";
		Chainsaw = "Moving";
	};
	ClassicCaps = {};
	ScarfUnits = {
		Recon = "Nonmoving";
		Tazer = "Nonmoving";
		Mecha = "Nonmoving";
		Dissolver = "Nonmoving";
		Barrager = "Nonmoving";
		Engineer = "Nonmoving";
		Wrecker = "Nonmoving";
		Artificer = "Nonmoving";
	};
	ScarfMeleeUnits = {
		Brawler = "Melee";
		Ninja = "Melee";
		Assassin = "Melee";
		Noobfighter = "Melee";
		Swordfighter = "Melee";
		Juggernaut = "Melee";
		Pumpkin = "Melee";
		Striker = "Melee";
	};
	AlwaysValid = {
		Recon = true;
		Tazer = true;
		Bank = true;
		Radar = true;
		SWAT = true;
		Blaster = true;
		Toxicator = true;
		Incendiarier = true;
		Spawner = true;
		Reserve = true;
		Watchtower = true;
		Factory = true;
		Mortar = true;
		Beacon = true;
		Sentry = true;
	};
	NoMoving = {
		Plains = true;
		Fields = true;
		Pyramid = true;
		["Toxic Sewers"] = true;
	};
	AllMoving = {
		Crescentant = true;
		Japan = true;
		Grassland = true;
		Jungle = true;
		["Blazing Wasteland"] = true;
	};
	NoIceMaps = {};
	NoIceUnits = {
		Cryomancer = true;
		Glazier = true;
		Verglasar = true;
		Snowman = true;
	};
	AltUnit = {
		Sargeant = true;
		Incendiarier = true;
		Verglasar = true;
		Watchtower = true;
		Agronomist = true;
		Agent = true;
		Artificer = true;
		Eradicator = true;
		Wrecker = true;
		Kindler = true;
		Reserve = true;
		Spawner = true;
	};
	AltUnitBanned = {
		Industry = true;
	};
	TDMaps = {
		Typical = true;
	};
	InvalidForFirerate = {
		Assassin = true;
		Swordfighter = true;
		Noobfighter = true;
		Farmer = true;
		Ninja = true;
		Brawler = true;
		Striker = true;
	};
	BannedArduous = {
		SWAT = true;
		Tazer = true;
	};
	ArduousMaps = {
		["Tainted Desert"] = true;
		["Ruined Warehouse"] = true;
		Fracturedlands = true;
		["Ghost Town"] = true;
		["Fated Plate"] = true;
		["Eruption Site"] = true;
		["Blazing Wasteland"] = true;
		["Destroyed Remnant"] = true;
		["Demolished Depot"] = true;
	};
	HardMaps = {"Chessboard", "Painlands", "Station", "Twofold", "Crossroads", "Volcano", "Graveyard", "Powerhouse", "Everfrost", "Seasonal"};
	PVPMaps = {"Wastelands", "Battleplate", "Battlehouse", "Glacier"};
	StormMaps = {"Remnant", "Blizzard", "Glacier", "Spiral", "Destroyed Remnant"};
	Explosive_Banned = {"Hideout"};
	Money_Banned = {"Fated Plate"};
	Token_Banned = {"The Moon"};
	Blade_Colors = {{Color3.fromRGB(117, 117, 117), Color3.fromRGB(175, 175, 175)}, {Color3.fromRGB(134, 37, 37), Color3.fromRGB(230, 93, 93)}, {Color3.fromRGB(218, 125, 59), Color3.fromRGB(254, 191, 128)}, {Color3.fromRGB(112, 218, 59), Color3.fromRGB(191, 254, 128)}, {Color3.fromRGB(59, 112, 218), Color3.fromRGB(128, 191, 254)}, {Color3.fromRGB(112, 59, 218), Color3.fromRGB(191, 128, 254)}, {Color3.fromRGB(0, 0, 0), Color3.fromRGB(254, 254, 254)}, {Color3.fromRGB(255, 255, 255), Color3.fromRGB(171, 171, 171)}, {Color3.fromRGB(132, 78, 185), Color3.fromRGB(132, 78, 185)}, {Color3.fromRGB(218, 59, 205), Color3.fromRGB(254, 128, 223)}, {Color3.fromRGB(134, 87, 55), Color3.fromRGB(188, 121, 76)}, {Color3.fromRGB(218, 191, 59), Color3.fromRGB(254, 254, 128)}};
	MODIFIERS = {"RankedUp", "Minimalism", "Superhealth", "Supershield", "Limitless", "Silver", "Floating", "Floating2", "Spotless", "Randomizer", "Corruption", "none", "Randomizer2", "Math", "Granites", "Muddy", "modifier_Speed", "april", "modifier_Weather", "modifier_Money", "modifier_Life", "modifier_Info", "modifier_Light", "modifier_Undead", "modifier_Rotten", "modifier_Boom", "modifier_Double", "modifier_Time", "modifier_Half", "modifier_Sin", "modifier_Gone", "modifier_Space", "modifier_Limit", "modifier_Strong", "modifier_Weather2", "modifier_Portal", "modifier_Ice1", "modifier_Fire1", "modifier_Reverse", "modifier_Lucky", "modifier_Volume", "modifier_Angel", "modifier_Ghost", "modifier_Arduous", "modifier_Visual", "modifier_99999", "modifier_00000", "modifier_Slot", "modifier_Battle"};
	MODIFIER_REWARDS = {
		RankedUp = {2, 1, 2};
		Minimalism = {1, 0.5};
		Superhealth = {0.2};
		Supershield = {0.3};
		Limitless = {-999};
		Silver = {0.25};
		Floating = {0.35};
		Floating2 = {0.6};
		Spotless = {2, 0.5};
		Randomizer = {-999};
		Corruption = {-999};
		none = {-999};
		Randomizer2 = {-999};
		Math = {-999};
		Granites = {0.45};
		Muddy = {0.45};
		modifier_Speed = {1.25, 0.25};
		april = {-999};
		modifier_Weather = {0.15};
		modifier_Money = {0.6, 0.2};
		modifier_Life = {0.5, 0.1};
		modifier_Info = {0.5, 0.25, 0.25};
		modifier_Light = {0.15};
		modifier_Undead = {1.25, 1, 0.5};
		modifier_Rotten = {1, 0.5, 0.5};
		modifier_Boom = {0.15};
		modifier_Double = {1.5, 0.75, 0.75};
		modifier_Time = {2, 2.5};
		modifier_Sin = {2.5, 2, 2};
		modifier_Gone = {1.75, nil, 1.75};
		modifier_Space = {0.6, nil, 0.5};
		modifier_Limit = {0.5};
		modifier_Strong = {1.5, 0.5, 0.5};
		modifier_Weather2 = {1};
		modifier_Portal = {0.25, nil, 0.25};
		modifier_Ice1 = {0.4, nil, 0.2};
		modifier_Fire1 = {0.5, 0.3};
		modifier_Reverse = {-999};
		modifier_Lucky = {3.77, 0.77, 3.77};
		modifier_Volume = {0.0001};
		modifier_Visual = {0.0001};
		modifier_Angel = {0.4, nil, 0.4};
		modifier_Ghost = {0.6, 0.3, 0.3};
		modifier_Arduous = {-999};
		modifier_99999 = {0.2, 0.2, 0.2};
		modifier_00000 = {-999};
		modifier_Slot = {0.2, nil, 0.35};
		modifier_Battle = {-999};
	};
	MODIFIERS_BADGE = {"RankedUp", "Minimalism", "Superhealth", "Supershield", "Silver", "Floating", "Floating2", "Spotless", "Granites", "Muddy", "modifier_Speed", "modifier_Weather", "modifier_Money", "modifier_Life", "modifier_Info", "modifier_Light", "modifier_Undead", "modifier_Rotten", "modifier_Boom", "modifier_Double", "modifier_Time", "modifier_Light", "modifier_Gone", "modifier_Space", "modifier_Limit", "modifier_Strong", "modifier_Weather2", "modifier_Portal", "modifier_Ice1", "modifier_Fire1", "modifier_Ghost", "modifier_99999", "modifier_Slot"};
	mode_names = {"SVâ€”Casual", "SVâ€”Campaign", "SVâ€”Arduous", "SVâ€”Treacherous", "PVPâ€”Default"};
	unitsCREDS = {"Soldier", "Sniper", "Demoman", "Cryomancer", "Farmer", "Businessman", "Engineer", "Destructor", "Barrager", "Ignitor", "Bank", "Brawler"};
	unitsTROPHYS = {"Assassin", "Blockbuster", "Guerrilla", "Recon", "Dissolver", "Lookout", "Saboteur", "General", "Outlaw", "Radar", "Trapper", "Valkyrie"};
	units_TOKEN = {"Airstrike", "Aviator", "Blaster", "Constructor", "Converter", "Mecha", "Ninja", "Rocker", "Singer", "Turreter", "Factory", "Blademaster"};
	unitsPVP = {"Mirror", "Chef", "Gasoliner", "Beacon", "Drafter", "Mortar"};
	units_ALL = {"Beacon", "Sentry"};
	Money_Enemies = {"Farmer?"};
	EcoUnit = {"Businessman", "Farmer", "Bank", "Agronomist", "Agent", "Reserve", "Wrecker", "Outlaw"};
	Explode_Enemies = {"Explosive", "Rusted", "Terminator", "Terminator MK II", "Pumpclops", "Overtaken Sorcerer", "Headking", "Cleanser", "Conehead?", "Conehead", "Mudhead", "Zombie Demoman"};
	ExplodeUnits = {"Aviator", "Blockbuster", "Demoman", "Destructor", "Eradicator", "Mecha", "Recon", "Incendiarier", "SWAT", "Airstrike", "Pumpkin", "Factory", "Mortar", "Constructor", "Artificer", "Engineer"};
	unitsMELEE = {"Assassin", "Verglasar", "Swordfighter", "Juggernaut", "Ninja", "Farmer", "Brawler", "Striker", "Noobfighter", "Blademaster", "Mimic", "Chainsaw", "Dancer"};
	Units_Support = {"Bank", "SWAT", "Verglasar", "Gasoliner", "Guerrilla", "General", "Radar", "Aviator", "Saboteur", "Ninja", "Ruler", "Snowman", "Enchantress", "Mudsplatter", "Chef", "Operative", "Sargeant", "Watchtower", "Incendiarier", "Eradicator", "Artificer", "Rocker"};
	Unit_Healer = {"Ruler", "Artificer", "Factory", "Medic", "Chef", "Bunny"};
	Units_Limited = {"Mecha", "Constructor"};
	LimitsList = {
		Soldier = 30;
		Tazer = 2;
		Sniper = 20;
		Demoman = 20;
		Demoman_LVL = {6, 4};
		Cryomancer = 15;
		Blockbuster = 10;
		Dissolver = 5;
		Businessman = 4;
		Guerrilla = 15;
		Guerrilla_LVL = {3, 3};
		Destructor = 6;
		Farmer = 8;
		Farmer_LVL = {6, 2};
		Engineer = 6;
		Reaper = 2;
		Recon = 5;
		Glazier = 2;
		Lookout = 10;
		Lookout_LVL = {4, 1};
		Swordfighter = 3;
		Barrager = 10;
		Turreter = 6;
		Airstrike = 2;
		Blaster = 2;
		Assassin = 5;
		Noobfighter = 10;
		Ignitor = 10;
		Saboteur = 2;
		Juggernaut = 5;
		Ninja = 3;
		SWAT = 1;
		Bank = 2;
		Brawler = 20;
		Chesspiece = 4;
		Aviator = 5;
		Medic = 3;
		Pulsar = 5;
		Constructor = 2;
		Mudsplatter = 4;
		General = 1;
		Rocker = 1;
		Rifler = 4;
		Enchantress = 3;
		Mecha = 2;
		Sargeant = 10;
		Watchtower = 4;
		Incendiarier = 3;
		Verglasar = 8;
		Agronomist = 3;
		Agent = 3;
		Cowboy = 5;
		Artificer = 2;
		Eradicator = 2;
		Wrecker = 3;
		Kindler = 1;
		Mirror = 2;
		Chef = 1;
		Operative = 1;
		Pumpkin = 4;
		Spawner = 1;
		Reserve = 1;
		Snowman = 4;
		Toxicator = 3;
		Ruler = 1;
		Striker = 1;
		Bunny = 6;
		Bunny_LVL = {5, 1};
		Outlaw = 3;
		Radar = 1;
		Trapper = 3;
		Converter = 2;
		Singer = 1;
		Valkyrie = 2;
		Blademaster = 2;
		Factory = 1;
		Gasoliner = 3;
		Mimic = 1;
		Beacon = 4;
		Drafter = 2;
		Mortar = 6;
		Cosmonaut = 4;
		Sentry = 1;
		Sentry_LVL = {5, 1};
		Chainsaw = 2;
		Dancer = 5;
	};
	LimitsListG = {
		Soldier = 50;
		Tazer = 4;
		Sniper = 50;
		Demoman = 50;
		Demoman_LVL = {6, 8};
		Cryomancer = 30;
		Blockbuster = 20;
		Dissolver = 10;
		Businessman = 12;
		Guerrilla = 30;
		Guerrilla_LVL = {3, 9};
		Destructor = 12;
		Farmer = 50;
		Farmer_LVL = {6, 4};
		Engineer = 12;
		Reaper = 4;
		Recon = 10;
		Glazier = 4;
		Lookout = 20;
		Lookout_LVL = {4, 1};
		Swordfighter = 6;
		Barrager = 50;
		Turreter = 12;
		Airstrike = 4;
		Blaster = 4;
		Assassin = 8;
		Noobfighter = 20;
		Ignitor = 20;
		Saboteur = 4;
		Juggernaut = 10;
		Ninja = 6;
		SWAT = 2;
		Bank = 3;
		Brawler = 40;
		Chesspiece = 8;
		Aviator = 10;
		Medic = 6;
		Pulsar = 10;
		Constructor = 4;
		Mudsplatter = 8;
		General = 1;
		Rocker = 1;
		Rifler = 8;
		Enchantress = 5;
		Mecha = 3;
		Sargeant = 20;
		Watchtower = 8;
		Incendiarier = 6;
		Verglasar = 16;
		Agronomist = 6;
		Agent = 6;
		Cowboy = 10;
		Artificer = 4;
		Eradicator = 4;
		Wrecker = 5;
		Kindler = 2;
		Mirror = 4;
		Chef = 3;
		Operative = 2;
		Pumpkin = 12;
		Spawner = 1;
		Reserve = 3;
		Snowman = 6;
		Toxicator = 5;
		Ruler = 2;
		Striker = 1;
		Bunny = 12;
		Bunny_LVL = {5, 1};
		Outlaw = 6;
		Radar = 2;
		Trapper = 4;
		Converter = 3;
		Singer = 2;
		Valkyrie = 2;
		Blademaster = 3;
		Factory = 1;
		Gasoliner = 6;
		Mimic = 20;
		Beacon = 4;
		Drafter = 3;
		Mortar = 12;
		Cosmonaut = 8;
		Sentry = 2;
		Sentry_LVL = {5, 1};
		Chainsaw = 4;
		Dancer = 10;
	};
	addCom2 = {{1000, 'k'}, {1000000, 'M'}, {1000000000, 'B'}, {1000000000000, 'T'}, {1000000000000000, 'Q'}, {1000000000000000000, "Qu"}, {1e+21, 'S'}, {1e+24, "Sp"}, {1e+27, 'O'}, {1e+30, 'N'}, {1e+33, 'D'}, {1e+36, 'U'}, {1e+39, "Dd"}, {1e+42, "Td"}, {1e+45, "Qt"}, {1e+48, "Qd"}};
}
function module_upvr.addComma(arg1) -- Line 428
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var142
	for _, v in ipairs(module_upvr.addCom2) do
		if v[1] <= math.abs(arg1) then
			var142 = tostring(arg1 / v[1]):sub(1, 5)
		else
			return var142..v[2]
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return var142..v[2]
end
function module_upvr.return_Number(arg1) -- Line 440
	local var144
	repeat
		local string_gsub_result1, string_gsub_result2 = string.gsub(var144, "^(-?%d+)(%d%d%d)", "%1,%2")
		var144 = string_gsub_result1
	until string_gsub_result2 == 0
	return var144
end
function module_upvr.getRNG(arg1) -- Line 449
	local var147 = (math.ceil((workspace:GetAttribute(arg1 or "RNG") or 0) * 1.61803399) + 14387 + math.ceil(workspace.DistributedGameTime / 10)) % 100000
	workspace:SetAttribute(arg1 or "RNG", var147)
	return var147
end
function module_upvr.createSkin(arg1, arg2, arg3, arg4) -- Line 456
	for _, v_2 in ipairs(arg2:GetDescendants()) do
		if v_2:IsA("BasePart") then
			v_2.CanCollide = false
			v_2.Anchored = false
		end
	end
	for _, v_3 in ipairs(arg2[tostring(arg1)]:GetChildren()) do
		if v_3:IsA("BasePart") then
			for _, v_4 in ipairs(v_3:GetDescendants()) do
				if v_4:IsA("BasePart") then
					for i_5, _ in pairs(v_4:GetAttributes()) do
						v_4:SetAttribute(i_5, nil)
					end
					v_4:BreakJoints()
					if arg4 then
						v_4:ClearAllChildren()
					end
					local var168 = v_4.Position - v_3.Position
					v_4.CFrame = CFrame.new(arg3[v_3.Name].CFrame.Position) * CFrame.new(var168.X, var168.Y, var168.Z) * v_4.CFrame.Rotation
					local WeldConstraint_4 = Instance.new("WeldConstraint", v_4)
					WeldConstraint_4.Part0 = arg3[v_3.Name]
					WeldConstraint_4.Part1 = v_4
					v_4.Parent = arg3[v_3.Name]
					v_4.Name = arg1
					v_4:SetAttribute("Level", arg1)
					v_4:SetAttribute("LevelToDestroy", arg1 + 1)
					v_4.CollisionGroup = "Players"
				end
			end
		end
	end
end
function module_upvr.createSkin_ALT(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 469
	for _, v_6 in ipairs(arg4:GetDescendants()) do
		if v_6:IsA("BasePart") then
			v_6.CanCollide = false
			v_6.Anchored = false
		end
	end
	for _, v_7 in ipairs(arg4[tostring(arg2)..tostring(arg1)]:GetChildren()) do
		if v_7:IsA("BasePart") then
			for _, v_8 in ipairs(v_7:GetDescendants()) do
				if v_8:IsA("BasePart") then
					for i_9, _ in pairs(v_8:GetAttributes()) do
						v_8:SetAttribute(i_9, nil)
					end
					v_8:BreakJoints()
					if arg6 then
						v_8:ClearAllChildren()
					end
					local var190 = v_8.Position - v_7.Position
					v_8.CFrame = CFrame.new(arg5[v_7.Name].CFrame.Position) * CFrame.new(var190.X, var190.Y, var190.Z) * v_8.CFrame.Rotation
					local WeldConstraint = Instance.new("WeldConstraint", v_8)
					WeldConstraint.Part0 = arg5[v_7.Name]
					WeldConstraint.Part1 = v_8
					v_8.Parent = arg5[v_7.Name]
					v_8.Name = arg1
					v_8:SetAttribute("Upgrade"..tostring(arg2), arg1)
					v_8:SetAttribute("Upgrade1Destroy", arg3[1])
					v_8:SetAttribute("Upgrade2Destroy", arg3[2])
					v_8.CollisionGroup = "Players"
				end
			end
		end
	end
end
function module_upvr.Weld(arg1, arg2, arg3) -- Line 482
	for _, v_10 in ipairs(arg1:GetDescendants()) do
		if v_10:IsA("BasePart") then
			v_10.Massless = true
			v_10.CanCollide = false
			v_10.Anchored = false
			v_10.CollisionGroup = "Players"
			if arg2 then
				for _, v_11 in ipairs(v_10:GetDescendants()) do
					if v_11:IsA("WeldConstraint") or v_11:IsA("Weld") then
						v_11:Destroy()
					end
				end
			end
			if arg3 then
				for i_12, _ in pairs(v_10:GetAttributes()) do
					if not string.match(i_12, "Level") then
						v_10:SetAttribute(i_12, nil)
					end
				end
			end
			local WeldConstraint_2 = Instance.new("WeldConstraint", v_10)
			WeldConstraint_2.Part0 = arg1
			WeldConstraint_2.Part1 = v_10
		end
	end
end
function module_upvr.Invert(arg1) -- Line 491
	for _, v_13 in ipairs(arg1:GetDescendants()) do
		if v_13:IsA("BasePart") then
			v_13.Color = Color3.new(1 - v_13.Color.R, 1 - v_13.Color.G, 1 - v_13.Color.B)
		end
	end
end
function module_upvr.Bruh(arg1) -- Line 497
	local SOME_upvr = game.ReplicatedStorage["3DIcons"]:FindFirstChild(string.split(arg1.Name, ' ')[1])
	if SOME_upvr then
		for _, v_14 in ipairs(arg1:GetDescendants()) do
			local children = v_14:IsA("BasePart")
			if not children then
				children = v_14:IsA("WeldConstraint")
			end
			if children ~= true or v_14.Name == "anchor" then
				v_14:Destroy()
			end
			if v_14.Parent ~= arg1 and v_14:IsA("BasePart") then
				v_14.Massless = true
			end
			if 1 < (v_14:GetAttribute("Level") or 0) or 1 < (v_14:GetAttribute("Upgrade1") or 0) or 1 < (v_14:GetAttribute("Upgrade2") or 0) then
				v_14:Destroy()
			end
		end
		for _, v_15_upvr in ipairs(arg1:GetChildren()) do
			local _, _ = pcall(function() -- Line 501
				--[[ Upvalues[2]:
					[1]: v_15_upvr (readonly)
					[2]: SOME_upvr (readonly)
				]]
				for _, v_16 in ipairs(v_15_upvr:GetDescendants()) do
					if v_16:IsA("BasePart") then
						v_16.Massless = true
					end
				end
				v_15_upvr.Massless = false
				v_15_upvr.CFrame = SOME_upvr:FindFirstChild(v_15_upvr.Name).CFrame
			end)
		end
		SOME_upvr.anchor:Clone().Parent = arg1
		arg1.Name = string.split(arg1.Name, ' ')[1]
	end
end
function module_upvr.enemy(arg1, arg2, arg3) -- Line 513
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	for i_17, _ in pairs(arg2:GetAttributes()) do
		arg2:SetAttribute(i_17, nil)
	end
	for i_18, v_18 in pairs(arg1:GetAttributes()) do
		arg2:SetAttribute(i_18, v_18)
	end
	for _, v_19 in ipairs(arg1:GetDescendants()) do
		if v_19:IsA("Sound") or v_19:IsA("ValueBase") or v_19:IsA("BaseScript") or v_19:IsA("Animation") then
			if v_19.Parent == arg1 then
				v_19:Clone().Parent = arg2
			else
				v_19:Clone().Parent = arg2:FindFirstChild(v_19.Parent.Name)
			end
		end
	end
	for _, v_20 in ipairs(arg2:GetDescendants()) do
		for i_21, _ in pairs(v_20:GetAttributes()) do
			v_20:SetAttribute(i_21, nil)
		end
		if v_20:IsA("BasePart") then
			if v_20.Name == "HumanoidRootPart" then
				v_20.Anchored = true
				v_20.CollisionGroup = "Center"
			else
				v_20.Anchored = false
				v_20.CollisionGroup = "Players"
			end
			v_20.Massless = true
			v_20.CanCollide = false
		end
	end
	for _, v_22 in ipairs(arg2:GetChildren()) do
		if v_22:IsA("BasePart") then
			module_upvr.Weld(v_22, true)
		end
	end
	arg2:SetAttribute("ActualName", arg2.Name)
	arg1.Humanoid:Clone().Parent = arg2
	if not arg3 then
		arg2:SetAttribute("NoRand", true)
		arg2:SetAttribute("Mode", "Never")
		arg2:SetAttribute("DefenseBypass", true)
		arg2:SetAttribute("Name2", "Dummy")
		arg2:SetAttribute("KBResist", 0)
	end
end
function module_upvr.Create_Map(arg1, arg2) -- Line 537
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local Baseplate = game.ServerStorage.Maps.Baseplate
	if arg2 == "Clear" then
		for _, v_23 in ipairs(arg1:GetDescendants()) do
			if v_23:IsA("Snap") or v_23:IsA("Weld") or v_23:IsA("WeldConstraint") then
				v_23:Destroy()
			end
		end
		warn("Done!")
	else
		if arg2 == "Enemies" then
			local TheMap_4 = arg1.TheMap
			for i_47, v_44 in ipairs(TheMap_4.EnemySpawns:GetChildren()) do
				v_44.Name = i_47
				v_44.CollisionGroup = "InvisPart"
				v_44.CanCollide = false
				v_44.Size = Vector3.new(0.00100, 0.00100, 0.00100)
				v_44.Transparency = 1
				v_44.Parent = arg1.BluTeamZombieSpawns
				v_44.Position -= Vector3.new(0, 1, 0)
				local _
			end
			TheMap_4.EnemySpawns:Destroy()
			warn("Done!")
			return
		end
		if arg2 == "Units" then
			local TheMap = arg1.TheMap
			for i_48, v_45 in ipairs(TheMap.UnitSpawns:GetChildren()) do
				v_45.Name = i_48
				v_45.CollisionGroup = "InvisPart"
				v_45.CanCollide = false
				v_45.Size = Vector3.new(0.00100, 0.00100, 0.00100)
				v_45.Transparency = 1
				v_45.Parent = arg1.BluTeamUnitSpawns
				v_45.Position -= Vector3.new(0, 1, 0)
				local StringValue_2 = Instance.new("StringValue", v_45)
				StringValue_2.Name = "BaseName"
				StringValue_2.Value = "Spawn"..i_48
				local _
			end
			TheMap.UnitSpawns:Destroy()
			warn("Done!")
			return
		end
		if arg2 == "Base" then
			local TheMap_2 = arg1.TheMap
			local clone_10 = Baseplate.BluBaseSpawn:Clone()
			clone_10.CFrame = TheMap_2.Base.Base.CFrame * CFrame.new(0, -0.25, 0)
			clone_10.Parent = arg1
			TheMap_2.Base.Base:Destroy()
			local clone_14 = Baseplate.SpawnLocation2:Clone()
			clone_14.CFrame = clone_10.CFrame * CFrame.new(0, 2, 0)
			clone_14.Parent = arg1
			warn("Done!")
			return
		end
		if arg2 == "End" then
			local TheMap_3 = arg1.TheMap
			for _, v_46 in ipairs(arg1:GetDescendants()) do
				if v_46:IsA("Snap") or v_46:IsA("Weld") or v_46:IsA("WeldConstraint") or v_46:IsA("BaseScript") then
					v_46:Destroy()
				end
			end
			for _, v_47 in ipairs(arg1:GetDescendants()) do
				for i_51, _ in pairs(v_47:GetAttributes()) do
					v_47:SetAttribute(i_51, nil)
				end
			end
			for _, v_49 in ipairs(TheMap_3.Map:GetDescendants()) do
				v_49.Name = v_49.ClassName
			end
			local tbl_4 = {}
			for _, v_50 in ipairs(arg1:GetDescendants()) do
				if not table.find(tbl_4, v_50.Name.." - "..v_50.ClassName.." |") then
					table.insert(tbl_4, v_50.Name.." - "..v_50.ClassName.." |")
				end
			end
			for _, v_51 in ipairs(tbl_4) do
				print(v_51)
			end
			if TheMap_3:FindFirstChildWhichIsA("Sky") then
				TheMap_3:FindFirstChildWhichIsA("Sky").Name = "Skybox"
			end
			warn("Done!")
			return
		end
		if arg2 == "All" then
			local Folder_3 = Instance.new("Folder", arg1)
			Folder_3.Name = "TheMap"
			for _, v_52 in ipairs(arg1:GetChildren()) do
				if v_52 ~= Folder_3 then
					v_52.Parent = Folder_3
				end
			end
			for _, v_53 in ipairs(Folder_3.PlacementBoxes:GetChildren()) do
				v_51 = "suspicious"
				v_53.Name = v_51
				v_51 = "InvisPart"
				v_53.CollisionGroup = v_51
				v_51 = false
				v_53.CanCollide = v_51
				v_53.Parent = Folder_3
				v_51 = Color3.fromRGB(17, 17, 17)
				v_53.Color = v_51
				local var488
			end
			var488.PlacementBoxes:Destroy()
			for _, v_54 in ipairs(var488.BuildingPlacementBoxes:GetChildren()) do
				v_51 = "building"
				v_54.Name = v_51
				v_51 = "InvisPart"
				v_54.CollisionGroup = v_51
				v_51 = false
				v_54.CanCollide = v_51
				v_54.Parent = var488
				v_51 = Color3.fromRGB(51, 88, 130)
				v_54.Color = v_51
				local var492
			end
			var492.BuildingPlacementBoxes:Destroy()
			for _, v_55 in ipairs(var492.CliffBoxes:GetChildren()) do
				v_51 = "Cliff"
				v_55.Name = v_51
				v_51 = "InvisPart"
				v_55.CollisionGroup = v_51
				v_51 = false
				v_55.CanCollide = v_51
				v_55.Parent = var492
				v_51 = Color3.fromRGB(107, 50, 124)
				v_55.Color = v_51
				local var496
			end
			var496.CliffBoxes:Destroy()
			Instance.new("Folder", arg1).Name = "Pathfindy"
			local Folder_2 = Instance.new("Folder", arg1)
			Folder_2.Name = "BluTeamZombieSpawns"
			for i_59, v_56 in ipairs(var496.EnemySpawns:GetChildren()) do
				v_56.Name = i_59
				v_56.CollisionGroup = "InvisPart"
				v_56.CanCollide = false
				v_56.Size = Vector3.new(0.00100, 0.00100, 0.00100)
				v_56.Transparency = 1
				v_56.Parent = Folder_2
				v_56.Position -= Vector3.new(0, 1, 0)
				local _
			end
			var496.EnemySpawns:Destroy()
			local Folder = Instance.new("Folder", arg1)
			Folder.Name = "BluTeamUnitSpawns"
			for i_60, v_57 in ipairs(var496.UnitSpawns:GetChildren()) do
				v_57.Name = i_60
				v_57.CollisionGroup = "InvisPart"
				v_57.CanCollide = false
				v_57.Size = Vector3.new(0.00100, 0.00100, 0.00100)
				v_57.Transparency = 1
				v_57.Parent = Folder
				v_57.Position -= Vector3.new(0, 1, 0)
				local StringValue = Instance.new("StringValue", v_57)
				StringValue.Name = "BaseName"
				StringValue.Value = "Spawn"..i_60
				local _
			end
			var496.UnitSpawns:Destroy()
			if var496:FindFirstChild("InvisibleWalls") then
				for _, v_58 in ipairs(var496.InvisibleWalls:GetChildren()) do
					v_58.Name = "Wall"
					v_58.CollisionGroup = "InvisPart"
				end
				var496.InvisibleWalls.Name = "Walls"
			end
			local clone_20 = Baseplate.BluBaseSpawn:Clone()
			clone_20.CFrame = var496.Base.Base.CFrame * CFrame.new(0, -0.25, 0)
			clone_20.Parent = arg1
			var496.Base.Base:Destroy()
			local clone_19 = Baseplate.SpawnLocation2:Clone()
			clone_19.CFrame = clone_20.CFrame * CFrame.new(0, 2, 0)
			clone_19.Parent = arg1
			for _, v_59 in ipairs(arg1:GetDescendants()) do
				if v_59:IsA("Snap") or v_59:IsA("Weld") or v_59:IsA("WeldConstraint") or v_59:IsA("BaseScript") then
					v_59:Destroy()
				end
			end
			for _, v_60 in ipairs(arg1:GetDescendants()) do
				for i_64, _ in pairs(v_60:GetAttributes()) do
					v_60:SetAttribute(i_64, nil)
				end
			end
			for _, v_62 in ipairs(var496.Map:GetDescendants()) do
				v_62.Name = v_62.ClassName
			end
			local tbl_5 = {}
			for _, v_63 in ipairs(arg1:GetDescendants()) do
				if not table.find(tbl_5, v_63.Name.." - "..v_63.ClassName.." |") then
					table.insert(tbl_5, v_63.Name.." - "..v_63.ClassName.." |")
				end
			end
			for _, v_64 in ipairs(tbl_5) do
				print(v_64)
			end
			warn("Done!")
			return
		end
	end
end
module_upvr.MUSIC = {
	None = {"", 0.5, 1};
	Empty = {"rbxassetid://0", 0, 1};
	Waiting = {"rbxassetid://1841647093", 1, 1};
	["Waiting..."] = {"rbxassetid://1840389623", 1, 1};
	["Waiting (Toxic Sewers)"] = {"rbxassetid://1837667732", 1, 1, 0, 50000, 2.1, 93.5};
	["Waiting (Classic)"] = {"rbxassetid://9056950201", 1, 1};
	Sandbox = {"rbxassetid://9631477506", 5, 1};
	["Beginning (short)"] = {"rbxassetid://9388709858", 3, 1};
	Beginning = {"rbxassetid://9939715522", 2, 1};
	["Beginning (Farm)"] = {"rbxassetid://9040456067", 0.6, 1};
	["Beginning (Manor)"] = {"rbxassetid://1847627314", 0.5, 1};
	["Beginning (Blizzard)"] = {"rbxassetid://1843938460", 0.6, 2};
	["Beginning (Island)"] = {"rbxassetid://1835925711", 0.5, 1};
	["Beginning (Chasm)"] = {"rbxassetid://1843918895", 0.5, 1};
	["Beginning (Station)"] = {"rbxassetid://15771566980", 0.3, 1};
	["Beginning (Abyss)"] = {"rbxassetid://1844422085", 0.4, 1};
	["Beginning (Heights)"] = {"rbxassetid://9056902299", 0.5, 1};
	["Beginning (Japan)"] = {"rbxassetid://10547856588", 1, 1};
	["Beginning (Liminal)"] = {"rbxassetid://1843875257", 0.5, 0.75};
	["Beginning (Outbreak)"] = {"rbxassetid://1843883403", 0.5, 1};
	["Beginning (Swamp)"] = {"rbxassetid://1843921861", 0.5, 1};
	["Beginning (Wildfire)"] = {"rbxassetid://1836657209", 0.5, 1};
	["Beginning (Construction)"] = {"rbxassetid://1843451848", 0.5, 1};
	["Beginning (Hollow)"] = {"rbxassetid://1839127810", 0.5, 0.8};
	["Beginning (Pyramid)"] = {"rbxassetid://1845422682", 0.5, 1};
	["Beginning (Pizzeria)"] = {"rbxassetid://1843815560", 0.5, 1};
	["Beginning (Infestation)"] = {"rbxassetid://1842892836", 0.5, 1};
	["Beginning (Volcano)"] = {"rbxassetid://9038252950", 0.5, 0.85};
	["Beginning (Graveyard)"] = {"rbxassetid://17732375135", 0.5, 1};
	["Beginning (Garden)"] = {"rbxassetid://1844080666", 0.5, 1};
	["Beginning (Powerhouse)"] = {"rbxassetid://1843838655", 0.5, 1};
	["Beginning (Everfrost)"] = {"rbxassetid://1843996657", 0.5, 1};
	["Beginning (Seasonal)"] = {"rbxassetid://1844621226", 0.5, 0.85};
	["Beginning (Mudded Cavern)"] = {"rbxassetid://10914641352", 5, 0.9};
	Spotless = {"rbxassetid://9056846040", 0.5, 1};
	["M-Menace"] = {"rbxassetid://1837773620", 0.75, 1};
	["M-Menace (dead)"] = {"rbxassetid://1837795365", 0.75, 1};
	Brutes = {"rbxassetid://9039686247", 0.6, 1};
	Conehead = {"rbxassetid://9056963434", 1.25, 1};
	["Japan Final Boss"] = {"rbxassetid://10547596816", 1, 1};
	["Income Send"] = {"rbxassetid://9056821242", 0.5, 1};
	Speedster = {"rbxassetid://9056785837", 0.5, 1};
	Avenger = {"rbxassetid://9056737487", 0.75, 1};
	["Avenger (Seasonal)"] = {"rbxassetid://81013646575431", 0.65, 0.9};
	["Avenger (Ruined)"] = {"rbxassetid://9056737487", 0.75, 0.75};
	Terminator = {"rbxassetid://1847863129", 0.5, 1};
	["Terminator (Seasonal)"] = {"rbxassetid://122923868591659", 0.65, 0.9};
	["Terminator (Island)"] = {"rbxassetid://1839562514", 0.5, 1};
	Wastelander = {"rbxassetid://1838561243", 0.5, 1};
	Paladins = {"rbxassetid://9056805647", 0.5, 1};
	["Paladins (Seasonal)"] = {"rbxassetid://95121011311818", 0.65, 0.9};
	["Paladins (Island)"] = {"rbxassetid://1837052923", 0.5, 1};
	["Ruined Ambience"] = {"rbxassetid://1843820398", 1, 0.75};
	Conehead2 = {"rbxassetid://9530669026", 10, 2};
	Funnywave = {"rbxassetid://1844422218", 3, 1};
	Rush = {"rbxassetid://1845821031", 0.6, 1};
	["Rush (Japan)"] = {"rbxassetid://10547594952", 4, 1};
	["Beginning (Painful)"] = {"rbxassetid://1843820398", 1, 1};
	["Income Send (Painful)"] = {"rbxassetid://1844025891", 0.5, 1};
	["Avengers (Painful)"] = {"rbxassetid://1843875257", 0.5, 0.75};
	["Beginning (Arduous)"] = {"rbxassetid://9056825496", 0.75, 1};
	Glazemancer = {"rbxassetid://9830573452", 1.75, 1};
	SupaSpeedster = {"rbxassetid://9137113346", 0.75, 1};
	["Terminator MK II"] = {"rbxassetid://1845820974", 0.75, 1};
	Mathematician = {"rbxassetid://9407347383", 1, 1};
	["Granite Golem"] = {"rbxassetid://9137356174", 0.75, 1};
	["The Horde"] = {"rbxassetid://1836963388", 0.5, 1};
	Master = {"rbxassetid://9148787058", 1.25, 1};
	Treacherous = {"rbxassetid://10744226845", 1.1, 0.75};
	Formidable = {"rbxassetid://11227360652", 1.25, 1};
	["Paladin-A"] = {"rbxassetid://1837007959", 0.75, 1};
	["Wrecked (Exorcist)"] = {"rbxassetid://1839476774", 1, 1};
	["Wrecked (Duplicator)"] = {"rbxassetid://1837779548", 1, 1};
	["Wrecked (Exterminator)"] = {"rbxassetid://1842570296", 1, 1};
	["Wrecked (Final)"] = {"rbxassetid://11476235759", 0.6, 1};
	["Big Move"] = {"rbxassetid://11227361846", 0.7, 1};
	["Beginning (PVP)"] = {"rbxassetid://1839444520", 0.5, 1};
	["Terminator (PVP)"] = {"rbxassetid://11469239452", 1, 1};
	["Ambush (Beginning)"] = {"rbxassetid://1837828139", 0.5, 0.5};
	["Ambush (Speedster)"] = {"rbxassetid://1847000038", 0.6, 1};
	["Ambush (Terminator)"] = {"rbxassetid://9042825174", 0.6, 1};
	["Ambush (Late)"] = {"rbxassetid://1837827806", 0.55, 1};
	Defeat = {"rbxassetid://9056942642", 2, 1};
	["Defeat (Painful)"] = {"rbxassetid://9449555095", 0.5, 1};
	["Victory (Casual)"] = {"rbxassetid://10396438251", 0.5, 1};
	["Victory (Burdensome)"] = {"rbxassetid://10857504149", 1.25, 1};
	["Victory (Rush)"] = {"rbxassetid://1847706469", 0.75, 1};
	["Victory (Arduous)"] = {"rbxassetid://9694595159", 2.5, 2};
	["Good Try (Endless)"] = {"rbxassetid://9056932351", 1, 1};
	["Green Man"] = {"rbxassetid://9056908995", 6, 1};
	Witch = {"rbxassetid://1836271798", 0.7, 1};
	Sorceress = {"rbxassetid://1838592691", 0.65, 1};
	["Halloween (main)"] = {"rbxassetid://1847313950", 0.75, 1};
	["Halloween (final)"] = {"rbxassetid://10975955913", 0.75, 0.9};
	["Winter Ambience"] = {"rbxassetid://1842842210", 0.6, 1};
	["Winter (Freezer)"] = {"rbxassetid://1847017999", 0.65, 1};
	["Winter (Awakener)"] = {"rbxassetid://1847366738", 0.7, 1};
	["Winter (Crusher)"] = {"rbxassetid://1843497734", 0.6, 1};
	["Winter (final)"] = {"rbxassetid://1842940300", 0.6, 0.9};
	["Freezing (The Trio)"] = {"rbxassetid://9137104936", 1, 1};
	["Freezing (final)"] = {"rbxassetid://15693553451", 1.05, 1};
	["Insane (Destroyer)"] = {"rbxassetid://15984944556", 0.85, 0.9345794392523364, 0.04, 50000, 0, 50000};
	["Insane (Critical Entity)"] = {"rbxassetid://15984945015", 1, 0.9345794392523364};
	["Insane (The Sorcerer)"] = {"rbxassetid://1847648331", 0.5, 1};
	["Collapsing Universe"] = {"rbxassetid://17234817577", 1.25, 0.9, 0, 50000, 209, 50000};
	["Doors (Death)"] = {"rbxassetid://17741499734", 1, 1};
	["Doors (Chase)"] = {"rbxassetid://17791491559", 0.4, 0.833, 0, 50000, 5.9, 100.7};
	["Doors (Library)"] = {"rbxassetid://1843986346", 0.75, 1, 0, 50000, 0, 189.17};
	["Doors (Electrical)"] = {"rbxassetid://1843902959", 0.75, 1, 0, 50000, 0, 200};
	["Spacial (Outsiders)"] = {"rbxassetid://1837853076", 0.7, 1, 0, 50000, 0.8, 130};
	["Spacial (final)"] = {"rbxassetid://17234817577", 1.25, 0.85, 0, 50000, 209, 50000};
	["Universal (Beginning)"] = {"rbxassetid://11983001432", 1, 1, 0, 50000, 0, 50000};
	["Universal (Trio)"] = {"rbxassetid://80637593543909", 0.85, 1, 0, 50000, 0.1, 92.55};
	["Universal (final)"] = {"rbxassetid://12832907787", 1.25, 1, 0, 50000, 0, 50000};
}
module_upvr.CurrencyIcons = {
	CREDITS = {"rbxassetid://13823458112", Color3.new(1, 1, 1)};
	TROPHIES = {"rbxassetid://13823460205", Color3.new(1, 1, 1)};
	MEDALS = {"rbxassetid://134742123559135", Color3.new(1, 1, 1)};
	EX_MEDAL = {"rbxassetid://134742123559135", Color3.new(1, 1, 1)};
	TOKEN1 = {"rbxassetid://13823462981", Color3.new(1, 1, 1)};
	TOKEN2 = {"rbxassetid://13823464134", Color3.new(1, 1, 1)};
	TOKEN3 = {"rbxassetid://13823468160", Color3.new(1, 1, 1)};
	TOKEN4 = {"rbxassetid://13823465620", Color3.new(1, 1, 1)};
	TOKEN5 = {"rbxassetid://13823469703", Color3.new(1, 1, 1)};
	TOKEN6 = {"rbxassetid://13823470835", Color3.new(1, 1, 1)};
	["EXâ™¾ï¸"] = {"rbxassetid://13823477831", Color3.new(1, 1, 1)};
	["EXðŸŸ "] = {"rbxassetid://13823488344", Color3.new(1, 1, 1)};
	["EXðŸ¬"] = {"rbxassetid://13823490343", Color3.new(1, 1, 1)};
	["EXâš”ï¸"] = {"rbxassetid://14510797746", Color3.new(1, 1, 1)};
	EX_ = {"rbxassetid://16850206348", Color3.new(1, 1, 1)};
	EX_1 = {"rbxassetid://14695487804", Color3.new(1, 1, 1)};
	["EX+"] = {"rbxassetid://15447676365", Color3.new(1, 1, 1)};
	EX_2 = {"rbxassetid://116239173736714", Color3.new(1, 1, 1)};
	Unknown = {"rbxassetid://13823492728", Color3.new(1, 1, 1)};
}
function module_upvr.MakeCurrencyIcon(arg1, arg2, arg3, arg4) -- Line 783
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local clone_8 = arg1.b:Clone()
	clone_8.Name = arg2
	if arg3 then
		if type(arg3) ~= "number" then
			clone_8.b.Text = arg3
		else
			clone_8.b.Text = module_upvr.addComma(math.round(arg3 * 100) / 100)
		end
	end
	clone_8.Visible = true
	clone_8.ImagIcon.Image = arg4[1]
	clone_8.ImagIcon.ImageColor3 = arg4[2]
	clone_8.LayoutOrder = #arg1:GetChildren()
	clone_8.Parent = arg1
end
module_upvr.Traits = {
	TraitMECHA = {Color3.fromRGB(109, 109, 109), "[MK]", "[MECHA]", "Very tough composition. Most deal normal damage to Shield HP."};
	TraitGRANITE = {Color3.fromRGB(129, 129, 129), "[GRN]", "[GRANITE]", "Immune to bullets. Receives more slowdown from fire-based status effects."};
	TraitMUD = {Color3.fromRGB(154, 85, 52), "[MUD]", "[MUD]", "Immune to all status effects."};
	TraitICE = {Color3.fromRGB(120, 179, 255), "[ICE]", "[ICE]", "Vulnerable to explosives and fire, immune to ice, can freeze opponents."};
	TraitSILVER = {Color3.fromRGB(191, 191, 191), "[SIL]", "[SILVER]", "Immune to explosives."};
	TraitFLOATING = {Color3.fromRGB(199, 248, 147), "[FLT]", "[FLOATING]", "Floating characters that require certain weapons to be attacked."};
	TraitZOMBIE = {Color3.fromRGB(81, 166, 84), "[ZM]", "[ZOMBIE]", "Undead, some revive themselves upon death."};
	TraitBLAZE = {Color3.fromRGB(255, 103, 103), "[BLZ]", "[BLAZE]", "Immune to most fire, may set opponents on fire."};
	TraitALIEN = {Color3.fromRGB(20, 255, 188), "[ALN]", "[ALIEN]", "A strange creature with unknown abilities. Very dangerous."};
	TraitMETAL = {Color3.fromRGB(213, 229, 255), "[MTL]", "[METAL]", "Composed of a special metal highly resistant to any attacks from Ranged characters."};
	TraitANGEL = {Color3.fromRGB(255, 250, 112), "[H]", "[HOLY]", "Holy creatures, usually from Heaven. They cannot be slowed down."};
	TraitRUST = {Color3.fromRGB(182, 135, 104), "[R]", "[RUST]", "Broken creatures that are not affected by trait targets."};
	TraitCOSMIC = {Color3.fromRGB(202, 164, 255), "[COS]", "[COSMIC]", "Good luck!"};
	TraitSUMMON = {Color3.fromRGB(222, 222, 222), nil, "summons"};
	TraitELECTRIC = {Color3.fromRGB(222, 222, 222), nil, "electric attacks"};
	TraitTRAITLESS = {Color3.fromRGB(222, 222, 222), nil, "Traitless enemies"};
	TraitRANGED = {Color3.fromRGB(168, 169, 186), nil, "ranged enemies"};
	TraitSENT = {Color3.fromRGB(199, 222, 161), nil, "Opponents' sent enemies"};
	TraitPUDDLE = {Color3.fromRGB(199, 120, 255), nil, "[PUDDLE ATTACKS]"};
	TraitSURGE = {Color3.fromRGB(199, 120, 255), nil, "[SURGE ATTACKS]"};
	TraitWAVE = {Color3.fromRGB(199, 120, 255), nil, "[WAVE ATTACKS]"};
}
module_upvr.Traits_Resist = {
	Tough = {"Tough against ", " (2x less damage/effects received)"};
	MassiveTough = {"Massively tough against ", " (4x less damage/effects received)"};
	InsaneTough = {"Insanely tough against ", " (6x less damage/effects received)"};
	ExtremeTough = {"EXTREMELY tough against ", " (10x less damage/effects received)"};
	SlightAgainst = {"Slightly strong against ", " (1.25x less damage/effects received, 1.25x more damage/effects dealt)"};
	StrongAgainst = {"Strong against ", " (1.5x less damage/effects received, 1.5x more damage/effects dealt)"};
	WeakAgainst = {"WEAK against ", " (1.25x MORE damage/effects received, 1.25x LESS damage/effects dealt)"};
	GreatDamage = {"Great damage against ", " (2x more damage/effects dealt)"};
	MassiveDamage = {"Massive damage against ", " (4x more damage/effects dealt)"};
	InsaneDamage = {"INSANE damage against ", " (6x more damage/effects dealt)"};
	ExtremeDamage = {"EXTREME damage against ", " (10x more damage/effects dealt)"};
	CompletelyImmune = {"Immune to ", " (No damage/effects received)"};
}
function module_upvr.TraitApply(arg1, arg2) -- Line 831
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	arg1:SetAttribute("Trait"..arg2, arg2)
	if arg2 == "TRAITLESS" then
		arg1:SetAttribute("Immunity", nil)
		if arg1.ExploseImmune.Value <= 0 then
			arg1.ExploseImmune.Value = 0.05
		end
		if arg1:FindFirstChild("MudRemove") then
			arg1.MudRemove:Destroy()
		end
		for i_24, v_24 in pairs(arg1:GetAttributes()) do
			if string.match(i_24, "Trait") and module_upvr.Traits[i_24][2] and v_24 ~= "TRAITLESS" then
				arg1:SetAttribute(i_24, nil)
			end
		end
		for _, v_25 in ipairs(arg1:GetDescendants()) do
			if v_25:IsA("UnionOperation") then
				v_25.UsePartColor = true
			end
			if v_25:IsA("BasePart") and v_25.Transparency < 1 then
				local var735 = (v_25.Color.R + v_25.Color.G + v_25.Color.B) / 3
				v_25.Color = Color3.new(var735, var735, var735)
				v_25.Material = Enum.Material.SmoothPlastic
			end
		end
	end
	if arg2 == "METAL" then
		for _, v_26 in ipairs(arg1:GetDescendants()) do
			if v_26:IsA("UnionOperation") then
				v_26.UsePartColor = true
			end
			if v_26:IsA("BasePart") and v_26.Transparency < 1 then
				v_26.Material = Enum.Material.Metal
			end
		end
	end
	if arg2 == "ANGEL" then
		for _, v_27 in ipairs(arg1:GetDescendants()) do
			if v_27:IsA("UnionOperation") then
				v_27.UsePartColor = true
			end
			if v_27:IsA("BasePart") and v_27.Transparency < 1 then
				local var742 = (v_27.Color.R + v_27.Color.G + v_27.Color.B) / 3
				v_27.Color = Color3.new(0.5 + var742 / 3, 0.5 + var742 / 3, 0.25 + var742 / 4)
			end
		end
	end
	if arg2 == "MECHA" then
		for _, v_28 in ipairs(arg1:GetDescendants()) do
			if v_28:IsA("UnionOperation") then
				v_28.UsePartColor = true
			end
			if v_28:IsA("BasePart") and v_28.Transparency < 1 then
				local var746 = (v_28.Color.R + v_28.Color.G + v_28.Color.B) / 3
				v_28.Color = Color3.new(var746, var746, var746)
				v_28.Material = Enum.Material.Metal
			end
		end
	end
	if arg2 == "SILVER" then
		arg1.ExploseImmune.Value = 0
		local HealthShield_4 = arg1.HealthShield
		HealthShield_4.Value += arg1.HealthMax.Value / 10
		arg1:SetAttribute("Immunity", "Explosive")
		for _, v_29 in ipairs(arg1:GetDescendants()) do
			if v_29:IsA("UnionOperation") then
				v_29.UsePartColor = true
			end
			if v_29:IsA("BasePart") and v_29.Transparency < 1 then
				local var751 = (v_29.Color.R + v_29.Color.G + v_29.Color.B) / 3
				v_29.Color = Color3.new(0.5 + var751 / 2, 0.5 + var751 / 2, 0.5 + var751 / 2)
				v_29.Material = Enum.Material.Glass
			end
		end
	end
	if arg2 == "ICE" then
		arg1:SetAttribute("SPECIAL_Freeze", 0.5)
		if not arg1:FindFirstChild("FreezeImmunity") then
			Instance.new("NumberValue", arg1).Name = "FreezeImmunity"
		end
		arg1.FreezeImmunity.Value = -1
		for _, v_30 in ipairs(arg1:GetDescendants()) do
			if v_30:IsA("UnionOperation") then
				v_30.UsePartColor = true
			end
			if v_30:IsA("BasePart") then
				v_30.Color = Color3.new(v_30.Color.R * 0.8, v_30.Color.G * 0.9, math.min(1, (0.1 + v_30.Color.B) * 1.2))
			end
		end
	end
	if arg2 == "BLAZE" then
		arg1:SetAttribute("Explosive2", "Fire")
		if not arg1:FindFirstChild("FireImmunity") then
			Instance.new("NumberValue", arg1).Name = "FireImmunity"
		end
		arg1.FireImmunity.Value = 1
		for _, v_31 in ipairs(arg1:GetDescendants()) do
			if v_31:IsA("UnionOperation") then
				v_31.UsePartColor = true
			end
			if v_31:IsA("BasePart") then
				v_31.Color = Color3.new(math.min(1, (0.1 + v_31.Color.R) * 1.2), v_31.Color.G * 0.8, v_31.Color.B * 0.8)
			end
		end
	end
	if arg2 == "GRANITE" then
		arg1:SetAttribute("Immunity", "Bullet")
		local HealthShield_3 = arg1.HealthShield
		HealthShield_3.Value += arg1.HealthMax.Value * 2
		for i_32, v_32 in ipairs(arg1:GetDescendants()) do
			if v_32:IsA("UnionOperation") then
				v_32.UsePartColor = true
			end
			if v_32:IsA("BasePart") then
				v_32.Color = Color3.new((v_32.Color.R + v_32.Color.G + v_32.Color.B) / 24, (v_32.Color.R + v_32.Color.G + v_32.Color.B) / 24, (v_32.Color.R + v_32.Color.G + v_32.Color.B) / 24)
				v_32.Material = Enum.Material.Granite
			end
		end
	end
	if arg2 == "MUD" and not arg1:FindFirstChild("MudRemove") then
		i_32 = game
		local clone_27 = i_32.ServerStorage.Important.MudRemove:Clone()
		clone_27.Parent = arg1
		clone_27.Disabled = false
		local ipairs_result1_33, ipairs_result2_38, ipairs_result3_11 = ipairs(arg1:GetDescendants())
		for _, v_33 in ipairs_result1_33, ipairs_result2_38, ipairs_result3_11 do
			if v_33:IsA("UnionOperation") then
				v_33.UsePartColor = true
			end
			if v_33:IsA("BasePart") then
				v_33.Color = Color3.new(math.min(1, (0.2 + v_33.Color.R) * 0.6), v_33.Color.G * 0.5, v_33.Color.B * 0.4)
				v_33.Material = Enum.Material.Mud
			end
		end
	end
	if arg2 == "ALIEN" then
		ipairs_result3_11 = (arg1:GetAttribute("Defense4") or 0) + 0.25
		arg1:SetAttribute("Defense4", ipairs_result3_11)
		for _, v_34 in ipairs(arg1:GetDescendants()) do
			if v_34:IsA("UnionOperation") then
				v_34.UsePartColor = true
			end
			if v_34:IsA("BasePart") then
				v_34.Color = Color3.new(v_34.Color.R * 0.8, math.min(1, (0.1 + v_34.Color.G) * 1.2), math.min(1, (0.1 + v_34.Color.B) * 1.1))
			end
		end
	end
	if arg2 == "ZOMBIE" then
		if not arg1:GetAttribute("DeathType") and not arg1:FindFirstChild("Revival") then
			local Animation = Instance.new("Animation", arg1)
			Animation.Name = "Revival"
			Animation.AnimationId = "rbxassetid://13942841744"
			_ = "DeathType"
			arg1:SetAttribute("DeathType", "Revive 1 0.5")
			arg1:SetAttribute("DeathHP", 2)
		end
		if not arg1:FindFirstChild("ToxicImmunity") then
			Instance.new("NumberValue", arg1).Name = "ToxicImmunity"
		end
		arg1.ToxicImmunity.Value = 1
		for _, v_35 in ipairs(arg1:GetChildren()) do
			if v_35:IsA("BasePart") and (string.match(v_35.Name, "Arm") or string.match(v_35.Name, "Head")) then
				v_35.Color = Color3.fromRGB(91, 154, 76)
				v_35.Material = Enum.Material.Basalt
			end
		end
	end
	if arg2 == "RUST" then
		arg1:SetAttribute("Weapon_Drops", true)
		for _, v_36 in ipairs(arg1:GetDescendants()) do
			if v_36:IsA("BasePart") and (v_36.Parent ~= arg1 or string.match(v_36.Name, "Leg") or v_36.Name == "Torso") then
				v_36.Material = Enum.Material.CorrodedMetal
			end
		end
	end
end
module_upvr.Status_Effect = {{"Unknown", Color3.fromRGB(126, 126, 126), "Unknown", "Unknown effect.", "rbxassetid://18159949496"}, {"Unknown", Color3.fromRGB(126, 126, 126), "Unknown", "Unknown effect.", "rbxassetid://18159649325"}, {"spider", Color3.fromRGB(0, 0, 0), "Venomous Doom", "Character cannot be healed and receives damage every 10 seconds. Damage depends on character's max health.\n This effect cannot be removed.", "rbxassetid://18217182809"}, {"MudParticle1", Color3.fromRGB(68, 45, 19), "Mudded", longstring1, "rbxassetid://18161213260"}, {"MudParticle2", Color3.fromRGB(68, 45, 19), "Mudded", longstring1, "rbxassetid://18161213260"}, {"MudParticle3", Color3.fromRGB(68, 45, 19), "Mudded", longstring1, "rbxassetid://18161213260"}, {"MudParticle4", Color3.fromRGB(68, 45, 19), "Mudded", longstring1, "rbxassetid://18161213260"}, {"MudParticle5", Color3.fromRGB(68, 45, 19), "Mudded", longstring1, "rbxassetid://18161213260"}, {"FireParticle", Color3.fromRGB(241, 161, 69), "On Fire!", longstring2, "rbxassetid://18160352430"}, {"FireParticleAir", Color3.fromRGB(241, 123, 63), "Burn", "Character is receiving ~4 damage every second.\n If 'Frozen' is applied to this character, this effect disappears.\n This effect disappears faster while it is raining.", "rbxassetid://18160365353"}, {"FireParticle1", Color3.fromRGB(241, 161, 69), "On Fire?", longstring2, "rbxassetid://18160352430"}, {"FireParticleIgnitor", Color3.fromRGB(241, 123, 63), "Burning", "Character is slowed down 12% and receiving ~4 damage every second.\n If 'Frozen' is applied to this character, this effect disappears.\n This effect disappears faster while it is raining.", "rbxassetid://18160365353"}, {"FireParticle2", Color3.fromRGB(241, 114, 63), "Burning II", "Character is slowed down 20% and receiving 5 damage every second.\n If 'Frozen' is applied to this character, this effect disappears.\n This effect disappears faster while it is raining.", "rbxassetid://18160365353"}, {"FireParticle3", Color3.fromRGB(241, 105, 63), "Burning III", "Character is slowed down 30% and receiving 10 damage every second.\n If 'Frozen' is applied to this character, this effect disappears.\n This effect disappears faster while it is raining.", "rbxassetid://18160365353"}, {"FireParticle4", Color3.fromRGB(241, 96, 63), "Burning IV", "Character is slowed down 35% and receiving 20 damage every second.\n If 'Frozen' is applied to this character, this effect disappears.\n This effect disappears faster while it is raining.", "rbxassetid://18160365353"}, {"BlazeParticle", Color3.fromRGB(241, 62, 39), "Blazing", "Character is slowed down 30% and receiving 4 damage every second. Effects are stackable.", "rbxassetid://18160370630"}, {"BlazeParticleM", Color3.fromRGB(241, 62, 39), "Blazing (Weak)", "Character is slowed down 12% and receiving 4 damage every second. Effects are stackable.", "rbxassetid://18160370630"}, {"RedEffect", Color3.fromRGB(241, 97, 97), "Bleed", "Character is constantly receiving damage. Damage depends on amount of bleed stacks.", "rbxassetid://18161136877"}, {"EnemyAftermathP1", Color3.fromRGB(241, 97, 97), "Betrayal", "Character will convert to the enemy side with weakened health/damage after its final death.", "rbxassetid://18166901036"}, {"JohnEffect", Color3.fromRGB(241, 101, 66), "Enraged", "Character's damage multiplier is increased.", "rbxassetid://18161471101"}, {"SlowEffect", Color3.fromRGB(241, 224, 95), "Speed Down", "Character is slowed down. Amount depends on the character that applied this effect. Effects are stackable.", "rbxassetid://18161408319"}, {"speedup", Color3.fromRGB(241, 224, 95), "Speed Up", "Character moves faster. Amount depends on the character that applied this effect. Effects are stackable.", "rbxassetid://18161426563"}, {"FirerateEffect", Color3.fromRGB(241, 224, 95), "Electric", "Character's firerate multiplier is altered. Amount depends on the character that applied this effect.", "rbxassetid://18161504905"}, {"FirerateEffect2", Color3.fromRGB(241, 224, 95), "Electrical", "Character's firerate multiplier is altered. Amount depends on the character that applied this effect.", "rbxassetid://18161504905"}, {"FirerateEffect_Moving", Color3.fromRGB(241, 224, 95), "Electrical (Moving)", "Character's firerate multiplier is altered. Amount depends on the character that applied this effect.", "rbxassetid://18161504905"}, {"STUNNED", Color3.fromRGB(241, 241, 36), "Stunned!", "Character cannot move or attack normally.", "rbxassetid://18160502900"}, {"Cursed", Color3.fromRGB(162, 241, 78), "Cursed", "Character's trait targettings and special attacks are disabled.", "rbxassetid://18160967166"}, {"Heals", Color3.fromRGB(142, 241, 114), "Regeneration", "Character heals 1 health every second. Heals Shield if already at max health. Effects are stackable.", "rbxassetid://18161236409"}, {"Heals2", Color3.fromRGB(142, 241, 114), "Regenerative", "Character heals constantly. Higher max health means faster healing.", "rbxassetid://18161236409"}, {"Greens_weak", Color3.fromRGB(73, 241, 60), "Slightly Toxicated", "Character is receiving ~7 damage every second.", "rbxassetid://18160545495"}, {"Greens", Color3.fromRGB(73, 241, 60), "Toxic Tear", "Character is receiving 10 damage every second. Effects are stackable.", "rbxassetid://18160545495"}, {"Greens2", Color3.fromRGB(59, 241, 119), "Toxic Tear II", "Character is receiving ~13 damage every second. Effects are stackable.", "rbxassetid://18160588264"}, {"Gasoline1", Color3.fromRGB(59, 241, 119), "Gasoline", "Character will receive 'On Fire?' effect when attacked.", "rbxassetid://18404000184"}, {"Gasoline2", Color3.fromRGB(59, 241, 119), "Gasoline II", "Character will receive 'Burning II' effect when attacked.", "rbxassetid://18404000184"}, {"Gasoline3", Color3.fromRGB(59, 241, 119), "Gasoline III", "Character will receive 'Burning III' effect when attacked.", "rbxassetid://18404000184"}, {"Gasoline4", Color3.fromRGB(59, 241, 119), "Gasoline IV", "Character will receive 'Burning IV' effect when attacked.", "rbxassetid://18404000184"}, {"Effect_Ice", Color3.fromRGB(97, 227, 241), "Washed", "Character is slowed down 11%. Effects are stackable.", "rbxassetid://18161279340"}, {"GlazierEffect", Color3.fromRGB(97, 227, 241), "Washed II", "Character is slowed down 25%.", "rbxassetid://18161279340"}, {"RangeEffect", Color3.fromRGB(97, 227, 241), "Focus", "Character's range multiplier is altered. Amount depends on the character that applied this effect.", "rbxassetid://18175405290"}, {"STUNFROZEN", Color3.fromRGB(61, 178, 241), "Frozen", "Character cannot move or attack normally.\n If a fire effect is applied to this character, this effect disappears.", "rbxassetid://18160536893"}, {"FreezeShatter", Color3.fromRGB(61, 178, 241), "Ice Shatter", "Character will freeze and damage nearby enemies on death.", "rbxassetid://18160834194"}, {"BlueFireParticle", Color3.fromRGB(75, 133, 241), "Burning Blue", "Character is slowed down 10% and receiving ~8 damage every second. Effects are stackable.\n If 'Frozen' is applied to this character, this effect disappears.\n This effect disappears faster while it is raining.", "rbxassetid://18160666870"}, {"Frostburn", Color3.fromRGB(75, 133, 241), "Frostburn", "Character is receiving 6 damage every second. They receive increased damage if frozen. Effects are stackable.", "rbxassetid://18280916546"}, {"MaggotP1", Color3.fromRGB(111, 50, 241), "Maggot Infested", "Characters summon maggots when attacked.", "rbxassetid://18166823602"}, {"Confused", Color3.fromRGB(167, 93, 241), "Confused", "Character is temporarily on the enemy side, able to be attacked by former allies. Offense is significantly reduced.", "rbxassetid://18160805234"}, {"EternalFlames", Color3.fromRGB(174, 65, 241), "Eternal Flames", "Character is receiving constant damage. The longer this effect lasts, the more damage the character receives.", "rbxassetid://18160597744"}, {"DissolveParticle1", Color3.fromRGB(222, 75, 241), "Dissolving", "Character is receiving 5 damage every second. Effects are stackable.", "rbxassetid://18160610626"}, {"DissolveParticle2", Color3.fromRGB(222, 75, 241), "Dissolving II", "Character is receiving 10 damage every second. Effects are stackable.", "rbxassetid://18160610626"}, {"DissolveParticle3", Color3.fromRGB(222, 75, 241), "Dissolving III", "Character is receiving 20 damage every second. Effects are stackable.", "rbxassetid://18160610626"}, {"DissolveParticle4", Color3.fromRGB(222, 75, 241), "Dissolving IV", "Character is receiving 40 damage every second. Effects are stackable.", "rbxassetid://18160610626"}, {"Heart", Color3.fromRGB(241, 155, 211), "Charmed", "Character will attack its allies and ignore its enemies.", "rbxassetid://18160820952"}, {"Milk", Color3.fromRGB(165, 165, 165), "Covered in Milk", "Character is slowed down 33%.", "rbxassetid://18161224991"}, {"saboSmallEffect", Color3.fromRGB(193, 193, 193), "Slightly Sabotaged", "Character has slightly reduced defenses.", "rbxassetid://18161092183"}, {"SaboteurEffect1", Color3.fromRGB(193, 193, 193), "Sabotaged", "Character has reduced damage and defenses. Effects are stackable.", "rbxassetid://18161046010"}, {"SaboteurEffect2", Color3.fromRGB(181, 181, 181), "Sabotaged II", "Character has weakened damage and defenses. Effects are stackable.", "rbxassetid://18161046010"}, {"SaboteurEffect3", Color3.fromRGB(165, 165, 165), "Sabotaged III", "Character has severely weakened damage and defenses. Effects are stackable.", "rbxassetid://18161056615"}, {"AftermathP1", Color3.fromRGB(225, 225, 225), "Aftermath", "Characters will become temporary invincible ghosts after their final death.", "rbxassetid://18166894391"}, {"handcuff", Color3.fromRGB(90, 90, 90), "Jailed", "Character cannot move or attack normally.\n This effect only disappears with time; it cannot be manually cleared.", "rbxassetid://6513678501"}}
module_upvr.MapStuff = {
	Desert = {1, {1, 1, 0, 0, 0}, 1, 1};
	Baseplate = {1, {0, 1, 1, 0, 0}, 1, 1};
	Depot = {1, {0, 0, 0, 1, 0}, 1, 1};
	Doomspire = {1, {0, 0, 0, 0, 1}, 1, 1};
	Grassland = {1, {1, 1, 0, 0, 0}, 1, 1};
	Jungle = {1, {1, 1, 0, 0, 0}, 1, 1};
	Meadow = {1, {0, 1, 1, 0, 0}, 1, 1};
	Gallery = {1, {1, 0, 1, 0, 0}, 1, 1};
	Fields = {1, {0, 1, 0, 0, 0}, 1, 1};
	Campsite = {1, {0, 1, 0, 0, 0}, 1, 1};
	Autumn = {1, {1, 1, 0, 0, 0}, 1, 1};
	Savanna = {1.25, {0, 2, 0, 0, 0}, 1.25, 1.25};
	Crescentant = {1.25, {2, 1, 0, 0, 0}, 1.25, 1.25};
	Warehouse = {1.25, {0, 1, 0, 2, 0}, 1.25, 1.25};
	Manor = {1.25, {1, 0, 0, 2, 0}, 1.25, 1.25};
	Snowfield = {1.25, {0, 1, 0, 0, 2}, 1.25, 1.25};
	Heights = {1.25, {2, 1, 0, 0, 0}, 1.25, 1.25};
	Badlands = {1.25, {2, 0, 0, 1, 0}, 1.25, 1.25};
	Japan = {1.25, {0, 2, 0, 0, 0}, 1.25, 1.25};
	Castle = {1.25, {3, 0, 0, 0, 0}, 1.25, 1.25};
	Farm = {1.25, {0, 2, 0, 0, 0}, 1.25, 1.25};
	Equator = {1.25, {1, 1, 0, 0, 2}, 1.25, 1.25};
	Arctic = {1.25, {0, 0, 0, 0, 3}, 1.25, 1.25};
	Blimp = {1.25, {0, 0, 0, 0, 3}, 1.25, 1.25};
	Town = {1.25, {0, 1, 0, 0, 1}, 1.25, 1.25};
	Garden = {1.25, {0, 0, 0, 2, 0}, 1.25, 1.25};
	Tropical = {1.25, {0, 3, 0, 0, 0}, 1.25, 1.25};
	Highway = {1.5, {0, 3, 0, 3, 0}, 1.5, 1.5};
	Suburban = {1.5, {0, 4, 0, 2, 0}, 1.5, 1.5};
	Reactor = {1.5, {0, 0, 4, 2, 0}, 1.5, 1.5};
	Island = {1.5, {2, 2, 0, 0, 2}, 1.5, 1.5};
	Plains = {1.5, {4, 0, 0, 2, 0}, 1.5, 1.5};
	Blockhouse = {1.5, {3, 0, 0, 3, 0}, 1.5, 1.5};
	Blizzard = {1.5, {0, 2, 0, 0, 4}, 1.5, 1.5};
	Remnant = {1.5, {3, 0, 0, 0, 3}, 1.5, 1.5};
	Spiral = {1.5, {0, 0, 0, 3, 3}, 1.5, 1.5};
	Cargo = {1.5, {1, 1, 1, 0, 3}, 1.5, 1.5};
	Chasm = {1.5, {0, 1, 0, 4, 1}, 1.5, 1.5};
	Hollow = {1.5, {1, 1, 1, 1, 1}, 1.5, 1.5};
	Hideout = {1.5, {1, 0, 0, 3, 0}, 1.5, 1.5};
	Construction = {1.5, {2, 0, 0, 2, 1}, 1.5, 1.5};
	Prison = {1.5, {0, 0, 0, 4, 1}, 1.5, 1.5};
	Arena = {2, {4, 0, 0, 3, 0}, 2, 2};
	Industry = {2, {0, 1, 2, 4, 0}, 2, 2};
	Split = {2, {4, 4, 0, 0, 0}, 2, 2};
	Abyss = {2, {4, 0, 0, 4, 0}, 2, 2};
	Wildfire = {2, {6, 0, 0, 0, 0}, 2, 2};
	Outbreak = {2, {0, 6, 0, 0, 0}, 2, 2};
	Pyramid = {2, {6, 0, 0, 0, 0}, 2, 2};
	Liminal = {2, {0, 0, 3, 3, 0}, 2, 2};
	Swamp = {2, {3, 0, 0, 3, 0}, 2, 2};
	Ruins = {2, {0, 3, 0, 3, 0}, 2, 2};
	Infestation = {2, {0, 4, 0, 0, 2}, 2, 2};
	Pizzeria = {2, {0, 0, 0, 4, 2}, 2, 2};
	Station = {2.5, {0, 0, 0, 6, 4}, 2.5, 2.5};
	Chessboard = {2.5, {0, 0, 0, 6, 0}, 2.5, 2.5};
	Twofold = {2.5, {9, 0, 0, 1, 0}, 2.5, 2.5};
	Volcano = {2.5, {6, 0, 3, 1, 0}, 2.5, 2.5};
	Graveyard = {2.5, {0, 6, 3, 1, 0}, 2.5, 2.5};
	Powerhouse = {2.5, {0, 0, 0, 9, 1}, 2.5, 2.5};
	Everfrost = {2.5, {0, 0, 0, 1, 9}, 2.5, 2.5};
	Seasonal = {2.5, {2, 2, 2, 2, 2}, 2.5, 2.5};
	["Mudded Cavern"] = {2, {1, 1, 0, 0, 0}, 2, 2};
	Plumrealm = {1.5, {0, 0, 4, 4, 0}, 1.5, 1.5};
	Painlands = {2.5, {8, 0, 0, 0, 0}, 2.5, 2.5};
	["No Escape"] = {0, {0, 0, 0, 0, 0}, 0, 0};
	Battleplate = {1, {0, 0, 0, 0, 0}, 1, 1};
	Battlehouse = {1.5, {0, 0, 0, 0, 0}, 1.5, 1.5};
	Wastelands = {2, {0, 0, 0, 0, 0}, 2, 2};
	Glacier = {2, {0, 0, 0, 0, 0}, 2, 2};
	Greenscreen = {0, {0, 0, 0, 0, 0}, 0, 0};
	Maze = {0, {0, 0, 0, 0, 0}, 0, 0};
	Training = {0, {0, 0, 0, 0, 0}, 0, 0};
	Typical = {0, {0, 0, 0, 0, 0}, 0, 0};
	["Ruined Facility"] = {2, {0, 20, 10, 30, 0}, 2, 2};
	["Flooded Cavern"] = {1, {0, 0, 0, 0, 0}, 1, 1};
	["Ruined Warehouse"] = {1, {40, 25, 60, 120, 15, 1}, 1, 1};
	["Ghost Town"] = {1, {120, 20, 15, 30, 15, 1}, 1, 1};
	["Eruption Site"] = {1, {60, 150, 40, 60, 30, 3}, 1, 1};
	["Blazing Wasteland"] = {1, {150, 15, 50, 90, 15, 4}, 1, 1};
	["Destroyed Remnant"] = {1, {90, 15, 15, 90, 100, 2}, 1, 1};
	["Fated Plate"] = {1, {40, 40, 40, 40, 40, 1}, 1, 1};
	["Demolished Depot"] = {1, {30, 150, 30, 90, 30, 1}, 1, 1};
	Breakthrough = {1, {0, 0, 0, 0, 0, 1}, 1, 1};
	Unnamedtown = {2, {0, 0, 0, 0, 0}, 1, 1, {
		["ðŸŸ "] = 50;
		["ðŸ¬"] = 2;
	}, {
		["ðŸŸ "] = 200;
		["ðŸ¬"] = 20;
	}};
	Namedtown = {1, {0, 0, 0, 0, 0}, 1, 1, {
		["ðŸŸ "] = 3;
	}, {
		["ðŸŸ "] = 3;
		["ðŸ¬"] = 3;
	}};
	["Frosted Mine"] = {1, {0, 0, 0, 3, 5}, 1, 1, {
		["â™¾ï¸"] = 3;
		['+'] = 10;
	}, {
		["â™¾ï¸"] = 15;
		['+'] = 40;
	}};
	["Toxic Sewers"] = {1, {0, 2, 0, 2, 0}, 1, 1, {
		["â™¾ï¸"] = 2;
	}, {
		["â™¾ï¸"] = 6;
	}};
	["The Moon"] = {1, {0, 3, 0, 5, 3}, 1, 1, {
		["â™¾ï¸"] = 3;
	}, {
		["â™¾ï¸"] = 15;
	}};
}
module_upvr.TowerIcons = {}
module_upvr.SkinIcons = {}
module_upvr.Descs = {
	["Template I"] = {"Upgrade 1", "", {{"%s â†’ %s range\n", 25, 30, "range"}, {"Other"}}};
	["Template II"] = {"Upgrade 2", "", {{"%s â†’ %s range\n", 25, 30, "range"}, {"Other"}}};
	["Template III"] = {"Upgrade 3", "", {{"%s â†’ %s range\n", 25, 30, "range"}, {"Other"}}};
	["Template IV"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"%s range\n", 30, 30, "range"}, {"Other"}}};
	["Tazer I"] = {"Electromagnetic", "", {{"%s â†’ %s damage\n", 4, 12, "Damage"}, {"%s â†’ %s outer range\n", 37.5, 40, "Range"}, {"%s â†’ %s inner range\n", 18.75, 22, "Range"}, {"%s â†’ %s Shield HP\n", 0, 1, "Health"}, {"0.1 â†’ 0.15 stun time\n4 â†’ 6 max chain stun"}}};
	["Tazer II"] = {"Lightning Shower", "", {{"%s â†’ %s damage\n", 12, 26, "Damage"}, {"%s â†’ %s outer range\n", 40, 46, "Range"}, {"%s â†’ %s inner range\n", 22, 32, "Range"}, {"2 â†’ 3 stun radius\n8 â†’ 12 chain stun radius\n+ Charge Meter, charged from damaging\nWhen meter is full, spawns Thunder Cloud\n0.15 â†’ 0.2 stun time\n6 â†’ 8 max chain stun"}}};
	["Tazer III"] = {"A Series of Tubes", "", {{"%s â†’ %s damage\n", 26, 42, "Damage"}, {"Gains Protection. When lost, invincible for 4 seconds, charge bar refills\n"}, {"%s â†’ %s outer range\n", 46, 62.5, "Range"}, {"3 â†’ 4 stun radius\n12 â†’ 20 chain stun radius\nCharge Meter charges faster\n0.2 â†’ 0.3 stun time\nClouds can now combine into Stormclouds\n8 â†’ 10 max chain stun"}}};
	["Tazer IV"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"%s damage\n", 42, 42, "Damage"}, {"When Protection lost, invincible for 4 seconds, charge bar refills\n"}, {"%s outer range, %s inner range\n", 62.5, 32, "Range"}, {"4 stun radius\n20 chain stun radius\n1 Protection\n0.3 stun time\n12 max chain stun"}}};
	["Medic I"] = {"Hospitality", "", {{"%s â†’ %s firerate\n", 4, 3.5, "firerate"}, {"%s â†’ %s range\n", 18.75, 25, "Range"}, {"%s â†’ %s HP\n", 10, 12, "Health"}, {"%s â†’ %s healing\n", 1, 2, "Damage"}}};
	["Medic II"] = {"Physician", "", {{"%s â†’ %s firerate\n", 3.5, 3, "firerate"}, {"Now has access to all targetting options, and can target units with full HP!\nNow able to grant units Shield HP\n"}, {"%s â†’ %s healing\n", 2, 3, "Damage"}}};
	["Medic III"] = {"Savior", "", {{"%s â†’ %s range\n", 25, 28, "Range"}, {"%s â†’ %s firerate\n", 3, 2, "firerate"}, {"%s â†’ %s HP\n", 12, 20, "Health"}, {"%s â†’ %s Shield HP\n", 0, 5, "Health"}, {"Activated Ability: Heals all units in a medium radius for Healing x3\nRemoves stuns and status effects from units in a large radius\nIncreases Base Durability by Healing%"}}};
	["Medic IV"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"%s range\n", 28, 28, "Range"}, {"%s firerate\n", 2, 2, "firerate"}, {"%s HP\n", 20, 20, "Health"}, {"%s Shield HP\n", 5, 5, "Health"}, {"Activated Ability"}}};
	["Pulsar I"] = {"Pulsation", "", {{"%s â†’ %s damage per hit\n", 4, 5, "Damage"}, {"100 â†’ 200 DMG charge bar limit\n"}, {"1.96 â†’ 2.56x max ability firerate multiplier\n"}, {"%s â†’ %s range\n", 18.75, 22, "range"}, {"1% â†’ 2% enemy slowdown (Stackable)"}}};
	["Pulsar II"] = {"Ultracharge", "", {{"%s â†’ %s damage per hit\n", 5, 8, "Damage"}, {"%s â†’ %s range\n", 22, 25, "range"}, {"200 â†’ 400 DMG charge bar limit\n"}, {"2.56 â†’ 4x max ability firerate multiplier\nAbility also gives a small damage boost\n"}, {"2% â†’ 3% enemy slowdown (Stackable)"}}};
	["Pulsar III"] = {"Area Denial", "", {{"Gains Defense Bypass\n"}, {"%s â†’ %s damage per hit\n", 8, 12, "Damage"}, {"%s â†’ %s range\n", 25, 32, "range"}, {"400 â†’ 1,000 DMG charge bar limit\n"}, {"4 â†’ 6.25x max ability firerate multiplier\nAbility damage boost increased\n"}, {"3% â†’ 5% enemy slowdown (Stackable)"}}};
	["Pulsar IV"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"%s damage per hit, bypasses defense\n", 12, 12, "Damage"}, {"6.25x max ability firerate multiplier\n"}, {"%s range\n", 32, 32, "range"}, {"1,000 DMG charge bar limit\n5% enemy slowdown (Stackable)"}}};
	["Aviator I"] = {"High Caliber", "", {{"Tough against [FLOATING] enemies\n"}, {"%s â†’ %s bullet damage\n", 1, 2, "bullet damage"}, {"Bomb every 20 â†’ 15 shots\n"}, {"%s â†’ %s firerate\n", 0.18, 0.16, "Firerate"}, {"%s â†’ %s HP/Shield HP\n", 25, 30, "Health"}}};
	["Aviator II"] = {"Duple Shot", "", {{"%s â†’ %s bullet damage\n", 2, 3, "bullet damage"}, {"Adds a second turret to the plane. %s â†’ %s firerate\n", 0.16, 0.14, "Firerate"}, {"%s â†’ %s range\n", 15, 19, "Range"}, {"%s â†’ %s HP/Shield HP\n", 30, 40, "Health"}, {"0 â†’ 3 defense\n"}, {"Bomb every 15 â†’ 8 shots\n"}, {"%s â†’ %s bomb radius\n", 7, 9, "Radius"}}};
	["Aviator III"] = {"Threefold", "", {{"Strong against Traited enemies\n"}, {"%s â†’ %s bullet damage\n", 3, 4, "bullet damage"}, {"Adds a third turret to the plane. %s â†’ %s firerate\n", 0.14, 0.12, "Firerate"}, {"%s â†’ %s range\n", 19, 24, "Range"}, {"%s â†’ %s HP/Shield HP\n", 40, 50, "Health"}, {"3 â†’ 6 defense\n"}, {"Every 40 shots, fires 2 large missiles with very high damage and 2x radius"}}};
	["Aviator IV"] = {"National Safeguard", "", {{"%s â†’ %s bullet damage\n", 4, 5, "bullet damage"}, {"Armor-piercing bullets: Increased damage to Shield, ignore Bullet Immunity\n"}, {"%s â†’ %s HP/Shield HP\n", 50, 60, "Health"}, {"6 â†’ 9 defense\n"}, {"%s â†’ %s range\n", 24, 25, "Range"}, {"2 â†’ 3 missiles\n"}, {"Missiles can set enemies on fire\n"}}};
	["Aviator V"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"%s bullet damage\n", 5, 5, "bullet damage"}, {"Armor-piercing bullets\n"}, {"9 defense and %s HP/Shield HP\n", 60, 60, "Health"}, {"%s range\n", 25, 25, "Range"}, {"Missile with fire\n"}}};
	["Chesspiece I"] = {"Rook", "", {{"%s â†’ %s stomp range\n", 6.25, 9.5, "Range"}, {"%s â†’ %s HP\n", 30, 60, "Health"}, {"%s â†’ %s damage\n", 16, 18, "Damage"}, {"1 â†’ 2 defense"}}};
	["Chesspiece II"] = {"King", "", {{"%s â†’ %s Ability cooldown\n", 3, 2, "abilitycooldown"}, {"%s â†’ %s HP\n", 60, 90, "Health"}, {"%s â†’ %s damage\n", 18, 20, "Damage"}, {"Tough â†’ Massively Tough against Traited (2x â†’ 4x less dmg received)"}}};
	["Chesspiece III"] = {"Queen", "", {{"%s â†’ %s Ability cooldown\n", 2, 1, "abilitycooldown"}, {"%s â†’ %s stomp range\n", 9.5, 11.25, "Range"}, {"%s â†’ %s HP\n", 90, 180, "Health"}, {"%s â†’ %s damage\n", 20, 24, "Damage"}}};
	["Chesspiece IV"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"%s sec. Ability cooldown\n", 1, 1, "abilitycooldown"}, {"%s stomp range\n", 11.25, 11.25, "Range"}, {"%s HP\n", 180, 180, "Health"}, {"%s damage\n", 24, 24, "Damage"}, {"Massively Tough against Traited enemies"}}};
	["Soldier I"] = {"Practice", "", {{"%s â†’ %s range\n", 32, 35, "Range"}, {"%s â†’ %s firerate\n", 0.12, 0.1, "Firerate"}, {"%s â†’ %s HP\n", 12, 15, "Health"}, {"%s â†’ %s ammo", 12, 16, "Ammo"}}};
	["Soldier II"] = {"AK-47", "", {{"%s â†’ %s damage\n", 1, 2, "Damage"}, {"%s â†’ %s range\n", 35, 36, "Range"}, {"%s â†’ %s firerate\n", 0.1, 0.08, "Firerate"}, {"%s â†’ %s ammo\n", 16, 24, "Ammo"}, {"%s â†’ %s HP\n", 15, 20, "Health"}, {"Faster aiming\n"}, {"Can attack Floatings"}}};
	["Soldier III"] = {"Platemail", "", {{"%s â†’ %s damage\n", 2, 3, "Damage"}, {"%s â†’ %s range\n", 36, 38, "Range"}, {"%s â†’ %s ammo\n", 24, 32, "Ammo"}, {"%s â†’ %s HP\n", 20, 25, "Health"}}};
	["Soldier IV"] = {"Sweeping Sargeant", "", {{"Bypasses Defense\n"}, {"%s â†’ %s damage\n", 3, 6, "Damage"}, {"%s â†’ %s range\n", 38, 42, "Range"}, {"%s â†’ %s ammo\n", 32, 48, "Ammo"}, {"%s â†’ %s HP\n", 25, 30, "Health"}, {"0 â†’ 2 Shield HP"}}};
	["Soldier V"] = {"Super Soldier", "", {{"%s â†’ %s damage\n", 6, 7, "Damage"}, {"%s â†’ %s range\n", 42, 45, "Range"}, {"View height increased\n"}, {"Strong against Traited enemies"}}};
	["Soldier VI"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"Bypasses Defense\n"}, {"%s damage\n", 7, 7, "Damage"}, {"%s range\n", 45, 45, "Range"}, {"%s ammo\n", 48, 48, "Ammo"}, {"%s HP\n", 30, 30, "Health"}, {"2 Shield HP"}}};
	["Assassin I"] = {"Incision", "", {{"%s â†’ %s swing rate\n", 0.8, 0.6, "Firerate3"}, {"0 â†’ 1 Shield HP\n"}, {"%s â†’ %s damage\n", 8, 14, "Damage", nil, {"Hood", "Business"}}, {"%s â†’ %s damage\n", 16, 28, "Damage", {"Hood", "Business"}}, {"Special Stab Attack: x4 damage, applies Bleed"}}};
	["Assassin II"] = {"Slyness", "", {{"%s â†’ %s swing rate\n", 0.6, 0.5, "Firerate3"}, {"%s â†’ %s damage\n", 14, 16, "Damage", nil, {"Hood", "Business"}}, {"%s â†’ %s damage\n", 28, 32, "Damage", {"Hood", "Business"}}, {"Stabs faster\nCan dodge attacks\nOccasionally throws knife. Deals double damage, "}, {"%s range", 20, 20, "Range", nil, {"Hood", "Business"}}, {"%s range", 20, 20, "Range", {"Hood", "Business"}}}};
	["Assassin III"] = {"Britain", "", {{"%s â†’ %s swing rate\n", 0.5, 0.4, "Firerate3"}, {"%s â†’ %s knife throw range\nEmergency cloak on low health\nWhen emergency cloak activates, stays at distance and throws knives", 20, 30, "Range", nil, {"Hood", "Business"}}, {"%s â†’ %s knife throw range", 20, 30, "Range", {"Hood", "Business"}}}};
	["Assassin IV"] = {"Razor-sharp", "", {{"%s â†’ %s swing rate\n", 0.4, 0.3, "Firerate3"}, {"%s â†’ %s damage\n", 16, 24, "Damage", nil, {"Hood", "Business"}}, {"%s â†’ %s damage\n", 32, 48, "Damage", {"Hood", "Business"}}, {"%s â†’ %s knife throw range", 30, 40, "Range", nil, {"Hood", "Business"}}, {"%s â†’ %s knife throw range", 30, 40, "Range", {"Hood", "Business"}}}};
	["Assassin V"] = {"Anticipation", "", {{"%s â†’ %s swing rate\n", 0.3, 0.2, "Firerate3"}, {"%s â†’ %s damage\n", 24, 36, "Damage", nil, {"Hood", "Business"}}, {"%s â†’ %s damage\n", 48, 72, "Damage", {"Hood", "Business"}}, {"%s â†’ %s knife throw range\n", 40, 50, "Range", nil, {"Hood", "Business"}}, {"%s â†’ %s knife throw range\n", 40, 50, "Range", {"Hood", "Business"}}, {"Activated ability: The Assassin uncloaks and parries for 0.5 seconds; Any enemies that attack Assassin during parry lose Protection and receive devastating damage; Unusable if Assassin is uncloaked\nIncreases Emergency Cloak time by 50%", nil, nil, nil, nil, {"Hood", "Business"}}, {"Activated ability: The Assassin uncloaks and parries for 0.5 seconds; Any enemies that attack Assassin during parry lose Protection and receive devastating damage", nil, nil, nil, {"Hood", "Business"}}}};
	["Assassin VI"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"%s swing rate\n", 0.2, 0.2, "Firerate3"}, {"%s damage\n", 36, 36, "Damage", nil, {"Hood", "Business"}}, {"%s damage\n", 72, 72, "Damage", {"Hood", "Business"}}, {"%s knife throw range", 50, 50, "Range", nil, {"Hood", "Business"}}, {"%s knife throw range", 50, 50, "Range", {"Hood", "Business"}}, {"\nActivated ability"}}};
	["Blockbuster I"] = {"Bombardment", "", {{"%s â†’ %s throw rate\n", 1.2, 0.8, "Firerate"}, {"%s â†’ %s range\n", 28, 32, "Range"}, {"%s â†’ %s damage\n", 12, 15, "Damage"}, {"%s â†’ %s explosion radius", 11.25, 12.5, "Radius"}}};
	["Blockbuster II"] = {"Double Trouble", "", {{"%s â†’ %s throw rate\n", 0.8, 0.75, "Firerate"}, {"%s â†’ %s range\n", 32, 35, "Range"}, {"%s â†’ %s damage\n", 15, 22, "Damage"}, {"Now throws two bombs\n"}, {"Second bomb takes longer to detonate", nil, nil, nil, nil, "Flyer"}}};
	["Blockbuster III"] = {"Torpedo Trinity", "", {{"%s â†’ %s damage\n", 22, 33, "Damage"}, {"%s â†’ %s explosion radius\n", 12.5, 15, "Radius"}, {"Now throws three bombs\n"}, {"New ability: Throws a large bomb that deals extreme damage and stuns enemies"}, {", and takes longer to detonate", nil, nil, nil, nil, "Flyer"}}};
	["Blockbuster IV"] = {"Ransacker", "", {{"%s â†’ %s damage\n", 33, 36, "Damage"}, {"Ability damage multiplier increased\n"}, {"Bombs spawn mini-bombs after exploding that target an enemy and explode instantly, dealing %s damage\n", 18, 18, "Damage"}, {"%s â†’ %s range\n", 35, 38, "Range"}}};
	["Blockbuster V"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"%s damage\n", 36, 36, "Damage"}, {"%s explosion radius\n", 15, 15, "Radius"}, {"Throws three bombs that explode into mini-bombs with %s damage\n", 18, 18, "Damage"}, {"%s range", 38, 38, "Range"}}};
	["Businessman I"] = {"Coinage", "", {{"%s â†’ %s range\n", 12.5, 18.5, "Range"}, {"%s â†’ %s sec. base income rate ", 25, 15, "Firerate"}, {"(%s â†’ %s sec. added income rate per player)", 9, 6, "Firerate"}, {"\n%s â†’ %s maximum firerate, 3% â†’ 2.2% slower firerate each tick (1 Tick = Base Firerate x2)\nNo longer loses money gain over time", 2, 1.66, "Firerate"}}};
	["Businessman II"] = {"\"Resources\"", "", {{"%s â†’ %s base money gain\n", 4, 7, "Damage"}, {"%s â†’ %s range\n", 18.5, 25, "Range"}, {"3 â†’ 2 units per. money gained\n8 â†’ 6 units per. income gained\n"}, {"%s â†’ %s sec. base income rate ", 15, 12, "Firerate"}, {"(%s â†’ %s sec. added income rate per player)", 6, 3, "Firerate"}, {"\n%s â†’ %s maximum firerate, 2.2% â†’ 1% slower firerate each tick (1 Tick = Base Firerate x2)", 1.66, 1.33, "Firerate"}}};
	["Businessman III"] = {"Aspiring Agent", "", {{"%s â†’ %s base money gain\n", 7, 10, "Damage"}, {"%s â†’ %s range\n", 25, 32, "Range"}, {"2 â†’ 1 unit per. money gained\n6 â†’ 4 units per. income gained\n"}, {"%s â†’ %s sec. base income rate ", 12, 10, "Firerate"}, {"(%s â†’ %s sec. added income rate per player)", 3, 2, "Firerate"}, {"\nFirerate no longer gets slower over time\nGives income immediately upon placement"}}};
	["Businessman IV"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"%s base money gain\n", 10, 10, "Damage"}, {"%s range\n", 32, 32, "Range"}, {"1 unit per. money gained\n4 units per. income gained\n"}, {"%s sec. base income rate ", 10, 10, "Firerate"}, {"(%s sec. added income rate per player)", 2, 2, "Firerate"}}};
	["Cryomancer I"] = {"Dry Ice", "", {{"Every 6th shot has extra Ice Cube shot\nIce Cubes have increased radius & freeze time, and +1% freeze immunity bypass\n"}, {"%s â†’ %s range\n", 22, 26, "Range"}}};
	["Cryomancer II"] = {"Permafrost", "", {{"Every other shot, throws ice shard (high freeze time)\nEvery 5th shot has Ice Cube\n"}, {"0% â†’ 1% freeze immunity bypass\n"}, {"%s â†’ %s effect time\n", 0.65, 0.75, "EffectTime"}, {"%s â†’ %s firerate\n", 1, 0.8, "Firerate"}, {"%s â†’ %s range\n", 26, 32, "Range"}}};
	["Cryomancer III"] = {"Snowgrave", "", {{"Every 5th shot has Ice Cube\n"}, {"%s â†’ %s radius\n", 3.75, 4.5, "Radius"}, {"%s â†’ %s effect time\n", 0.75, 0.9, "EffectTime"}, {"1% â†’ 2% freeze immunity bypass\n"}, {"%s â†’ %s firerate\n", 0.8, 0.7, "Firerate"}, {"%s â†’ %s range\n", 32, 35, "Range"}}};
	["Cryomancer IV"] = {"Hailstrike", "", {{"Activated Ability: Launch powerful ice cube at your position\nAbility has high Freeze Time and large Radius, and slows enemies\n"}, {"2% â†’ 3% freeze immunity bypass\n"}, {"%s â†’ %s effect time\n", 0.9, 1, "EffectTime"}}};
	["Cryomancer V"] = {"Volatile Verglazar", "", {{"%s â†’ %s effect time\n", 1, 1.1, "EffectTime"}, {"%s â†’ %s ability cooldown\n", 12, 8, "AbilityCooldown"}, {"3% â†’ 4% freeze immunity bypass\n"}, {"%s â†’ %s firerate\n", 0.7, 0.6, "Firerate"}, {"%s â†’ %s range\n", 35, 50, "Range"}}};
	["Cryomancer VI"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"Activated Ability\n4% freeze immunity bypass\n"}, {"%s firerate\n", 0.6, 0.6, "Firerate"}, {"%s range\n", 50, 50, "Range"}, {"%s sec. effect time\n", 1.1, 1.1, "EffectTime"}}};
	["Demoman I"] = {"Detonator", "", {{"%s â†’ %s damage\n", 9, 15, "Damage"}, {"%s â†’ %s firerate\n", 1, 0.95, "Firerate"}, {"%s â†’ %s range\n", 20, 22.5, "Range"}}};
	["Demoman II"] = {"Dynamites", "", {{"Every 4th bomb is a dynamite\n"}, {"Dynamite sets enemies on fire + Double damage and radius\n"}, {"%s â†’ %s damage\n", 15, 20, "Damage"}, {"%s â†’ %s firerate\n", 0.95, 0.9, "Firerate"}, {"%s â†’ %s range\n", 22.5, 26, "Range"}}};
	["Demoman III"] = {"Nitroglycerin", "", {{"Every 3rd bomb is a dynamite\n"}, {"Activated Ability: Hellfire! Increased range & firerate, next 10 bombs are dynamite. Ends when dynamites are used.\n"}, {"%s â†’ %s damage\n", 20, 25, "Damage"}, {"%s â†’ %s firerate\n", 0.9, 0.7, "Firerate"}, {"%s â†’ %s range\n", 26, 28.5, "Range"}}};
	["Demoman IV"] = {"Insane Incendiarier", "", {{"Every 2nd bomb is a dynamite\n"}, {"Ability dynamites 10 â†’ 20\n"}, {"%s â†’ %s damage\n", 25, 30, "Damage"}, {"%s â†’ %s firerate\n", 0.7, 0.65, "Firerate"}, {"%s â†’ %s range\n", 28.5, 29, "Range"}}};
	["Demoman V"] = {"Falling Through", "", {{"Limit changes to 4\n"}, {"Every bomb is a dynamite\n"}, {"Dynamites have a Level 3 [Wave Attack]\n"}, {"Ability dynamites 20 â†’ 30\n"}, {"%s â†’ %s firerate\n", 0.65, 1, "Firerate"}, {"%s â†’ %s range\n", 29, 35, "Range"}}};
	["Demoman VI"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"Limit changes to 4\n"}, {"Every bomb is a dynamite with Level 3 [Wave Attack]\n"}, {"Hellfire ability\n"}, {"%s damage\n", 30, 30, "Damage"}, {"%s firerate\n", 1, 1, "Firerate"}, {"%s range\n", 35, 35, "Range"}}};
	["Destructor I"] = {"High-Level Hazards", "", {{"%s â†’ %s damage\n", 25, 30, "Damage"}, {"%s â†’ %s firerate\n", 4, 3.5, "Firerate"}, {"%s â†’ %s range\n", 37.5, 40, "Range"}, {"Can attack Higher Floatings"}}};
	["Destructor II"] = {"Blistering Blaster", "", {{"%s â†’ %s damage\n", 30, 50, "Damage"}, {"%s â†’ %s firerate\n", 3.5, 3, "Firerate"}, {"%s â†’ %s explosion radius\n", 12.5, 16, "Radius"}, {"%s â†’ %s range\n", 40, 46, "Range"}}};
	["Destructor III"] = {"Meteoric Mines", "", {{"%s â†’ %s damage\n", 50, 80, "Damage"}, {"%s â†’ %s explosion radius\n", 16, 22, "Radius"}, {"%s â†’ %s range\n", 46, 50, "Range"}}};
	["Destructor IV"] = {"Extreme Eradication", "", {{"%s â†’ %s firerate\n", 3, 1, "Firerate", "AmmoPack"}, {"Now fires in a three-shot burst\n", nil, nil, nil, nil, "AmmoPack"}, {"Time between each shot in the burst = %s x0.1\n", 3, 3, "Firerate", "AmmoPack"}}};
	["Destructor V"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"Three-shot burst\n", nil, nil, nil, nil, "AmmoPack"}, {"%s damage\n", 80, 80, "Damage"}, {"%s firerate\n", 1, 1, "Firerate", "AmmoPack"}, {"%s firerate\n", 3, 3, "Firerate", nil, "AmmoPack"}, {"%s explosion radius\n", 22, 22, "Radius"}, {"%s range\n", 50, 50, "Range"}}};
	["Dissolver I"] = {"Powerful Plasma", "", {{"%s â†’ %s sec. effect time\n", 5, 6, "EffectTime"}, {"%s â†’ %s firerate\n", 1, 0.75, "Firerate", {"Flyer", "Stealth", "Business"}}, {"3 â†’ 4 bullets\n", nil, nil, nil, nil, {"Flyer", "Stealth", "Business"}}, {"%s â†’ %s Shield HP\n", 10, 20, "Health"}, {"0.1 â†’ 0.05 tick rate"}}};
	["Dissolver II"] = {"Evaporation", "", {{"%s â†’ %s sec. effect time\n", 6, 7, "EffectTime"}, {"%s â†’ %s firerate\n", 0.75, 0.5, "Firerate", {"Flyer", "Stealth", "Business"}}, {"4 â†’ 6 bullets\n", nil, nil, nil, nil, {"Flyer", "Stealth", "Business"}}, {"%s â†’ %s Shield HP\n", 20, 35, "Health"}}};
	["Dissolver III"] = {"Luminous Diffusion", "", {{"%s â†’ %s sec. effect time\n", 7, 8, "EffectTime"}, {"Gains [Wave Immunity]\n", nil, nil, nil, nil, {"Flyer", "Stealth", "Business"}}, {"1 â†’ 2 dissolving damage\n"}, {"%s â†’ %s Shield HP\n", 35, 45, "Health"}}};
	["Dissolver IV"] = {"1,000,000 Degrees", "", {{"%s â†’ %s sec. effect time\n", 8, 9, "EffectTime"}, {"%s â†’ %s firerate\n", 0.5, 0.43, "Firerate", {"Flyer", "Stealth", "Business"}}, {"6 â†’ 7 bullets\n", nil, nil, nil, nil, {"Flyer", "Stealth", "Business"}}, {"%s â†’ %s range\n", 37.5, 45, "Range"}, {"%s â†’ %s Shield HP\n", 45, 110, "Health"}, {"Immune to instant kills\n"}}};
	["Dissolver V"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"[Wave Immunity]\n", nil, nil, nil, nil, {"Flyer", "Stealth", "Business"}}, {"%s sec. effect time + 2 dissolving damage\n", 9, 9, "EffectTime"}, {"%s Shield HP\n", 110, 110, "Health"}, {"Immune to instant kills\n"}}};
	["Engineer I"] = {"Framework", "", {{"Engineer + Summons become Strong against [ICE] and [GRANITE] enemies\n"}, {"Builds more Drones\n", nil, nil, nil, {"Flyer", "Business", "Stealth"}}, {"Can now build Robot II\nRobot II can attack Floatings\n", nil, nil, nil, nil, {"Flyer", "Business", "Stealth"}}, {"%s â†’ %s range\n", 28, 31.25, "Range"}, {"%s â†’ %s building limit", 15, 20, "UnitLimitEngi"}}};
	["Engineer II"] = {"Manufacturer", "", {{"Can now build Drone II, a special drone with a toxic attack\n", nil, nil, nil, {"Flyer", "Business", "Stealth"}}, {"Can now build Wall I + An extra Robot II\n", nil, nil, nil, nil, {"Flyer", "Business", "Stealth"}}, {"%s â†’ %s range\n", 31.25, 34.75, "Range"}, {"%s â†’ %s firerate\n", 0.5, 0.4, "Firerate"}, {"%s â†’ %s building limit", 20, 25, "UnitLimitEngi"}}};
	["Engineer III"] = {"Superstructure", "", {{"Builds more Drones\n", nil, nil, nil, {"Flyer", "Business", "Stealth"}}, {"Can now build Robot III and Wall II\nRobot III can attack Higher Floatings\n", nil, nil, nil, nil, {"Flyer", "Business", "Stealth"}}, {"%s â†’ %s range\n", 34.75, 37.5, "Range"}, {"%s â†’ %s building limit\n", 25, 30, "UnitLimitEngi"}}};
	["Engineer IV"] = {"Handiwork of an Artificer", "", {{"Cooldown on all buildings decreased by 20%\n"}, {"Builds Drone III, a special drone that burns enemies\n", nil, nil, nil, {"Flyer", "Business", "Stealth"}}, {"Builds more Drones\n", nil, nil, nil, {"Flyer", "Business", "Stealth"}}, {"Can now build Wall III\n", nil, nil, nil, nil, {"Flyer", "Business", "Stealth"}}, {"Robot I replaced with extra Robot III\n", nil, nil, nil, nil, {"Flyer", "Business", "Stealth"}}, {"All Robots have 50% more Health\n", nil, nil, nil, nil, {"Flyer", "Business", "Stealth"}}, {"%s â†’ %s building limit", 30, 35, "UnitLimitEngi"}}};
	["Engineer V"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"%s range\n", 37.5, 37.5, "Range"}, {"Builds Drone I, Drone II, Drone III\n", nil, nil, nil, {"Flyer", "Business", "Stealth"}}, {"Builds Wall I, Wall II, Wall III, Robot II, Robot III\n", nil, nil, nil, nil, {"Flyer", "Business", "Stealth"}}, {"%s building limit", 35, 35, "UnitLimitEngi"}}};
	["Farmer I"] = {"Planting", "", {{"%s â†’ %s HP\n", 18, 22, "Health"}, {"Massively tough against [ICE] or [GRANITE] enemies]\n"}, {"Now plants one plant\n", nil, nil, nil, nil, "Flyer"}, {"1 â†’ 2 Attack Plants, Plants attack faster\n", nil, nil, nil, "Flyer"}, {"22 â†’ 30 base cash gain\n"}, {"%s â†’ %s damage\n", 20, 25, "damage"}, {"%s â†’ %s swing rate\n", 1.1, 0.9, "firerate"}, {"Rate of cash from dealing damage 1.25x â†’ 1.5x"}}};
	["Farmer II"] = {"Scimitar", "", {{"%s â†’ %s HP\n", 22, 28, "Health"}, {"Deals great damage to [ICE] or [GRANITE] enemies\n"}, {"Now plants three plants\n", nil, nil, nil, nil, "Flyer"}, {"2 â†’ 3 Attack Plants, Plants attack faster\n", nil, nil, nil, "Flyer"}, {"30 â†’ 40 base cash gain\n"}, {"%s â†’ %s damage\n", 25, 40, "damage"}, {"%s â†’ %s swing rate\n", 0.9, 0.7, "firerate"}, {"4.6 â†’ 5 range\n"}, {"Rate of cash from dealing damage 1.5x â†’ 2x"}}};
	["Farmer III"] = {"Mother Nature's Claymore", "", {{"%s â†’ %s HP\n", 28, 50, "Health"}, {"Now plants five plants with three different plant types\n", nil, nil, nil, nil, "Flyer"}, {"3 â†’ 4 Attack Plants, Plants are upgraded, Plants attack faster\n", nil, nil, nil, "Flyer"}, {"40 â†’ 70 base cash gain\n"}, {"%s â†’ %s damage\n", 40, 80, "damage"}, {"Gains 1 Shield HP every other attack\n"}, {"5 â†’ 6 range"}}};
	["Farmer IV"] = {"Agronomist's Power", "", {{"%s â†’ %s HP\n", 50, 100, "Health"}, {"70 â†’ 100 base cash gain\n"}, {"Deals INSANE damage to [ICE] or [GRANITE] enemies\n"}, {"4 â†’ 5 Attack Plants, Plants attack faster\n", nil, nil, nil, "Flyer"}, {"%s â†’ %s damage\n", 80, 85, "damage"}, {"On attack, creates a level 6 mini-wave\n"}, {" (Each mini-wave deals same damage as Farmer's attack)\n"}, {"%s â†’ %s swing rate\n", 0.7, 0.8, "firerate"}, {"Gains 1 Shield HP every other attack â†’ 1 Shield HP every attack\n"}, {"Rate of cash from dealing damage 2x â†’ 4x"}}};
	["Farmer V"] = {"Master of the Fields", "", {{"Limit changes to 2\n"}, {"%s â†’ %s HP, increased Armor\n", 100, 300, "Health"}, {"%s â†’ %s damage\n", 85, 150, "damage"}, {"%s â†’ %s swing rate\n", 0.8, 0.65, "firerate"}, {"Immune to stuns and more resistant to all status effects\n"}, {"6 â†’ 6.5 range\n"}, {"Able to counter the attack of enemies near it, striking them back with high damage.\n Can parry attacks from far away enemies"}}};
	["Farmer VI"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"%s HP, increased Armor\n", 300, 300, "Health"}, {"INSANE damage and Massively tough against [ICE] and [GRANITE] enemies\n"}, {"On attack, creates a level 6 mini-wave\n"}, {"%s swing rate\n", 0.65, 0.65, "firerate"}, {"%s damage\n", 150, 150, "damage"}, {"Gains 1 Shield HP every attack\n"}, {"Plants many plants with three different plant types\n", nil, nil, nil, nil, "Flyer"}, {"Attack Plants\n", nil, nil, nil, "Flyer"}}};
	["Ignitor I"] = {"Oxidize", "", {{"%s â†’ %s damage\n", 2, 3, "damage"}, {"%s â†’ %s sec. effect length\n", 1.5, 3, "EffectTime"}, {"%s â†’ %s range\n", 18, 22, "Range"}, {"0.5 â†’ 0.4 startup time"}}};
	["Ignitor II"] = {"Burning Passion", "", {{"More powerful fire. 12% â†’ 20% fire slowdown\n"}, {"%s â†’ %s damage\n", 3, 4, "damage"}, {"%s â†’ %s firerate\n", 0.2, 0.1, "firerate"}, {"%s â†’ %s sec. effect length\n", 3, 9, "EffectTime"}, {"0.4 â†’ 0.3 startup time"}}};
	["Ignitor III"] = {"Fourth-Degree Burns", "", {{"More powerful fire. 20% â†’ 30% fire slowdown, Fire bypasses fire immunity\n"}, {"%s â†’ %s damage\n", 4, 5, "damage"}, {"%s â†’ %s range\n", 22, 37.5, "Range"}, {"%s â†’ %s sec. effect length\n", 9, 12, "EffectTime"}, {"0.3 â†’ 0.2 startup time"}}};
	["Ignitor IV"] = {"Kindler of Wildfire", "", {{"Bypasses Explosive Resistance\n"}, {"%s â†’ %s damage\n", 5, 8, "damage"}, {"%s â†’ %s range\n", 37.5, 50, "Range"}}};
	["Ignitor V"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"30% fire slowdown, Fire bypasses fire immunity\n"}, {"%s damage\n", 8, 8, "damage"}, {"%s range\n", 45, 45, "Range"}, {"%s sec. effect length\n", 12, 12, "EffectTime"}, {"0.2 startup time"}}};
	["Guerrilla I"] = {"MORE GUN", "", {{"%s â†’ %s FIRERATE\n", 0.4, 0.32, "Firerate"}, {"%s â†’ %s RANGE\n", 22, 25, "range"}}};
	["Guerrilla II"] = {"MONKEY NOISES", "", {{"LIMIT CHANGES TO 3\n"}, {"%s â†’ %s FIRERATE\n", 0.32, 0.1, "Firerate"}, {"%s â†’ %s RANGE\n", 25, 28, "range"}, {"GORILLA NOISES ABILITY\n"}, {"+30% DAMAGE BUFF TO NEARBY UNITS"}}};
	["Guerrilla III"] = {"WAR MACHINE", "", {{"%s â†’ %s DAMAGE\n", 6, 7, "Damage"}, {"%s â†’ %s FIRERATE\n", 0.1, 0.07, "Firerate"}, {"%s â†’ %s RANGE\n", 28, 32, "range"}, {"+25% MORE GORILLA NOISES\n"}, {"INCREASED MONKEY DURATION"}}};
	["Guerrilla IV"] = {"ACTUALLY WAR MACHINE", "", {{"%s â†’ %s DAMAGE\n", 7, 10, "Damage"}, {"%s â†’ %s FIRERATE\n", 0.07, 0.06, "Firerate"}, {"%s â†’ %s RANGE\n", 32, 35, "range"}, {"+5% MORE GORILLA NOISES\n"}, {"GIVES PASSIVE 2.5% DAMAGE BOOST TO ALL UNITS IN RANGE"}}};
	["Guerrilla V"] = {"<u><font color='#FFBB45'>MAXIMUM LEVEL!!</font></u>", "", {{"%s DAMAGE\n", 10, 10, "Damage"}, {"%s FIRERATE\n", 0.06, 0.06, "Firerate"}, {"%s RANGE\n", 35, 35, "range"}, {"ABILITY GIVES 60% DAMAGE BOOST TO NEARBY UNITS\n"}, {"GIVES PASSIVE 2.5% DAMAGE BOOST TO ALL UNITS IN RANGE"}}};
	["Juggernaut I"] = {"True Defender", "", {{"%s â†’ %s HP/Shield HP\n", 25, 40, "Health"}, {"Attack Level 1 â†’ 2\n"}, {"50% â†’ 70% explosive resistance\n"}, {"80% â†’ 90% freeze resistance\n"}, {"3 â†’ 5 defense\n", nil, nil, nil, nil, "Flyer"}, {"Massive damage to [ALIEN] enemies"}}};
	["Juggernaut II"] = {"Really Heavy Weaponry", "", {{"%s â†’ %s HP/Shield HP\n", 40, 70, "Health"}, {"%s â†’ %s damage\n", 12, 30, "damage"}, {"%s â†’ %s swingrate\n", 4, 3, "firerate", nil, "Flyer"}, {"%s â†’ %s swingrate\n", 2, 1.5, "firerate", "Flyer"}, {"%s â†’ %s range\n", 6.25, 9.5, "range"}, {"%s â†’ %s radius\n", 4, 6, "Radius"}, {"70% â†’ 80% explosive resistance\n"}, {"90% â†’ 95% freeze resistance\n"}, {"5 â†’ 8 defense\n", nil, nil, nil, nil, "Flyer"}}};
	["Juggernaut III"] = {"Critical Strike", "", {{"%s â†’ %s HP/Shield HP\n", 70, 125, "Health"}, {"%s â†’ %s damage\n", 30, 60, "damage"}, {"Attack Level 2 â†’ 3\n"}, {"80% â†’ 90% explosive resistance\n"}, {"95% â†’ 100% freeze resistance\n"}, {"8 â†’ 12 defense\n", nil, nil, nil, nil, "Flyer"}}};
	["Juggernaut IV"] = {"Paladin", "", {{"%s â†’ %s HP/Shield HP\n", 125, 200, "Health"}, {"%s â†’ %s damage\n", 60, 70, "damage"}, {"Attack Level 3 â†’ 4\n"}, {"12 â†’ 16 defense", nil, nil, nil, nil, "Flyer"}, {" + 20% Superarmor\n"}}};
	["Juggernaut V"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"%s HP/Shield HP\n", 200, 200, "Health"}, {"%s damage\n", 70, 70, "damage"}, {"Attack Level 4\n"}, {"90% explosive resistance\n"}, {"100% freeze resistance\n"}, {"16 defense", nil, nil, nil, nil, "Flyer"}, {" + 20% Superarmor\n"}}};
	["Reaper I"] = {"Divination", "", {{"%s â†’ %s summon rate\n", 6, 7.5, "abilitycooldown"}, {"%s â†’ %s HP\n", 15, 20, "Health"}, {"%s â†’ %s zombie limit\n", 10, 13, "UnitLimit"}, {"Summons Zombie Scouts", nil, nil, nil, nil, "Zombies"}, {"\nSends Zombie Scout to enemy teams\nSent Zombie HP increased", nil, nil, nil, "Flyer", nil, "PVP"}}};
	["Reaper II"] = {"Necromancy", "", {{"%s â†’ %s summon rate\n", 7.5, 9, "abilitycooldown"}, {"%s â†’ %s HP\n", 20, 25, "Health"}, {"%s â†’ %s zombie limit\n", 13, 18, "UnitLimit"}, {"Summons Zombie II", nil, nil, nil, nil, "Zombies"}, {"\nSends Zombie II to enemy teams\nSent Zombie HP increased", nil, nil, nil, "Flyer", nil, "PVP"}}};
	["Reaper III"] = {"Witchcraft", "", {{"Short invincibility when hit\n"}, {"%s â†’ %s summon rate\n", 9, 10, "abilitycooldown"}, {"%s â†’ %s HP\n", 25, 30, "Health"}, {"%s â†’ %s zombie limit\n", 18, 25, "UnitLimit"}, {"Summons Zombie Soldier", nil, nil, nil, nil, "Zombies"}, {"\nSend Zombie Soldier to enemy teams\nSent Zombie HP increased\nEvery 8 Attacks, sends Sludgire to Enemy Teams", nil, nil, nil, "Flyer", nil, "PVP"}}};
	["Reaper IV"] = {"Undead Queen", "", {{"Invincibility cooldown 1 â†’ 0.5\n"}, {"Summons Zombie III\n", nil, nil, nil, nil, "Zombies"}, {"%s â†’ %s summon rate\n", 10, 14, "abilitycooldown"}, {"All zombie damage multiplied x3\n"}, {"All zombie walkspeed multiplied x1.5\n"}, {"All zombie health tripled, + 1 Shield HP\n"}, {"%s â†’ %s HP\n", 30, 60, "Health"}, {"%s â†’ %s zombie limit", 25, 34, "UnitLimit"}, {"\nSends Zombie III to enemy teams\nEvery 8 â†’ 7 Attacks, sends Sludgire to Enemy Teams", nil, nil, nil, "Flyer", nil, "PVP"}}};
	["Reaper V"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"Powerful zombies\n"}, {"%s HP\n", 60, 60, "Health"}, {"%s zombie limit\n", 34, 34, "UnitLimit"}, {"\nSend 5 Zombies and Sludgire to enemy teams", nil, nil, nil, "Flyer", nil, "PVP"}}};
	["Recon I"] = {"Handling", "", {{"%s â†’ %s damage\n", 5, 7, "Damage"}, {"%s â†’ %s range\n", 20, 22, "Range"}, {"Faster burst + 3 â†’ 4 burst shots\n", nil, nil, nil, nil, "AmmoPack"}}};
	["Recon II"] = {"Smoke Bomb", "", {{"Ability: Smoke Bomb\nThrows a grenade that stun enemies for 4 seconds\n"}, {"%s â†’ %s damage\n", 7, 10, "Damage"}, {"%s â†’ %s range\n", 22, 25, "Range"}, {"Faster burst + 4 â†’ 5 burst shots\n", nil, nil, nil, nil, "AmmoPack"}, {"0 â†’ 1 Shield HP"}}};
	["Recon III"] = {"Secret Service", "", {{"1 â†’ 2 stun grenades. 4 â†’ 5 sec. duration\n"}, {"%s â†’ %s damage\n", 10, 14, "Damage"}, {"%s â†’ %s range\n", 25, 30, "Range"}, {"Faster burst + 5 â†’ 6 burst shots\n", nil, nil, nil, nil, "AmmoPack"}}};
	["Recon IV"] = {"Surveillance", "", {{"2 â†’ 3 stun grenades\n"}, {"%s â†’ %s damage\n", 14, 20, "Damage"}, {"%s â†’ %s range\n", 30, 35, "Range"}, {"Faster burst + 6 â†’ 7 burst shots\n", nil, nil, nil, nil, "AmmoPack"}}};
	["Recon V"] = {"Shadow Operative", "", {{"3 â†’ 4 stun grenades\n"}, {"%s â†’ %s damage\n", 20, 36, "Damage"}, {"%s â†’ %s range\n", 35, 40, "Range"}, {"Faster burst + 7 â†’ 8 burst shots\n", nil, nil, nil, nil, "AmmoPack"}}};
	["Recon VI"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"4 stun grenades. 5 sec. duration\n"}, {"%s damage\n", 36, 36, "Damage"}, {"%s range\n", 40, 40, "Range"}, {"8 burst shots\n", nil, nil, nil, nil, "AmmoPack"}}};
	["Lookout I"] = {"Observation", "", {{"%s â†’ %s damage\n", 4, 8, "damage"}, {"%s â†’ %s minimum firerate\n", 0.5, 0.4, "firerate"}, {"%s â†’ %s maximum firerate\n", 2, 1.2, "firerate", nil, "Flyer"}, {"%s â†’ %s range\n", 95, 125, "Range"}, {"%s â†’ %s ammo\n", 12, 14, "Ammo", nil, "Flyer"}}};
	["Lookout II"] = {"Atomic Punch", "", {{"%s â†’ %s damage\n", 8, 9, "damage"}, {"Activated Ability: Firerate is 2x faster for 10 seconds"}, {" and does not get lower when enemies are further away", nil, nil, nil, nil, "Flyer"}, {'\n'}, {"%s-second cooldown\n", 20, 20, "AbilityCooldown"}, {"%s â†’ %s range\n", 125, 155, "Range"}, {"%s â†’ %s ammo\n", 14, 20, "Ammo", nil, "Flyer"}}};
	["Lookout III"] = {"Deity", "", {{"Limit changes to 1\n"}, {"Gains superhuman powers\nAbility removes stuns from Lookout & nearby units\n"}, {"%s â†’ %s damage\n", 9, 16, "damage"}, {"%s â†’ %s minimum firerate\n", 0.4, 0.06, "firerate"}, {"%s â†’ %s maximum firerate\n", 1.2, 0.24, "firerate", nil, "Flyer"}, {"%s â†’ %s range\n", 155, 325, "Range"}, {"%s â†’ %s ammo\n", 20, 999, "Ammo", nil, "Flyer"}}};
	["Lookout IV"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"Superhuman power\n"}, {"%s damage\n", 16, 16, "damage"}, {"%s minimum firerate\n", 0.06, 0.06, "firerate"}, {"%s maximum firerate\n", 0.24, 0.24, "firerate"}, {"%s range\n", 325, 325, "Range"}, {"%s ammo\n", 999, 999, "Ammo", nil, "Flyer"}}};
	["Sniper I"] = {"Marksman", "", {{"%s â†’ %s damage\n", 20, 22, "Damage"}, {"20% â†’ 25% shield pierce\n"}, {"%s â†’ %s range\n", 44, 46, "Range"}, {"%s â†’ %s firerate\n", 4, 3.5, "Firerate"}, {"%s â†’ %s HP\n", 12, 14, "Health"}, {"Strong against [FLOATING] enemies"}}};
	["Sniper II"] = {"Sharpshooter", "", {{"%s â†’ %s damage\n", 22, 28, "Damage"}, {"25% â†’ 35% shield pierce\n"}, {"%s â†’ %s range\n", 46, 50, "Range"}, {"%s â†’ %s firerate\n", 3.5, 3, "Firerate"}, {"%s â†’ %s HP\n", 14, 20, "Health"}, {"Can attack higher Floatings"}}};
	["Sniper III"] = {"A Good Job, Mate", "", {{"%s â†’ %s damage\n", 28, 38, "Damage"}, {"35% â†’ 50% shield pierce\n"}, {"%s â†’ %s range\n", 50, 55, "Range"}, {"%s â†’ %s HP\n", 20, 25, "Health"}, {"0 â†’ 4 Shield HP"}}};
	["Sniper IV"] = {"Wader from the Watchtower", "", {{"%s â†’ %s damage\nDeals more damage to enemies with more Health\n", 38, 70, "Damage"}, {"%s â†’ %s range\n", 55, 62.5, "Range"}, {"%s â†’ %s HP\n", 25, 30, "Health"}, {"%s â†’ %s firerate\n", 3, 2.5, "Firerate"}, {"Slightly knockbacks enemies"}}};
	["Sniper V"] = {"Across the World", "", {{"%s â†’ %s damage\n", 70, 110, "Damage"}, {"%s â†’ %s range\n", 62.5, 70, "Range"}, {"%s â†’ %s HP\n", 30, 40, "Health"}, {"Tough against Ranged enemies\n"}, {"Increased knockback distance"}}};
	["Sniper VI"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"%s damage\nDeals more damage to enemies with more Health\n", 110, 110, "Damage"}, {"%s range\n", 70, 70, "Range"}, {"%s HP\n", 40, 40, "Health"}, {"Knockbacks enemies\n"}, {"Tough against Ranged enemies"}}};
	["Swordfighter I"] = {"Piercing", "", {{"0 â†’ 1 Shield HP\n"}, {"%s â†’ %s HP\n", 4, 8, "Health"}, {"%s â†’ %s damage\n", 25, 50, "damage"}, {"%s â†’ %s swingrate\n", 0.6, 0.5, "firerate"}, {"10% â†’ 20% freeze resistance\n"}, {"0% â†’ 20% explosive resistance\n"}, {"Faster walkspeed"}}};
	["Swordfighter II"] = {"Agonizing", "", {{"0 â†’ 1 Protection\n"}, {"%s â†’ %s HP\n", 8, 18, "Health"}, {"%s â†’ %s damage\n", 50, 150, "damage"}, {"%s â†’ %s swingrate\n", 0.5, 0.45, "firerate"}, {"Level 0 â†’ 1 [Wave Attack]\n"}, {"20% â†’ 30% explosive and freeze resistance\n"}, {"0% â†’ 30% fire resistance\n"}, {"Faster walkspeed"}}};
	["Swordfighter III"] = {"Excruciating", "", {{"%s â†’ %s damage\n", 150, 200, "damage"}, {"%s â†’ %s HP\n", 18, 24, "Health"}, {"%s â†’ %s swingrate\n", 0.45, 0.4, "firerate"}, {"Level 1 â†’ 3 [Wave Attack]\n"}, {"30% â†’ 50% explosive, freeze, and fire resistance\n"}, {"0% â†’ 50% toxic resistance\n"}, {"Faster walkspeed"}}};
	["Swordfighter IV"] = {"Blade Keeper", "", {{"+0.5 range\n"}, {"%s â†’ %s damage\n", 200, 240, "damage"}, {"%s â†’ %s HP\n", 24, 30, "Health"}, {"Level 3 â†’ 5 [Wave Attack]\n"}, {"0% â†’ 100% stun resistance\n"}, {"Immune to instant kills\n"}, {"Faster walkspeed"}}};
	["Swordfighter V"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"%s damage\n", 240, 240, "damage"}, {"%s HP\n", 30, 30, "Health"}, {"%s swingrate\n", 0.4, 0.4, "firerate"}, {"Level 5 [Wave Attack]\n"}, {"Immune to instant kills\n"}, {"Fast walkspeed"}}};
	["Barrager I"] = {"Inflamed", "", {{"%s â†’ %s HP\n", 15, 18, "Health"}, {"%s â†’ %s damage\n", 2, 3, "Damage"}, {"Bullets set enemies on fire\nBarrager takes 1 fire damage per 5 seconds"}}};
	["Barrager II"] = {"Burning Excitement", "", {{"%s â†’ %s HP\n", 18, 25, "Health"}, {"%s â†’ %s Shield HP\n", 0, 5, "Health"}, {"%s â†’ %s damage\n", 3, 5, "Damage"}, {"Increased fire duration\nIncreased self-fire damage speed, 5 â†’ 3 sec"}}};
	["Barrager III"] = {"Supercharge", "", {{"%s â†’ %s Shield HP\n", 5, 15, "Health"}, {"%s â†’ %s damage\n", 5, 8, "Damage"}, {"%s â†’ %s ammo\n", 32, 20, "Ammo"}, {"%s â†’ %s range\n", 13, 16, "Range"}, {"Increased self-fire damage speed, 3 â†’ 1 sec\nBlue fire is more powerful, bypasses resistance\nBlue fire only lasts a short second"}}};
	["Barrager IV"] = {"Laminated Legs", "", {{"%s â†’ %s Shield HP\n", 15, 20, "Health"}, {"%s â†’ %s sec. cooldown\n", 12, 15, "Cooldown"}, {"%s â†’ %s range\n", 16, 20, "Range"}, {"Super-speed!!\nBlue fire length increased"}}};
	["Barrager V"] = {"Hard-Shell Wrecker", "", {{"%s â†’ %s Shield HP\n", 20, 40, "Health"}, {"%s â†’ %s sec. cooldown\n", 15, 30, "Cooldown"}, {"%s â†’ %s range\n", 20, 22, "Range"}, {"%s â†’ %s damage\n", 8, 12, "Damage"}, {"1 â†’ 8 Defense\n"}, {"Gains [Wave/Surge Immunity]"}}};
	["Barrager VI"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"%s Shield HP\n", 40, 40, "Health"}, {"%s sec. cooldown\n", 30, 30, "Cooldown"}, {"%s range\n", 22, 22, "Range"}, {"%s damage\n", 12, 12, "Damage"}, {"8 Defense\n"}, {"[Wave/Surge Immunity]"}}};
	["Turreter I"] = {"Higher Caliber", "", {{"%s â†’ %s damage\n", 4, 6, "Damage"}, {"%s â†’ %s Shield HP\n", 2, 4, "Health"}}};
	["Turreter II"] = {"Improved Handling", "", {{"%s â†’ %s firerate\n", 0.25, 0.2, "Firerate"}, {"%s â†’ %s range\n", 28, 32, "Range"}}};
	["Turreter III"] = {"Radioactive", "", {{"%s â†’ %s Shield HP\n", 4, 6, "Health"}, {"0 â†’ 1 defense\nActivated Ability: Toxic Splatter!\nShoots grenade at your position, creates puddles that cover enemies in radioactive waste"}}};
	["Turreter IV"] = {"Penetration", "", {{"%s â†’ %s Shield HP\n", 6, 10, "Health"}, {"%s â†’ %s damage + extra damage to Shield HP\n", 6, 10, "Damage"}, {"1 â†’ 4 defense\n"}, {"%s â†’ %s ability radius\n", 7.5, 9.5, "Radius"}, {"Ability puddle length 2.5 â†’ 3.5 sec."}}};
	["Turreter V"] = {"Duo Cannon", "", {{"%s â†’ %s Shield HP\n", 10, 12, "Health"}, {"%s â†’ %s range\n", 32, 40, "Range"}, {"%s â†’ %s firerate\n", 0.2, 0.18, "Firerate"}, {"%s â†’ %s ability radius\n", 9.5, 10, "Radius"}, {"%s â†’ %s sec. ability cooldown\n", 8, 7, "AbilityCooldown"}, {"Ability now shoots two grenades\nAbility puddle length 3.5 â†’ 4.5 sec.\n View height 6 â†’ 8"}}};
	["Turreter VI"] = {"Into the Future", "", {{"%s â†’ %s damage. Now penetrates shields and Defense\n", 10, 15, "Damage"}, {"%s â†’ %s Shield HP\n", 12, 25, "Health"}, {"4 â†’ 10 defense\n"}, {"%s â†’ %s firerate\n", 0.18, 0.15, "Firerate"}, {"%s â†’ %s ability radius\n", 10, 12.5, "Radius"}, {"%s â†’ %s sec. ability cooldown\n", 10, 8, "AbilityCooldown"}, {"Ability effect is stronger, puddle length 4.5 â†’ 5.5 sec."}}};
	["Turreter VII"] = {"Level Three", "", {{"%s â†’ %s damage\n", 15, 18, "Damage"}, {"%s â†’ %s Shield HP\n", 25, 35, "Health"}, {"10 â†’ 25 defense\n"}, {"%s â†’ %s sec. ability cooldown\n", 7, 6, "AbilityCooldown"}, {"Ability puddle length 5.5 â†’ 6.5 sec.\n View height 8 â†’ 10"}}};
	["Turreter VIII"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"%s damage\n", 18, 18, "Damage"}, {"%s Shield HP\n", 35, 35, "Health"}, {"25 defense\n"}, {"%s range\n", 40, 40, "Range"}, {"%s firerate\n", 0.15, 0.15, "Firerate"}, {"%s sec. ability cooldown\n", 6, 6, "AbilityCooldown"}}};
	["Airstrike I"] = {"Powerful Explosion", "", {{"%s â†’ %s damage\n", 300, 600, "Damage"}, {"12 â†’ 16 planes\n", nil, nil, nil, "Flyer"}, {"0.5% â†’ 1% percent damage based on enemy health\n", nil, nil, nil, nil, "Flyer"}, {"0.5 â†’ 1 stun length", nil, nil, nil, nil, "Flyer"}}};
	["Airstrike II"] = {"Blazing Duplex", "", {{"%s sec. â†’ %s sec. ability cooldown\n", 40, 35, "abilitycooldown", nil, {"Boots", "Boots2", "Boots3"}}, {"16 â†’ 20 planes\n", nil, nil, nil, "Flyer"}, {"%s sec. â†’ %s sec. ability cooldown\n", 30, 25, "abilitycooldown", {"Boots", "Boots2", "Boots3"}}, {"%s â†’ %s range\n", 45, 60, "Range"}, {"%s â†’ %s damage\n", 600, 1100, "Damage"}, {"Fire effect is upgraded and bypasses fire resistance\n"}, {"1% â†’ 1.5% percent damage based on enemy health\n", nil, nil, nil, nil, "Flyer"}, {"1 â†’ 1.5 stun length", nil, nil, nil, nil, "Flyer"}}};
	["Airstrike III"] = {"Toxic Quintuplet", "", {{"%s â†’ %s range\n", 60, 75, "Range"}, {"%s â†’ %s damage\n", 1100, 2200, "Damage"}, {"Bombs now apply radioactive effects\n"}, {"20 â†’ 24 planes\n", nil, nil, nil, "Flyer"}, {"1.5% â†’ 2% percent damage based on enemy health\n", nil, nil, nil, nil, "Flyer"}, {"1.5 â†’ 2 stun length", nil, nil, nil, nil, "Flyer"}}};
	["Airstrike IV"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"%s range\n", 75, 75, "Range"}, {"%s damage\n", 2200, 2200, "Damage"}, {"24 planes\n", nil, nil, nil, "Flyer"}, {"2% percent damage based on enemy health\n", nil, nil, nil, nil, "Flyer"}, {"Bombs apply various effects"}}};
	["Blaster I"] = {"Centered Sights", "", {{"%s â†’ %s Shield HP\n", 10, 20, "Health"}, {"2 â†’ 5 defense\n"}, {"%s â†’ %s damage\n", 120, 150, "Damage"}, {"%s â†’ %s firerate\n", 7, 6, "Firerate"}, {"%s â†’ %s range\n", 87.5, 112.5, "Range"}, {"%s â†’ %s blast radius\n", 3, 4, "Radius"}, {"Faster shots"}}};
	["Blaster II"] = {"Breaking Barriers", "", {{"%s â†’ %s Shield HP\n", 20, 40, "Health"}, {"5 â†’ 10 defense\n"}, {"%s â†’ %s damage\n", 150, 350, "Damage"}, {"%s â†’ %s firerate\n", 6, 5, "Firerate"}, {"%s â†’ %s range\n", 112.5, 125, "Range"}, {"%s â†’ %s blast radius\n", 4, 6, "Radius"}, {"More precise shots"}}};
	["Blaster III"] = {"Grand Cannon", "", {{"%s â†’ %s Shield HP\n", 40, 80, "Health"}, {"10 â†’ 15 defense\n"}, {"%s â†’ %s damage\n", 350, 500, "Damage"}, {"%s â†’ %s firerate\n", 5, 4.5, "Firerate"}, {"%s â†’ %s range\n", 125, 137.5, "Range"}, {"%s â†’ %s blast radius\n", 6, 8, "Radius"}, {"Faster and more precise shots"}}};
	["Blaster IV"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"%s Shield HP\n", 80, 80, "Health"}, {"15 defense\n"}, {"%s damage\n", 500, 500, "Damage"}, {"%s firerate\n", 4.5, 4.5, "Firerate"}, {"%s range\n", 137.5, 137.5, "Range"}, {"%s blast radius\n", 8, 8, "Radius"}}};
	["Noobfighter I"] = {"<u><font color='#ff9474'>Firebrand</font></u>", "", {{"An alternative sword\nLunges twice\nSets enemies on fire\nMassively tough against [ICE], with great damage\n"}, {"80% Freeze Immunity and 100% Fire Immunity"}}};
	["Noobfighter II"] = {"<u><font color='#88ff73'>Venomshank</font></u>", "", {{"An alternative sword"}, {"\n%s damage\n", 16, 16, "Damage"}, {"Poisons enemies\n"}, {"Strong against & great damage to [ZOMBIE]\n"}, {"100% Toxic Immunity"}}};
	["Noobfighter III"] = {"<u><font color='#c6c6c6'>Windforce</font></u>", "", {{"An alternative sword"}, {"\n%s damage\n", 16, 16, "Damage"}, {"Higher range\n"}, {"Knock enemies away\n"}, {"90% resistance to Knockback\n"}, {"Massively tough/massive damage against [HOLY]"}}};
	["Noobfighter IV"] = {"<u><font color='#5a4a67'>Darkheart</font></u>", "", {{"An alternative sword\n"}, {"%s damage\n", 32, 32, "Damage"}, {"Steals life from enemies\n"}, {"Higher range, Massively tough/massive damage against [GRANITE]\n"}, {"Loses some Superarmor\n"}, {"%s HP", 120, 120, "Health"}}};
	["Noobfighter V"] = {"<u><font color='#def2ff'>Illumina</font></u>", "", {{"An alternative sword"}, {"\n%s damage\n", 90, 90, "Damage"}, {"Swings get faster faster\n"}, {"Higher range, 50% Freeze, Fire, Toxic, Stun and Explosion Immunity\n"}, {"Level 2 [Wave Attack]"}}};
	["Noobfighter VI"] = {"<u><font color='#e7e3e4'>Ghostwalker</font></u>", "", {{"An alternative dagger\n"}, {"Damaging enemies grants short cloak and increases damage\n"}, {"Higher walkspeed than other swords\n"}, {"Lower range, Strong against Traited\n"}, {"Revives on death (3 revives)"}}};
	["Noobfighter VII"] = {"<u><font color='#8ed8e7'>Icedagger</font></u>", "", {{"An alternative dagger"}, {"\n%s damage\n", 12, 12, "Damage"}, {"Lunges twice\n"}, {"Freezes enemies for a short time\n"}, {"Lower range, Massively tough + strong against [BLAZE]\n"}, {"100% Freeze Immunity and 80% Fire Immunity"}}};
	["Noobfighter VIII"] = {"<u><font color='#94b1ff'>Azure Periastron</font></u>", "", {{"An alternative sword\n"}, {"%s damage\n", 85, 85, "Damage"}, {"Creates [Surge Attack] on lunge\n"}, {"%s HP\n", 200, 200, "Health"}, {"Higher range, massively tough against [Wave Attacks], 100% stun & freeze immunity\n"}, {"Counter-attacks when taking damage, knocking back enemies, reflecting projectiles, and shortly becoming invincible"}}};
	["Noobfighter IX"] = {"Linked Sword", "", {{"The classic sword\n"}, {"%s damage\n", 12, 12, "Damage"}, {"%s HP\n", 40, 40, "Health"}, {"Performs lunge attack after enough quick hits in a row\n"}, {"Normal range, Strong against Traited"}}};
	["Saboteur I"] = {"Protracted Bolt", "", {{"Enemies take 12% â†’ 16% more damage\n"}, {"1 â†’ 2 defense reduction\n"}, {"Enemies are slowed down to 95% â†’ 80% speed\n"}, {"Effect time increased 3 sec. â†’ 5 sec.", nil, nil, nil, nil, "Flyer"}, {"Effect time increased 2 sec. â†’ 4 sec.", nil, nil, nil, "Flyer"}}};
	["Saboteur II"] = {"Aim Training", "", {{"%s â†’ %s firerate\n", 9, 8, "Firerate"}, {"%s â†’ %s range\n", 37.5, 48, "Range"}, {"%s â†’ %s damage\n", 20, 50, "Damage"}, {"Cloak now persists after attack for a short time"}}};
	["Saboteur III"] = {"Filibuster", "", {{"%s â†’ %s range\n", 48, 56.25, "Range"}, {"%s â†’ %s damage\n", 50, 80, "Damage"}, {"Enemies take 16% â†’ 33% more damage\n"}, {"Enemy damage decreased further (50% dmg â†’ 33% dmg)\n"}, {"Enemies are slowed down to 80% â†’ 70% speed"}}};
	["Saboteur IV"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"%s range\n", 56.25, 56.25, "Range"}, {"%s damage\n", 80, 80, "Damage"}, {"Enemies take 33% more damage\n"}, {"Enemy damage decreased (33% dmg)\n"}, {"Enemies are slowed down to 70% speed"}}};
	["Ninja I"] = {"Handiness", "", {{"%s â†’ %s Shield HP\n", 2, 4, "Health", {"Business", "Hood"}}, {"%s â†’ %s swing rate\n", 0.9, 0.85, "Firerate"}, {"%s â†’ %s range\n", 32, 36, "Range"}, {"%s â†’ %s damage\n", 6, 8, "Damage"}, {"Special attack: Throws several shurikens every 5 seconds\n"}, {"Stealth time on 'death' increased\n", nil, nil, nil, nil, {"Hood", "Business"}}, {"3 â†’ 5 pierces"}}};
	["Ninja II"] = {"Kusarigama", "", {{"%s â†’ %s Shield HP\n", 4, 6, "Health", {"Business", "Hood"}}, {"%s â†’ %s swing rate\n", 0.85, 0.8, "Firerate"}, {"%s â†’ %s range\n", 36, 42, "Range"}, {"%s â†’ %s damage\n", 8, 15, "Damage"}, {"Basic attack throws 1 â†’ 2 shurikens\n"}, {"SP. atk throws 3 â†’ 4 shurikens, +20% SP. atk damage\n"}, {"Stealth time on 'death' increased\n", nil, nil, nil, nil, {"Hood", "Business"}}, {"5 â†’ 7 pierces"}}};
	["Ninja III"] = {"Duelist", "", {{"%s â†’ %s Shield HP\n", 6, 8, "Health", {"Business", "Hood"}}, {"%s â†’ %s swing rate\n", 0.8, 0.75, "Firerate"}, {"%s â†’ %s range\n", 42, 50, "Range"}, {"%s â†’ %s damage\n", 15, 24, "Damage"}, {"Basic attack throws 2 â†’ 3 shurikens\n"}, {"+20% SP. atk damage\n"}, {"Stealth time on 'death' increased\n", nil, nil, nil, nil, {"Hood", "Business"}}, {"7 â†’ 9 pierces"}}};
	["Ninja IV"] = {"Training", "", {{"%s â†’ %s Shield HP\n", 8, 10, "Health", {"Business", "Hood"}}, {"%s â†’ %s swing rate\n", 0.75, 0.7, "Firerate"}, {"%s â†’ %s range\n", 50, 60, "Range"}, {"%s â†’ %s damage\n", 24, 30, "Damage"}, {"Shurikens re-direct to closest enemy ONCE\n"}, {"+20% SP. atk damage\n"}, {"Stealth time on 'death' increased\n", nil, nil, nil, nil, {"Hood", "Business"}}, {"9 â†’ 11 pierces"}}};
	["Ninja V"] = {"Martial Artist", "", {{"%s â†’ %s Shield HP\n", 10, 12, "Health", {"Business", "Hood"}}, {"%s â†’ %s swing rate\n", 0.7, 0.65, "Firerate"}, {"%s â†’ %s range\n", 60, 70, "Range"}, {"%s â†’ %s damage\n", 30, 42, "Damage"}, {"Activated Ability: Throws smoke bomb to cloak nearby units\n"}, {"+20% SP. atk damage\n"}, {"Stealth time on 'death' increased + Extra life (1 â†’ 2 lives)\n", nil, nil, nil, nil, {"Hood", "Business"}}, {"11 â†’ 13 pierces"}}};
	["Ninja VI"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"%s Shield HP\n", 12, 12, "Health", {"Business", "Hood"}}, {"%s swing rate\n", 0.65, 0.65, "Firerate"}, {"%s range\n", 70, 70, "Range"}, {"%s damage\n", 42, 42, "Damage"}, {"Activated Ability: Throws smoke bomb to cloak nearby units\n"}, {"Special atk. with high damage\n"}, {"High stealth time on 'death' + 2 lives\n", nil, nil, nil, nil, {"Hood", "Business"}}, {"13 pierces"}}};
	["SWAT I"] = {"Extensive Training", "", {{"Unit range boosted by 10%\nUnit damage boosted by 25%\nNow spawns Rocketeers to deal Area damage"}}};
	["SWAT II"] = {"Better Tech", "", {{"Unit range boosted by 10%\nUnit damage boosted by 25%\nUnit ammo boosted by 50%\nUnit firerate boosted by 10%\nNow spawns a SWAT van to shoot & ram enemies"}}};
	["SWAT III"] = {"Highly Classified Info", "", {{"Unit range boosted by 10%, Unit damage boosted by 25%, Unit ammo boosted by 25%, Unit firerate boosted by 10%, Unit Defense increased by 6\nActivated ability: Temporary firerate & floating detection boost to SWAT's units, spawns reinforcements"}}};
	["SWAT IV"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"Unit range boosted by 30%, damage and ammo boosted by 75%, firerate boosted by 20%, Defense increased by 6\nActivated ability: Temporary boost to SWAT units, spawns reinforcements"}}};
	["Bank I"] = {"Investments", "", {{"%s â†’ %s range\n", 20, 25, "Range"}, {"%s â†’ %s cash stored\n", 18, 36, "Damage"}, {"%s â†’ %s cash limit\n", 750, 1500, "Damage"}, {"Economy unit firerate boost 6% â†’ 10%\n"}}};
	["Bank II"] = {"International", "", {{"%s â†’ %s range\n", 25, 30, "Range"}, {"%s â†’ %s cash stored\n", 36, 72, "Damage"}, {"%s â†’ %s cash limit\n", 1500, 7500, "Damage"}, {"Now gains +100% firerate boost when at 66% or more capacity\nEconomy unit firerate boost 10% â†’ 16%"}}};
	["Bank III"] = {"Inflation", "", {{"%s â†’ %s cash stored\n", 72, 135, "Damage"}, {"%s â†’ %s cash limit\n", 7500, 15000, "Damage"}, {"Ability now boosts map multiplier, increasing credz gain when round ends\nMultiplier is increased more when Bank is closer to cash limit\nEconomy unit firerate boost 16% â†’ 24%"}}};
	["Bank IV"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"%s cash stored\n", 135, 135, "Damage"}, {"%s cash limit\n", 15000, 15000, "Damage"}, {"Ability boosts map multiplier, increasing credz gain when round ends\nEconomy unit firerate boost 24%"}}};
	["Brawler I"] = {"Muscles", "", {{"%s â†’ %s HP\n", 16, 18, "Health"}}};
	["Brawler II"] = {"More Power", "", {{"%s â†’ %s HP\n", 18, 20, "Health"}, {"%s â†’ %s damage\n", 2, 4, "Damage"}}};
	["Brawler III"] = {"Better Muscles", "", {{"%s â†’ %s HP\n", 20, 25, "Health"}, {"1 â†’ 2 defense"}}};
	["Brawler IV"] = {"Protection", "", {{"%s â†’ %s HP\n", 25, 30, "Health"}}};
	["Brawler V"] = {"Cost-Efficient", "", {{"%s â†’ %s HP\n", 30, 35, "Health"}, {"%s â†’ %s swingrate\n", 1, 0.9, "Firerate"}, {"2 â†’ 3 defense\nEvery 3rd attack, pushes enemies a short distance"}}};
	["Brawler VI"] = {"Worth the Cash", "", {{"%s â†’ %s HP\n", 35, 42, "Health"}, {"%s â†’ %s damage\n", 4, 6, "Damage"}}};
	["Brawler VII"] = {"Meta", "", {{"%s â†’ %s HP\n", 42, 60, "Health"}, {"%s â†’ %s swingrate\n", 0.9, 0.8, "Firerate"}, {"3 â†’ 5 defense"}}};
	["Brawler VIII"] = {"Crazed", "", {{"Crazed version obtains godspeed.\n"}, {"Gains [Wave Immunity] and [Surge Immunity]\n", nil, nil, nil, nil, {"Hood", "Business"}}, {"%s â†’ %s HP\n", 60, 90, "Health"}, {"%s â†’ %s damage\n", 6, 8, "Damage"}, {"%s â†’ %s swingrate\n", 0.8, 0.5, "Firerate"}, {"%s â†’ %s sec. cooldown\n", 4, 3, "Cooldown"}, {"25% â†’ 75% Fire, Explosive, Ice resistances\n0% â†’ 75% Toxic and Stun resistance"}}};
	["Brawler IX"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"Crazed version has godspeed.\n"}, {"%s HP\n", 90, 90, "Health"}, {"%s damage\n", 8, 8, "Damage"}, {"%s swingrate\n", 0.5, 0.5, "Firerate"}, {"%s sec. cooldown\n", 3, 3, "Cooldown"}, {"75% Fire, Explosive, Ice resistances\n75% Toxic and Stun resistance"}}};
	["Constructor I"] = {"Machinery", "", {{"Spikes can attack 15 â†’ 20 times\n"}, {"Increases Proximity Mine damage by 50%\n"}, {"Now able to deploy Wall II, a much stronger version of the Wall I\n", nil, nil, nil, nil, {"Flyer", "Boots", "Boots2", "Boots3"}}, {"Now able to deploy Robots II, a much stronger version of the Robots I\n", nil, nil, nil, {"Flyer", "Boots", "Boots2", "Boots3"}}}};
	["Constructor II"] = {"Beam of Radiation", "", {{"Spikes can attack 20 â†’ 25 times\n"}, {"Wall II becomes Wall III, the strongest wall with 400 HP and 8 Defense", nil, nil, nil, nil, {"Flyer", "Boots", "Boots2", "Boots3"}}, {"Robots II becomes Robots III, a powerful sentry with rocket attacks\n", nil, nil, nil, {"Flyer", "Boots", "Boots2", "Boots3"}}, {"\nNow able to deploy Beamer robots that lock onto a target and gain damage over time\n"}}};
	["Constructor III"] = {"Forgery", "", {{"Spikes can attack 25 â†’ 30 times, and deal doubled damage\n"}, {"Now able to deploy Toxic Mines\nBuilding speed increased\nMost ability cooldowns lowered"}}};
	["Constructor IV"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"Spikes can attack 30 times\n"}, {"Deploy Walls, Mines, Spikes and Beamers\n\n", nil, nil, nil, nil, {"Flyer", "Boots", "Boots2", "Boots3"}}, {"Deploy Robots, Mines, Spikes and Beamers\n\n", nil, nil, nil, {"Flyer", "Boots", "Boots2", "Boots3"}}}};
	["Mudsplatter I"] = {"RANK I: RISING ENERGY", "", {{"%s â†’ %s mud firerate\n", 2, 1.8, "firerate"}, {"%s â†’ %s mud damage\n", 5, 7, "Damage"}, {"Enemies are slowed 4% â†’ 6% more by slowing effects, and affected by status effects for 5% â†’ 15% longer"}}};
	["Mudsplatter II"] = {"RANK II: FORAGE, POWER", "", {{"%s â†’ %s mud damage\n", 7, 10, "Damage"}, {"%s â†’ %s mud radius\n", 3.75, 5, "Radius"}, {"Enemies become Weak against [Traited] units, and are slowed 6% â†’ 8% more by slowing effects, and affected by status effects for 15% â†’ 20% longer"}}};
	["Mudsplatter III"] = {"RANK III: DOOM UPON ALL", "", {{"%s â†’ %s mud firerate\n", 1.8, 1.5, "firerate"}, {"%s â†’ %s mud damage\n", 10, 15, "Damage"}, {"3 â†’ 4 mud explosions\nEnemies are affected by status effects for 20 â†’ 40% longer, and can be Frozen & on Fire at the same time"}}};
	["Mudsplatter IV"] = {"RANK IV: MUD MANCER", "", {{"%s â†’ %s HP\n", 40, 80, "Health"}, {"Enemies are affected by status effects for 40 â†’ 50% longer\n"}, {"Summons mud enemies to fight for you\n"}}};
	["Mudsplatter V"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"%s mud firerate\n", 1.5, 1.5, "firerate"}, {"%s mud damage\n", 15, 15, "Damage"}, {"Summons mud enemies to fight for you\n"}, {"Enemies are slowed 8% more by slowing effects, affected by status effects for 50% longer, can be Frozen & on Fire at the same time, and Weak against [Traited] units"}}};
	["General I"] = {"Guidance", "", {{"%s sec. â†’ %s sec. ability cooldowns\n", 56, 48, "abilitycooldown", nil, {"Boots", "Boots2", "Boots3"}}, {"%s sec. â†’ %s sec. ability cooldowns\n", 36, 28, "abilitycooldown", {"Boots", "Boots2", "Boots3"}}, {"%s â†’ %s range\n", 31.25, 37.5, "Range"}, {"Spawns 1 more Soldier\nSoldiers are Rank II â†’ Rank III\n", nil, nil, nil, {"Flyer", "Boots", "Boots2", "Boots3"}}, {"Ability effect time 5 sec. â†’ 6 sec.\nOuter Range firerate boost 10% â†’ 15%\n"}, {"Passive range boost 4% â†’ 5%", nil, nil, nil, nil, "Flyer"}}};
	["General II"] = {"Discipline", "", {{"%s â†’ %s range\n", 37.5, 43.75, "Range"}, {"Spawns 1 more Soldier\nSoldiers are Rank III â†’ Rank IV\n", nil, nil, nil, {"Flyer", "Boots", "Boots2", "Boots3"}}, {"Ability effect time 6 sec. â†’ 8 sec.\nInner Range firerate boost 30% â†’ 45%\nOuter Range firerate boost 15% â†’ 20%\nAbilities now apply 10% damage boost\nNow applies passive 5% firerate boost\n"}, {"Passive range boost 5% â†’ 6%", nil, nil, nil, nil, "Flyer"}}};
	["General III"] = {"Founding the Foundation", "", {{"%s â†’ %s range\n", 43.75, 50, "Range"}, {"Spawns 1 more Soldier\nSoldiers are Rank IV â†’ Rank V\n", nil, nil, nil, {"Flyer", "Boots", "Boots2", "Boots3"}}, {"Inner Range firerate boost 45% â†’ 60%\nOuter Range firerate boost 20% â†’ 30%\nDamage boost 10% â†’ 20%\nPassive firerate boost 5% â†’ 15%\n"}, {"Passive range boost 6% â†’ 9%", nil, nil, nil, nil, "Flyer"}}};
	["General IV"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"%s range\n", 50, 50, "Range"}, {"Spawns many Rank V Soldiers\n", nil, nil, nil, {"Flyer", "Boots", "Boots2", "Boots3"}}, {"Ability effect time 8 sec.\nInner Range firerate boost 60%\nOuter Range firerate boost 30%\n20% damage boost\n15% passive firerate boost\n"}, {"9% passive range boost", nil, nil, nil, nil, "Flyer"}}};
	["Rocker I"] = {"Deafening Solo", "", {{"%s â†’ %s range\n", 25, 31.25, "Range"}, {"9 â†’ 18 Defense\n", nil, nil, nil, "Flyer"}, {"3 â†’ 6 Defense\n", nil, nil, nil, nil, "Flyer"}, {"10% â†’ 12% firerate boost\n"}, {"%s â†’ %s damage\n", 3, 6, "Damage"}, {"Ability stuns enemies for 4 â†’ 6 sec.\n"}}};
	["Rocker II"] = {"Exceptional Composer", "", {{"%s â†’ %s range\n", 31.25, 35, "Range"}, {"18 â†’ 27 Defense\n", nil, nil, nil, "Flyer"}, {"6 â†’ 9 Defense\n", nil, nil, nil, nil, "Flyer"}, {"%s â†’ %s ability cooldown\n", 50, 45, "AbilityCooldown", nil, "Flyer"}, {"%s â†’ %s ability cooldown\n", 55, 50, "AbilityCooldown", "Flyer"}, {"%s â†’ %s damage\n", 6, 12, "Damage"}, {"Ability applies extra firerate boost for 5 sec.\n12% â†’ 22% firerate boost"}}};
	["Rocker III"] = {"Professional Performer", "", {{"%s â†’ %s range\n", 35, 37.5, "Range"}, {"27 â†’ 36 Defense\n", nil, nil, nil, "Flyer"}, {"9 â†’ 12 Defense\n", nil, nil, nil, nil, "Flyer"}, {"%s â†’ %s damage\n", 12, 20, "Damage"}, {"+75% stun immunity\n22% â†’ 32% firerate boost\nAbility firerate boost 22% â†’ 64%\nAbility firerate boost length 5 sec. â†’ 6 sec.\nAbility stuns enemies for 6 â†’ 8 sec."}}};
	["Rocker IV"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"%s range\n", 37.5, 37.5, "Range"}, {"36 Defense\n", nil, nil, nil, "Flyer"}, {"12 Defense\n", nil, nil, nil, nil, "Flyer"}, {"%s damage\n", 20, 20, "Damage"}, {"75% stun immunity\n32% firerate boost\nAbility gives extra 64% firerate boost (6 sec.)"}}};
	["Rifler I"] = {"Hunter's Accuracy", "", {{"%s â†’ %s firerate\n", 4, 3, "firerate"}, {"%s â†’ %s damage\n", 8, 20, "damage", nil, "Flyer"}, {"%s â†’ %s damage\n2 â†’ 3 status damage\n", 2, 5, "damage", "Flyer"}, {"Bullet travel speed increased\n"}, {"%s â†’ %s range\n", 50, 62.5, "range"}, {"Activated Ability: Hunter's Power\n When used, starts charging \n When used again, deals extreme damage to target (More charge = More damage) + 1% percent damage based on enemy health"}}};
	["Rifler II"] = {"Projectile Reversal", "", {{"%s â†’ %s damage\n", 20, 44, "damage", nil, "Flyer"}, {"(1% â†’ 2% percent damage on ability)\n"}, {"%s â†’ %s damage\n3 â†’ 4 status damage\n", 5, 11, "damage", "Flyer"}, {"Bullet travel speed increased\n"}, {"%s â†’ %s range\n", 62.5, 75, "range"}, {"Bullets automatically reverse back to Rifler after 2 sec., able to hit previously hit enemies"}}};
	["Rifler III"] = {"Lazer Lead", "", {{"%s â†’ %s damage\n", 44, 96, "damage", nil, "Flyer"}, {"(2% â†’ 3% percent damage on ability)\n"}, {"%s â†’ %s damage\n4 â†’ 6 status damage\n", 11, 24, "damage", "Flyer"}, {"Bullet travel speed increased\n"}, {"%s â†’ %s range\n", 75, 87.5, "range"}, {"Increases limit of charge shot's damage"}}};
	["Rifler IV"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"%s damage\n", 96, 96, "damage", nil, "Flyer"}, {"(3% percent damage on ability)\n"}, {"%s damage\n6 status damage\n", 24, 24, "damage", "Flyer"}, {"%s range\n", 87.5, 87.5, "range"}, {"Reversing bullets\n"}}};
	["Enchantress I"] = {"Infestation", "", {{"New ability: Maggot Swarm\nSummons 6 maggots to attack enemies\n"}, {"Summons 1 more Zombie Scout & Zombie II\n"}}};
	["Enchantress II"] = {"Postmortem", "", {{"New ability: Life After Death\nBlesses units nearby your position, allowing them to persist after death as a ghost for a while\n", nil, nil, nil, nil, "Flyer"}, {"New ability: Death After Life\nDeals high damage to enemies; if defeated, they turn into a zombie that fights for you\n", nil, nil, nil, "Flyer"}, {"Summons 1 more Zombie Scout & Zombie II. Zombie II becomes Zombie III\n"}, {"6 â†’ 9 Maggot Swarm maggots"}}};
	["Enchantress III"] = {"The Forsaken", "", {{"%s â†’ %s range\n", 45, 80, "Range"}, {"Increases Life After Death ghost length (15 â†’ 20 default). All ability cooldowns reduced\n"}, {"New ability: Conversion\n"}, {"Deals high damage to enemies + Collected DMG from damaging previous enemies\nOn death, enemies with less health than DMG dealt convert to your side\n"}, {"Summons 1 more Zombie Scout & Zombie III. Zombie Scouts become Zombie Soldiers\n"}, {"9 â†’ 12 Maggot Swarm maggots"}}};
	["Enchantress IV"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"%s range\n", 80, 80, "Range"}, {"Maggots, Zombies, Ghosts, and Red Ghosts\n"}}};
	["Mecha I"] = {"Reinforced", "", {{"%s â†’ %s HP\n", 100, 150, "health"}, {"%s â†’ %s Shield HP\n", 200, 300, "health"}, {"3 â†’ 6 defense\n"}, {"%s â†’ %s damage\n", 12, 18, "bullet damage"}, {"%s â†’ %s firerate\n", 0.1, 0.09, "firerate"}, {"%s â†’ %s range\n", 31.25, 35, "range"}, {"%s â†’ %s walkspeed\n", 6, 7, "walkspeed"}, {"Every 55th shot, shoots rocket that creates 2-sec. [Surge Attack]"}}};
	["Mecha II"] = {"Legitimately Hazardous", "", {{"%s â†’ %s HP\n", 150, 200, "health"}, {"%s â†’ %s Shield HP\n", 300, 550, "health"}, {"6 â†’ 9 defense\n"}, {"%s â†’ %s damage\n", 18, 25, "bullet damage"}, {"%s â†’ %s range\n", 35, 37.5, "range"}, {"%s â†’ %s walkspeed\n", 7, 8, "walkspeed"}, {"Every 40th shot, shoots 4 rockets dealing AoE and direct damage"}}};
	["Mecha III"] = {"Wayfarer of the Void", "", {{"%s â†’ %s HP\n", 200, 300, "health"}, {"%s â†’ %s Shield HP\n", 550, 850, "health"}, {"9 â†’ 12 defense\n"}, {"%s â†’ %s damage\n", 25, 35, "bullet damage"}, {"Bullets deal normal damage to Shield and bypass Defense\n"}, {"%s â†’ %s firerate\n", 0.09, 0.08, "firerate"}, {"%s â†’ %s range\n", 37.5, 43.75, "range"}, {"%s â†’ %s walkspeed\n", 8, 9, "walkspeed"}, {"4 â†’ 5 rocket burst, %s â†’ %s rocket radius\n", 12.5, 15, "Radius"}, {"%s â†’ %s [Surge Attack] radius", 5, 7.5, "Radius"}}};
	["Mecha IV"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"%s HP\n", 300, 300, "health"}, {"%s Shield HP\n", 850, 850, "health"}, {"12 defense\n"}, {"%s damage\n", 35, 35, "bullet damage"}, {"Bullets deal normal damage to Shield and bypass Defense\n"}, {"%s firerate\n", 0.08, 0.08, "firerate"}, {"%s range\n", 43.75, 43.75, "range"}, {"%s walkspeed\n", 9, 9, "walkspeed"}, {"5 rocket burst, %s rocket radius\n", 15, 15, "Radius"}, {"%s [Surge Attack] radius", 7.5, 7.5, "Radius"}}};
	["Watchtower I"] = {"Plywood", "", {{"Placement area increased\n\n"}}};
	["Watchtower II"] = {"Timberland", "", {{"Adds 4 normal placement areas on each side\nIncreases hitbox size\n"}}};
	["Watchtower III"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"4 normal placement areas, 1 cliff placement area.\n\n"}}};
	["Artificer I"] = {"Doctor's Approval", "", {{"%s â†’ %s SHIELD HP\n", 2, 4, "health"}, {"%s â†’ %s damage\n", 7, 10, "Damage"}, {"%s â†’ %s range\n", 18.75, 20, "Range"}, {"'Sentinel' can be upgraded further\n"}, {"Able to build 'Mender' that heals nearby damaged units\n", nil, nil, nil, nil, "Flyer"}, {"Able to build 'Mini Sentinel' with cheaper price, but less damage than Sentinel\n", nil, nil, nil, "Flyer"}, {"More metal gained/spent, More boosts to Engineer buildings"}}};
	["Artificer II"] = {"Aerial Rockets", "", {{"%s â†’ %s ammo\n", 6, 4, "Ammo"}, {"%s â†’ %s HP, ", 12, 15, "health"}, {"%s â†’ %s SHIELD HP\n", 4, 8, "health"}, {"%s â†’ %s damage\n", 10, 14, "Damage"}, {"%s â†’ %s firerate\n", 0.7, 0.85, "Firerate"}, {"%s â†’ %s range\n", 20, 22.5, "Range"}, {"'Sentinel' and "}, {"'Mender' can be upgraded further\n", nil, nil, nil, nil, "Flyer"}, {"'Mini Sentinel' can be upgraded further\n", nil, nil, nil, "Flyer"}, {"Able to build 'Launcher' that launches packets of spikes at enemies\n", nil, nil, nil, nil, "Flyer"}, {"Able to build 'Launcher' that launches high-damage rockets at enemies\n", nil, nil, nil, "Flyer"}, {"More metal gained/spent, More boosts to Engineer buildings"}}};
	["Artificer III"] = {"Moving at Mach-Speed", "", {{"%s â†’ %s ammo\n", 4, 8, "Ammo"}, {"%s â†’ %s SHIELD HP\n", 8, 12, "health"}, {"%s â†’ %s damage\n", 14, 18, "Damage"}, {"%s â†’ %s firerate\n", 0.85, 0.95, "Firerate"}, {"%s â†’ %s range\n", 22.5, 25, "Range"}, {"%s â†’ %s walkspeed\n", 12, 16, "walkspeed"}, {"'Mender'", nil, nil, nil, nil, "Flyer"}, {"'Mini Sentinel'", nil, nil, nil, "Flyer"}, {" and 'Launcher' can be upgraded further\n"}, {"Able to build 'Overcharger' that greatly boosts walkspeed/firerate of Moving units\n"}, {"More metal gained/spent, More boosts to Engineer buildings"}}};
	["Artificer IV"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"%s SHIELD HP\n", 12, 12, "health"}, {"%s damage\n", 18, 18, "Damage"}, {"%s firerate\n", 0.95, 0.95, "Firerate"}, {"%s range\n", 25, 25, "Range"}, {"Sentinel, Mender, Launcher, and Overcharger", nil, nil, nil, nil, "Flyer"}, {"Sentinel, Mini Sentinel, Launcher, and Overcharger", nil, nil, nil, "Flyer"}}};
	["Eradicator I"] = {"Blunt Rockets", "", {{"%s â†’ %s SHIELD HP\n", 10, 20, "health"}, {"%s â†’ %s damage\n", 45, 70, "Damage"}, {"%s â†’ %s firerate\n", 12, 11.5, "Firerate"}, {"%s â†’ %s range\n", 56.25, 62.5, "Range"}, {"%s â†’ %s radius\n", 7.5, 10, "Radius"}, {"5 â†’ 6 base burst shots, 10 â†’ 12 max burst shots\n", nil, nil, nil, nil, "AmmoPack"}, {"Now deals extra direct damage to enemies in center of explosion"}}};
	["Eradicator II"] = {"Satellite Imagery", "", {{"%s â†’ %s SHIELD HP\n", 20, 50, "health"}, {"%s â†’ %s damage\n", 70, 110, "Damage"}, {"%s â†’ %s firerate\n", 11.5, 11, "Firerate"}, {"%s â†’ %s range\n", 62.5, 68.75, "Range"}, {"%s â†’ %s radius\n", 10, 12.5, "Radius"}, {"6 â†’ 7 base burst shots, 12 â†’ 14 max burst shots\n", nil, nil, nil, nil, "AmmoPack"}, {"Activated Ability: Barrage!\nAll Eradicators/Destructors in inner range gain +20%/+10% Range and Firerate for 5.5 seconds"}}};
	["Eradicator III"] = {"Eliminating Explosions", "", {{"%s â†’ %s SHIELD HP\n", 50, 100, "health"}, {"%s â†’ %s damage\n", 110, 150, "Damage"}, {"%s â†’ %s firerate\n", 11, 10, "Firerate"}, {"%s â†’ %s range\n", 68.75, 75, "Range"}, {"%s â†’ %s radius\n", 12.5, 15, "Radius"}, {"7 â†’ 8 base burst shots, 14 â†’ 16 max burst shots\n", nil, nil, nil, nil, "AmmoPack"}, {"Activated Ability length 5.5 sec. â†’ 7 sec. and Eradicators/Destructors gain +20%/+10% â†’ +40%/+20% Range and Firerate boost\nAbility now allows Eradicator to 50% bypass AoE resistance"}}};
	["Eradicator IV"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"%s SHIELD HP\n", 100, 100, "health"}, {"%s damage\n", 150, 150, "Damage"}, {"%s firerate\n", 10, 10, "Firerate"}, {"%s range\n", 75, 75, "Range"}, {"%s radius\n", 15, 15, "Radius"}, {"8 base burst shots, 14 max burst shots\n", nil, nil, nil, nil, "AmmoPack"}, {"Activated Ability: Barrage!\nAll Eradicators/Destructors in range gain +40%/+20% Range and Firerate for 7 seconds, and Eradicator bypasses 50% of AoE resistance"}}};
	["Wrecker I"] = {"Knocked Out", "", {{"%s â†’ %s SHIELD HP\n", 20, 30, "health"}, {"%s â†’ %s damage\n", 72, 132, "Damage"}, {"Bypasses enemy Defense\n Knockbacks enemies"}}};
	["Wrecker II"] = {"Vulnerable Wound", "", {{"%s â†’ %s SHIELD HP\n", 30, 50, "health"}, {"0% â†’ 1% percent damage based on enemy health\n"}, {"%s â†’ %s damage\n", 132, 260, "Damage"}, {"Fire effect bypasses Fire Immunity"}}};
	["Wrecker III"] = {"Sailor of the Skies", "", {{"%s â†’ %s SHIELD HP\n", 50, 70, "health"}, {"1% â†’ 2% percent damage based on enemy health\n"}, {"%s â†’ %s damage\n", 260, 440, "Damage"}, {"%s â†’ %s walkspeed\n", 20, 25, "walkspeed", nil, "Stealth"}, {"Gains Immunity to [Wave Attacks] and [Surge Attacks]\n", nil, nil, nil, nil, "Stealth"}, {"Extra money from damaging enemies multiplier 2x â†’ 3x"}}};
	["Wrecker IV"] = {"Destroyer", "", {{"%s â†’ %s SHIELD HP\n", 70, 100, "health"}, {"2% â†’ 3% percent damage based on enemy health\n"}, {"%s â†’ %s damage\n", 440, 700, "Damage"}, {"Fire effect is upgraded\n"}, {"Surge level 4 â†’ 8\n"}, {"Extra money from damaging enemies multiplier 3x â†’ 4x"}}};
	["Wrecker V"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"%s SHIELD HP\n", 100, 100, "health"}, {"3% percent damage based on enemy health\n"}, {"%s damage\n", 700, 700, "Damage"}, {"Surge level 8\n"}, {"%s walkspeed\n", 25, 25, "walkspeed", nil, "Stealth"}, {"Immune to [Wave Attacks] and [Surge Attacks]\n", nil, nil, nil, nil, "Stealth"}, {"4x extra money from damaging enemies"}}};
	["Mirror I"] = {"My Reflection", "", {{"%s â†’ %s HP\n", 6, 8, "health"}, {"Mirror breaks after %s â†’ %s parries\n", 10, 25, "Damage"}, {"Enemies below %s â†’ %s HP can be mirrored ", 15, 30, "Damage"}, {"(%s â†’ %s HP in Survival mode)\n", 30, 90, "Damage"}, {"Sent enemies below %s â†’ %s HP can be mirrored\n", 150, 300, "Damage", nil, nil, "PVP"}}};
	["Mirror II"] = {"Don't Look Away", "", {{"%s â†’ %s range\n", 16, 20, "range"}, {"%s â†’ %s HP\n", 8, 10, "health"}, {"Mirror breaks after %s â†’ %s parries\n", 25, 50, "Damage"}, {"Enemies below %s â†’ %s HP can be mirrored ", 30, 55, "Damage"}, {"(%s â†’ %s HP in Survival mode)\n", 90, 220, "Damage"}, {"Sent enemies below %s â†’ %s HP can be mirrored\n", 300, 550, "Damage", nil, nil, "PVP"}}};
	["Mirror III"] = {"Mimic Good", "", {{"%s â†’ %s HP\n", 10, 12, "health"}, {"Mirror breaks after %s â†’ %s parries\n", 50, 85, "Damage"}, {"Enemies below %s â†’ %s HP can be mirrored ", 55, 90, "Damage"}, {"(%s â†’ %s HP in Survival mode)\n", 220, 450, "Damage"}, {"Sent enemies below %s â†’ %s HP can be mirrored\n", 550, 900, "Damage", nil, nil, "PVP"}}};
	["Mirror IV"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"%s HP\n", 12, 12, "health"}, {"Mirror breaks after %s parries\n", 85, 85, "Damage"}, {"Enemies below %s HP can be mirrored ", 90, 90, "Damage"}, {"(%s HP in Survival mode)\n", 450, 450, "Damage"}, {"Sent enemies below %s HP can be mirrored\n", 900, 900, "Damage", nil, nil, "PVP"}}};
	["Chef I"] = {"Frosted Food", "", {{"%s â†’ %s HP\n", 20, 25, "health"}, {"New Ability: Ice Cream Sandwich"}, {"\nPositive Effect: Units become Strong against [ICE] enemies"}, {" and Enemies sent by Opponents\n", nil, nil, nil, nil, nil, "PVP"}, {"\nNegative Effect: Units are frozen for a short time"}}};
	["Chef II"] = {"Three-Star Unhealthiness", "", {{"%s â†’ %s healing/damage\n", 4, 6, "Damage"}, {"%s â†’ %s HP\n", 25, 30, "health"}, {"%s â†’ %s Burgers Ability cooldown\n", 25, 15, "abilitycooldown"}, {"Ice Cream Sandwich gives Strong against [BLAZE] enemies\n"}, {"New Ability: Mud Meal"}, {"\nOn Your Side: Units become immune to status effects for a short time"}, {"\nOn Opponents' Side: Units receive 'Mud' effect, becoming weak against Traited enemies and vulnerable to other effects", nil, nil, nil, nil, nil, "PVP"}}};
	["Chef III"] = {"Culinary Expertise?", "", {{"%s â†’ %s healing/damage\n", 6, 8, "Damage"}, {"%s â†’ %s HP\n", 30, 35, "health"}, {"Food is distributed faster\nIce Cream Sandwich gives stronger, better effects, and gives Massively Tough against [HOLY] enemies\n"}, {"New Ability: Healthy Carrots"}, {"\nOn Your Side: Units' negative status effects are removed, and Units regenerate HP"}, {"\nOn Opponents' Side: Reduces Unit's firerate and eyesight", nil, nil, nil, nil, nil, "PVP"}, {"Another New Ability: Pizza!"}, {"\nOn Your Side: Units heal and gain several good effects"}, {"\nOn Opponents' Side: Units get several bad effects", nil, nil, nil, nil, nil, "PVP"}}};
	["Chef IV"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"%s HP\n", 35, 35, "health"}, {"Ice Cream Sandwich with anti-Trait abilities\n"}, {"Mud Meal with muddy effects\n"}, {"Healthy Carrots that cure your units and provide regeneration\n"}, {"PIZZA with many effects!\n"}}};
	["Operative I"] = {"Smoke Grenades", "", {{"%s â†’ %s Shield HP\n", 1, 2, "health"}, {"%s â†’ %s damage\n", 3, 4, "damage"}, {"%s â†’ %s automatic ability cooldown (2x longer in Survival)\n", 20, 15, "abilitycooldown"}, {"%s â†’ %s Metalized cooldown\n", 60, 40, "abilitycooldown"}, {"New Ability: Range Helicopter\nIn PVP, use on Enemy Team's units to reduce their range\nIn Survival, use on your units to increase their range"}}};
	["Operative II"] = {"Stun Grenades", "", {{"%s â†’ %s HP, ", 12, 15, "health"}, {"%s â†’ %s damage, ", 4, 6, "damage"}, {"%s â†’ %s Firerate, ", 0.2, 0.18, "firerate"}, {"%s â†’ %s range\n", 25, 30, "range"}, {"%s â†’ %s automatic ability cooldown (2x longer in Survival)\n", 15, 12, "abilitycooldown"}, {"%s â†’ %s Metalized cooldown\n", 40, 30, "abilitycooldown"}, {"%s â†’ %s range ability cooldown (2x shorter in Survival)\n", 60, 50, "abilitycooldown"}, {"New Ability: Stun Helicopter\nIn PVP, use on Enemy Team's units to stun their units\nIn Survival, use on enemies to stun them"}}};
	["Operative III"] = {"Reprogrammed", "", {{"%s â†’ %s HP, ", 15, 20, "health"}, {"%s â†’ %s damage, ", 6, 10, "damage"}, {"%s â†’ %s Firerate, ", 0.18, 0.16, "firerate"}, {"%s â†’ %s range\n", 30, 35, "range"}, {"%s â†’ %s automatic ability cooldown (2x longer in Survival)\n", 12, 10, "abilitycooldown"}, {"%s â†’ %s Metalized cooldown\n", 30, 20, "abilitycooldown"}, {"%s â†’ %s range ability cooldown (2x shorter in Survival)\n", 50, 40, "abilitycooldown"}, {"%s â†’ %s stun ability cooldown (2x shorter in Survival)\n", 80, 60, "abilitycooldown"}, {"New Ability: Summon M-Menace\nIn PVP, sends Menace to the Enemy Team\nIn Survival, summons friendly Menace to help you"}}};
	["Operative IV"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"%s HP, ", 20, 20, "health"}, {"%s damage, ", 10, 10, "damage"}, {"%s Firerate, ", 0.16, 0.16, "firerate"}, {"%s range\n", 35, 35, "range"}, {"%s automatic ability cooldown (2x longer in Survival)\n", 10, 10, "abilitycooldown"}, {"%s Metalized cooldown\n", 20, 20, "abilitycooldown"}, {"%s range ability cooldown (2x shorter in Survival)\n", 40, 40, "abilitycooldown"}, {"%s stun ability cooldown (2x shorter in Survival)\n", 60, 60, "abilitycooldown"}}};
	["Spawner I"] = {"Cube Cannon", "", {{"Increases stats of all summons\nDancers dodge more and can parry projectiles\nSpawns Ninja\n"}, {"New ability: Fire the Cannon!\n"}, {"Spawner looks at your position and fires a giant cannon, creating a [Wave Attack] that deals large damage and knockback to enemies\n", nil, nil, nil, nil, {"Fire", "Flyer", "Boots2", "Snows", "Heaven", "Evil", "Stockpile", "Goggles"}}, {"Spawner looks at your position and fires a giant cannon, creating a [Wave Attack] that slows down enemies\n", nil, nil, nil, {"Stockpile", "Goggles"}}, {"Spawner fires a cannon at your position, dealing massive damage and knockback to enemies\n", nil, nil, nil, {"Fire", "Flyer"}}, {"Spawner fires water at your position, dealing sabotage effects to enemies\n", nil, nil, nil, {"Boots2", "Snows"}}, {"Spawner creates thunder at your position, dealing massive stun to enemies\n", nil, nil, nil, {"Heaven", "Evil"}}}};
	["Spawner II"] = {"Super Awesome", "", {{"Increases stats of all summons\nNew target options: Massively tough against [FLOATING], and Strong against [Ranged]\nSpawns Assassin\nReduces cooldown of the Cannon"}}};
	["Spawner III"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"Strong summons\nUltimate cannon\n\n"}}};
	["Snowman I"] = {"Crystal Armor", "", {{"%s â†’ %s damage\n", 6, 7, "Damage"}, {"%s â†’ %s range\n", 26, 32, "range"}, {"%s â†’ %s firerate\n", 1.05, 0.92, "Firerate"}, {"%s â†’ %s Health\n", 10, 15, "health"}, {"%s â†’ %s SHIELD HP\n", 0, 1, "health"}, {"Make enemies move and attack 3% â†’ 5% slower"}}};
	["Snowman II"] = {"Very, Very Cold", "", {{"%s â†’ %s damage\n", 7, 9, "Damage"}, {"%s â†’ %s range\n", 32, 40, "range"}, {"%s â†’ %s firerate\n", 0.92, 0.85, "Firerate"}, {"%s â†’ %s Health\n", 15, 20, "health"}, {"Make enemies move and attack 5% â†’ 8% slower\n"}, {"Gives 5% firerate boost to nearby units with [ICE] trait"}}};
	["Snowman III"] = {"Snow Storm!", "", {{"%s â†’ %s damage\n", 9, 12, "Damage"}, {"%s â†’ %s range\n", 40, 50, "range"}, {"%s â†’ %s firerate\n", 0.85, 0.82, "Firerate"}, {"%s â†’ %s SHIELD HP\n", 1, 10, "health"}, {"Make enemies move and attack 8% â†’ 14% slower\n"}, {"Gives 5% â†’ 8% firerate boost to nearby units with [ICE] trait"}}};
	["Snowman IV"] = {"Icicles", "", {{"%s â†’ %s damage\n", 12, 13, "Damage"}, {"%s â†’ %s firerate\n", 0.82, 0.8, "Firerate"}, {"%s â†’ %s SHIELD HP\n", 10, 30, "health"}, {"Summons friendly ice enemies every few attacks\n"}, {"Make enemies move and attack 14% â†’ 16% slower\n"}, {"Gives 8% â†’ 10% firerate boost to nearby units with [ICE] trait"}}};
	["Snowman V"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"%s damage\n", 13, 13, "Damage"}, {"%s range\n", 50, 50, "range"}, {"%s firerate\n", 0.8, 0.8, "Firerate"}, {"%s Health\n", 20, 20, "health"}, {"%s SHIELD HP\n", 30, 30, "health"}, {"Summons friendly ice enemies every few attacks\n"}, {"Make enemies move and attack 16% slower\n"}, {"Gives 10% firerate boost to nearby units with [ICE] trait"}}};
	["Toxicator I"] = {"Toxic Battery", "", {{"%s â†’ %s range\n", 70, 80, "range"}, {"%s â†’ %s firerate\n", 3.7, 3.5, "firerate"}, {"%s â†’ %s damage\n", 10, 13, "damage"}, {"%s â†’ %s effect time\n", 5, 6.5, "EffectTime"}, {"%s â†’ %s radius\n", 6, 6.5, "radius"}}};
	["Toxicator II"] = {"Acid Rain", "", {{"%s â†’ %s damage\n", 13, 16, "damage"}, {"%s â†’ %s effect time\n", 6.5, 8, "EffectTime"}, {"%s â†’ %s radius\n", 6.5, 8, "radius"}, {"%s â†’ %s firerate\n", 3.7, 1.85, "Firerate", "AmmoPack"}, {"Fires 1 â†’ 2 times\n", nil, nil, nil, nil, "AmmoPack"}, {"Puddles length 1.5 â†’ 1.75\n"}, {"Puddle effect is upgraded\n"}}};
	["Toxicator III"] = {"Radioactive", "", {{"%s â†’ %s range\n", 80, 85, "range"}, {"%s â†’ %s damage\n", 16, 22, "damage"}, {"%s â†’ %s effect time\n", 8, 11, "EffectTime"}, {"%s â†’ %s radius\n", 8, 8.5, "radius"}, {"Puddles length 1.75 â†’ 2\n"}}};
	["Toxicator IV"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"%s range\n", 85, 85, "range"}, {"%s damage\n", 22, 22, "damage"}, {"%s effect time\n", 11, 11, "EffectTime"}, {"%s radius\n", 8.5, 8.5, "radius"}, {"Puddles length 2\n"}}};
	["Striker I"] = {"Large", "", {{"0 â†’ 1 percent damage based on enemy health\n"}, {"%s â†’ %s HP\n", 150, 200, "health"}, {"%s â†’ %s firerate\n", 1.2, 1.1, "firerate"}, {"%s â†’ %s outer range\n", 20, 25, "range"}, {"Summons are upgraded\n"}, {"Stomps every 6 â†’ 5 attacks\n"}, {"Stomp damage increased\n"}}};
	["Striker II"] = {"Everyone's Rage", "", {{"%s â†’ %s damage. Attack now has extended reach\n", 100, 150, "damage"}, {"%s â†’ %s HP\n", 200, 300, "health"}, {"%s â†’ %s firerate\n", 1.1, 1, "firerate"}, {"%s â†’ %s outer range\n", 25, 30, "range"}, {"5.5 â†’ 6 inner range\n"}, {"Summons are upgraded\n"}, {"New ability: Everyone's Rage\n"}, {"Increases the damage of all units in range, and increases firerate & healing rate for 7.5 seconds"}}};
	["Striker III"] = {"Elemental Powers", "", {{"Increases money limit by 100%\n", nil, nil, nil, nil, "Business"}, {"%s â†’ %s damage\n", 150, 225, "damage"}, {"%s â†’ %s HP\n", 300, 450, "health"}, {"%s â†’ %s outer range\n", 30, 45, "range"}, {"6 â†’ 6.33 inner range\n"}, {"Summons are upgraded\n"}, {"Stomps every 5 â†’ 4 attacks\n"}, {"New ability: Elemental Power\n"}, {"Permanently switches to a different Trait, also changing the summons"}}};
	["Striker IV"] = {"Nightmare", "", {{"%s â†’ %s damage\n", 225, 300, "damage"}, {"%s â†’ %s HP\n", 450, 750, "health"}, {"%s â†’ %s firerate\n", 1, 0.75, "firerate"}, {"6.33 â†’ 6.50 inner range\n"}, {"Stomps every 4 â†’ 7 attacks\n"}, {"Stomps 1 â†’ 3 times\n"}, {"New ability: Critical Curse\n"}, {"All enemies within range are sabotaged and will attack 100% slower for 10 seconds"}}};
	["Striker V"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"%s damage\n", 300, 300, "damage"}, {"%s HP\n", 750, 750, "health"}, {"%s firerate\n", 0.75, 0.75, "firerate"}, {"%s outer range\n", 45, 45, "range"}, {"6.50 inner range\n"}}};
	["Bunny I"] = {"Rebirth of Life", "", {{"%s â†’ %s damage\n", 4, 6, "Damage"}, {"%s â†’ %s outer range\n", 50, 55, "range"}, {"%s â†’ %s attack radius\n", 4, 4.25, "radius"}, {"%s â†’ %s HP\n", 6, 8, "health"}, {"Extra egg every 200 â†’ 225 enemy HP\n"}, {"3 â†’ 4 maximum extra eggs\n"}, {"When Bunny defeats enemy, it turns into a Wall Egg"}}};
	["Bunny II"] = {"Jumping to Conclusions", "", {{"%s â†’ %s damage, ", 6, 10, "Damage"}, {"%s â†’ %s firerate\n", 1.2, 1.1, "firerate"}, {"%s â†’ %s outer range\n", 55, 62.5, "range"}, {"%s â†’ %s attack radius\n", 4.25, 4.5, "radius"}, {"%s â†’ %s HP\n", 8, 9, "health"}, {"Extra egg every 225 â†’ 250 enemy HP\n"}, {"4 â†’ 6 maximum extra eggs\n"}, {"Carrots cure units of status effects"}}};
	["Bunny III"] = {"Killer Hops", "", {{"%s â†’ %s damage, ", 10, 18, "Damage"}, {"%s â†’ %s firerate\n", 1.1, 1, "firerate"}, {"%s â†’ %s outer range\n", 62.5, 72.5, "range"}, {"%s â†’ %s HP, ", 9, 12, "health"}, {"%s â†’ %s Shield HP\n", 0, 6, "health"}, {"6 â†’ 7 maximum extra eggs\n"}, {"Eggs copy the traits of the enemy that created them"}}};
	["Bunny IV"] = {"Skipping Siren", "", {{"Limit changes to 1\n"}, {"%s â†’ %s outer range\n", 72.5, 90, "range"}, {"%s â†’ %s attack radius\n", 4.5, 5, "radius"}, {"%s â†’ %s HP, ", 12, 34, "health"}, {"%s â†’ %s Shield HP\n", 6, 35, "health"}, {"7 â†’ 9 maximum extra eggs\n"}, {"Charm attracts weak enemies to attack their allies\n"}, {"Permanently stays in air when attacking\n"}}};
	["Bunny V"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"%s damage, ", 18, 18, "Damage"}, {"%s firerate\n", 1, 1, "firerate"}, {"%s outer range\n", 90, 90, "range"}, {"%s attack radius\n", 5, 5, "radius"}, {"%s HP, ", 34, 34, "health"}, {"%s Shield HP\n", 35, 35, "health"}, {"9 maximum extra eggs\n"}, {"Charm attracts weak enemies to attack their allies\n"}, {"Permanently stays in air when attacking"}}};
	["Outlaw I"] = {"Hunter", "", {{"%s â†’ %s damage\n", 5, 6, "Damage"}, {"%s â†’ %s firerate\n", 0.28, 0.25, "firerate"}, {"%s â†’ %s range\n", 25, 28, "range"}, {"Cowboy spawns every %s â†’ %s seconds\n", 25, 20, "abilitycooldown"}, {"0.5 â†’ 0.8 multiplier of extra cash gain\n"}}};
	["Outlaw II"] = {"Dual Wield", "", {{"%s â†’ %s damage\n", 6, 12, "Damage"}, {"%s â†’ %s firerate\n", 0.25, 0.2, "firerate"}, {"%s â†’ %s ammo\n", 6, 12, "Ammo"}, {"%s â†’ %s range\n", 28, 32, "range"}, {"Cowboy spawns every %s â†’ %s seconds\n", 20, 14, "abilitycooldown"}, {"0.8 â†’ 1.33 multiplier of extra cash gain\n"}, {"Summons Cavalry every %s seconds\n", 48, 48, "abilitycooldown"}}};
	["Outlaw III"] = {"Machine Gun", "", {{"%s â†’ %s firerate\n", 0.2, 0.1, "firerate"}, {"%s â†’ %s ammo\n", 12, 32, "Ammo"}, {"%s â†’ %s range\n", 32, 36, "range"}, {"Cowboy spawns every %s â†’ %s seconds\n", 14, 8, "abilitycooldown"}, {"Cavalry spawns every %s â†’ %s seconds\n", 48, 30, "abilitycooldown"}, {"1.33 â†’ 1.75 multiplier of extra cash gain\n"}, {"Summons Horse every %s seconds\n", 55, 55, "abilitycooldown"}, {"Insanely tough against [Wave Attacks]\n"}}};
	["Outlaw IV"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"%s firerate\n", 0.1, 0.1, "firerate"}, {"%s ammo\n", 32, 32, "Ammo"}, {"%s range\n", 36, 36, "range"}, {"Cowboy spawns every %s seconds\n", 8, 8, "abilitycooldown"}, {"Cavalry spawns every %s seconds\n", 30, 30, "abilitycooldown"}, {"1.75 multiplier of extra cash gain\n"}, {"Summons Horse every %s seconds\n", 55, 55, "abilitycooldown"}, {"Insanely tough against [Wave Attacks]\n"}}};
	["Radar I"] = {"Satellite Buffet", "", {{"Broken Signal cooldown %s â†’ %s seconds\n", 75, 65, "abilitycooldown"}, {"%s â†’ %s range\n", 40, 45, "range"}, {"%s â†’ %s HP\n", 150, 200, "health"}, {"5% â†’ 7% range boost\n"}, {"Ability now applies a firerate slow down to enemies effected"}}};
	["Radar II"] = {"Orbital Strike", "", {{"Broken Signal cooldown %s â†’ %s seconds\n", 65, 55, "abilitycooldown"}, {"%s â†’ %s range\n", 45, 55, "range"}, {"%s â†’ %s HP\n", 200, 750, "health"}, {"7% â†’ 9% range boost\n"}, {"25% â†’ 37.5% firerate slow down\n"}, {"New Ability: Calls an alien UFO to help fight enemies"}}};
	["Radar III"] = {"To The Moon", "", {{"Broken Signal cooldown %s â†’ %s seconds\n", 55, 45, "abilitycooldown"}, {"Help from Beyond summons 1 â†’ 2 times, and cooldown %s â†’ %s seconds\n", 20, 12, "abilitycooldown"}, {"%s â†’ %s range\n", 55, 65, "range"}, {"%s â†’ %s HP\n", 750, 1500, "health"}, {"9% â†’ 12% range boost\n"}, {"37.5% â†’ 50% firerate slow down"}}};
	["Radar IV"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"%s â†’ %s range\n", 65, 65, "range"}, {"%s HP\n", 1500, 1500, "health"}, {"12% range boost\n"}, {"50% firerate slow down"}}};
	["Trapper I"] = {"Handling", "", {{"%s â†’ %s range\n", 25, 32, "range"}, {"%s â†’ %s melee damage\n", 1, 3, "Damage"}, {"Small Spike cooldown %s â†’ %s seconds\n", 4, 3, "abilitycooldown", nil, "Cleaner"}, {"Bear Trap cooldown %s â†’ %s seconds\n", 45, 35, "abilitycooldown"}}};
	["Trapper II"] = {"Covered Ground", "", {{"%s â†’ %s range\n", 32, 45, "range"}, {"%s â†’ %s melee damage\n", 3, 6, "Damage"}, {"Small Spike cooldown %s â†’ %s seconds\n", 3, 2, "abilitycooldown", nil, "Cleaner"}, {"Bear Trap cooldown %s â†’ %s seconds\n", 35, 30, "abilitycooldown"}, {"Small Spikes are upgraded into Spikes", nil, nil, nil, nil, "Cleaner"}}};
	["Trapper III"] = {"Nowhere is Safe", "", {{"%s â†’ %s range\n", 45, 52, "range"}, {"%s â†’ %s melee damage\n", 6, 10, "Damage"}, {"Bear Trap cooldown %s â†’ %s seconds\n", 30, 20, "abilitycooldown"}, {"Spikes are upgraded into Super Spikes\n", nil, nil, nil, nil, "Cleaner"}, {"New trap: Large Traps, a much stronger Bear Trap"}}};
	["Trapper IV"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"%s range\n", 52, 52, "range"}, {"%s melee damage\n", 10, 10, "Damage"}, {"Super Spike cooldown %s seconds\n", 2, 2, "abilitycooldown", nil, "Cleaner"}, {"Bear Trap cooldown %s seconds\n", 20, 20, "abilitycooldown"}}};
	["Converter I"] = {"Refined", "", {{"%s â†’ %s range\n", 30, 32.5, "range"}, {"%s â†’ %s damage\n", 125, 150, "Damage"}, {"Attacks can convert up to %s â†’ %s health\n", 250, 450, "Damage"}, {"%s â†’ %s firerate\n", 12, 10, "firerate"}, {"%s â†’ %s HP\n", 12, 15, "health"}}};
	["Converter II"] = {"Remodelled", "", {{"%s â†’ %s range\n", 32.5, 35, "range"}, {"%s â†’ %s damage\n", 150, 225, "Damage"}, {"Attacks can convert up to %s â†’ %s health\n", 450, 1100, "Damage"}, {"%s â†’ %s firerate\n", 10, 8, "firerate"}, {"%s â†’ %s attack radius\n", 12.5, 14, "radius"}, {"%s â†’ %s HP\n", 15, 20, "health"}, {"%s â†’ %s Shield HP\n", 0, 3, "health"}}};
	["Converter III"] = {"Revamped", "", {{"%s â†’ %s range\n", 35, 40, "range"}, {"%s â†’ %s damage, 0 â†’ 1 percent damage based on enemy health\n", 225, 550, "Damage"}, {"Attacks can convert up to %s â†’ %s health\n", 1100, 2750, "Damage"}, {"%s â†’ %s attack radius\n", 14, 16, "radius"}, {"%s â†’ %s Shield HP\n", 3, 10, "health"}, {"Attack now briefly stuns enemies"}}};
	["Converter IV"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"%s range\n", 40, 40, "range"}, {"%s damage, 1 percent damage based on enemy health\n", 550, 550, "Damage"}, {"Attacks can convert up to %s health\n", 2750, 2750, "Damage"}, {"%s attack radius\n", 16, 16, "radius"}, {"%s Total HP\n", 30, 30, "health"}, {"Attack briefly stuns enemies"}}};
	["Singer I"] = {"Project Your Words", "", {{"1 â†’ 2 Defense, 2 â†’ 3 Protection, 50% â†’ 55% Superarmor\n", nil, nil, nil, nil, "Microphone"}, {"20% â†’ 40% natural resistance to all status effects\n"}, {"%s â†’ %s HP\n", 10, 12, "health"}, {"%s â†’ %s range\n", 25, 30, "range"}, {"Enemies under %s â†’ %s HP can be charmed\n", 200, 400, "Damage"}, {"New Ability: Charms enemies in a massive radius, with a 2.5x higher HP limit. Singer temporarily gains lots of Shield HP"}}};
	["Singer II"] = {"Singing Competition", "", {{"2 â†’ 3 Defense, 3 â†’ 4 Protection, 55% â†’ 60% Superarmor\n", nil, nil, nil, nil, "Microphone"}, {"40% â†’ 60% natural resistance to all status effects\n"}, {"%s â†’ %s HP\n", 12, 15, "health"}, {"%s â†’ %s range\n", 30, 35, "range"}, {"Enemies under %s â†’ %s HP can be charmed\n", 400, 800, "Damage"}, {"Ability cooldown %s â†’ %s seconds\n", 60, 45, "abilitycooldown"}}};
	["Singer III"] = {"Voice of an Angel", "", {{"3 â†’ 4 Defense, 4 â†’ 5 Protection, 60% â†’ 65% Superarmor\n", nil, nil, nil, nil, "Microphone"}, {"60% â†’ 80% natural resistance to all status effects\n"}, {"%s â†’ %s HP\n", 15, 20, "health"}, {"%s â†’ %s range\n", 35, 40, "range"}, {"Enemies under %s â†’ %s HP can be charmed\n", 800, 1500, "Damage"}, {"Ability cooldown %s â†’ %s seconds\n", 45, 30, "abilitycooldown"}}};
	["Singer IV"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"4 Defense, 5 Protection, 65% Superarmor\n", nil, nil, nil, nil, "Microphone"}, {"80% natural resistance to all status effects\n"}, {"%s HP\n", 20, 20, "health"}, {"%s range\n", 40, 40, "range"}, {"Enemies under %s HP can be charmed\n", 1500, 1500, "Damage"}, {"Ability cooldown %s seconds\n", 30, 30, "abilitycooldown"}}};
	["Valkyrie I"] = {"Expert Thrower", "", {{"%s â†’ %s range\n", 40, 45, "range"}, {"%s â†’ %s spear durability\n", 150, 250, "Damage"}, {"%s â†’ %s Shield HP\n", 15, 30, "health"}}};
	["Valkyrie II"] = {"Center Piercer", "", {{"%s â†’ %s range\n", 45, 55, "range"}, {"%s â†’ %s spear durability\n", 250, 450, "Damage"}, {"%s â†’ %s Shield HP\n", 30, 50, "health"}}};
	["Valkyrie III"] = {"Through My Bones", "", {{"%s â†’ %s range\n", 55, 70, "range"}, {"%s â†’ %s spear durability\n", 450, 750, "Damage"}, {"%s â†’ %s firerate\n", 6, 5, "firerate"}, {"%s â†’ %s HP\n", 20, 60, "health"}}};
	["Valkyrie IV"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"%s range\n", 70, 70, "range"}, {"%s spear durability\n", 750, 750, "Damage"}, {"%s firerate\n", 5, 5, "firerate"}, {"%s Total HP\n", 110, 110, "health"}}};
	["Blademaster I"] = {"<u><font color='#e65d5d'>Crimson</font></u>", "", {{"An alternative sword\n"}, {"On ability: Summon pillars of flames that burn nearby enemies\n"}, {"Great damage + tough against [ICE]. 25% Explosive Immunity, 75% Freeze Immunity, 100% Fire Immunity\n"}}};
	["Blademaster II"] = {"<u><font color='#febf80'>Grimgold</font></u>", "", {{"An alternative sword\n"}, {"On ability: Slow down the firerate of nearby [MECHA] trait enemies\n"}, {"Strong against [MECHA]. 75% Explosive Immunity, 25% Freeze/Fire Immunity\n"}}};
	["Blademaster III"] = {"<u><font color='#bffe80'>Chartreuse</font></u>", "", {{"An alternative sword\n"}, {"On ability: Temporary shield that reduces damage taken. Fires up to 4 beams at far away enemies\n"}, {"Strong against [ZOMBIE]. 100% Toxic Immunity, 25% Freeze/Fire Immunity\n"}}};
	["Blademaster IV"] = {"<u><font color='#80bffe'>Azure</font></u>", "", {{"An alternative sword\n"}, {"On ability: Summon swords from the sky that damage nearby enemies many times\n"}, {"Strong against [BLAZE]. 25% Explosive Immunity, 75% Fire Immunity, 100% Freeze Immunity\n"}}};
	["Blademaster V"] = {"<u><font color='#bf80fe'>Amethyst</font></u>", "", {{"An alternative sword\n"}, {"On ability: Summon massive meteors around target, dealing massive damage, stun, and temporarily applying Eternal Flames\n"}, {"Massively tough against [WAVE ATTACKS] and [SURGE ATTACKS]. 100% Stun Immunity, 25% Freeze/Fire Immunity\n"}}};
	["Blademaster VI"] = {"<u><font color='#000000'>Noir</font></u>", "", {{"An alternative sword\n"}, {"On ability: Cloak for a short time. Firerate is faster while cloaked!\n"}, {"Great damage + tough against [GRANITE]. 25% Explosive/Freeze/Fire Immunity\n"}}};
	["Blademaster VII"] = {"<u><font color='#ffffff'>Ivory</font></u>", "", {{"An alternative sword\n"}, {"On ability: Summon light spheres that phase towards all enemies in a large range, dealing good damage each\n"}, {"Great damage + tough against [HOLY]. 25% Explosive/Freeze/Fire Immunity\n"}}};
	["Blademaster VIII"] = {"<u><font color='#ff5555'>R</font><font color='#ffff55'>a</font><font color='#55ff55'>i</font><font color='#55ffff'>n</font><font color='#5555ff'>b</font><font color='#ff55ff'>o</font><font color='#ff5555'>w</font></u>", "", {{"An alternative sword\n"}, {"%s HP\n", 300, 300, "health"}, {"%s damage; Heals from damaging enemies\n", 100, 100, "Damage"}, {"On ability: Use an ability of one of the other swords, in upgrade order\n Ability can be used twice in a row\n"}, {"Strong against Traited. 75% Explosive/Freeze/Fire/Toxic/Stun Immunity\n"}}};
	["Blademaster IX"] = {"<u><font color='#fe80df'>Fuchsia</font></u>", "", {{"An alternative sword\n"}, {"On ability: Extreme firerate boost and invincibility for 5 seconds\n"}, {"Strong against [ALIEN]. 25% Explosive/Freeze/Fire Immunity\n"}}};
	["Blademaster X"] = {"<u><font color='#bc794c'>Hazel</font></u>", "", {{"An alternative sword\n"}, {"On ability: Rock slam that deals heavy damage and knockback to nearby enemies\n"}, {"Strong against [MUD]. 25% Explosive Immunity, Immune to Status Effects\n"}}};
	["Blademaster XI"] = {"<u><font color='#afafaf'>Vacant</font></u>", "", {{"The original sword\n"}, {"%s HP\n", 150, 150, "health"}, {"%s damage\n", 70, 70, "Damage"}, {"On ability: Damage nearby enemies\n"}, {"Strong against Ranged. 25% Explosive/Freeze/Fire Immunity\n"}}};
	["Factory I"] = {"Stepping Up Production", "", {{"%s â†’ %s range\n", 40, 55, "range"}, {"Brick Layer â†’ Nailgun Worker\n"}, {"Able to hire Crate Pusher: Pushes a large crate with high health to the destination\n"}}};
	["Factory II"] = {"Explosives and Farms", "", {{"%s â†’ %s range\n", 55, 70, "range"}, {"Milk Carrier â†’ Molotov Carrier\n"}, {"Able to hire Banana Man: Throws bananas at damaged units, healing and providing regeneration\n"}}};
	["Factory III"] = {"Forming new Links", "", {{"%s â†’ %s range\n", 70, 85, "range"}, {"Nailgun Worker â†’ Toxic Nailgunner\n"}, {"Crate Pusher â†’ Container Pusher\n"}, {"Able to hire Spawn Courier: Creates a new unit spawn at the destination\n"}}};
	["Factory IV"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"%s range\n", 85, 85, "range"}, {"Toxic Nailgunner, Molotov Carrier, Container Pusher, Banana Man, Spawn Courier\n"}}};
	["Gasoliner I"] = {"Gasoliner", "", {{"%s â†’ %s range\n", 25, 30, "range"}, {"Gasoline affected enemies receive 'On Fire?' â†’ 'Burning II' when attacked\n"}, {"Knockbacks enemies\n"}}};
	["Gasoliner II"] = {"Gasoliner", "", {{"%s â†’ %s radius\n", 7, 8, "radius"}, {"%s â†’ %s range\n", 30, 40, "range"}, {"%s â†’ %s effect time\n", 3, 4, "EffectTime"}, {"Gasoline affected enemies receive 'Burning II' â†’ 'Burning III' when attacked\n"}}};
	["Gasoliner III"] = {"Gasoliner", "", {{"%s â†’ %s radius\n", 8, 9, "radius"}, {"Gasoline affected enemies receive 'Burning III' â†’ 'Burning IV' when attacked\n"}}};
	["Gasoliner IV"] = {"<u><font color='#FFBB45'>Gasoliner</font></u>", "", {{"%s radius\n", 9, 9, "radius"}, {"%s range\n", 40, 40, "range"}, {"%s effect time\n", 4, 4, "EffectTime"}, {"Gasoline affected enemies receive 'Burning IV' when attacked\n"}}};
	["Beacon I"] = {"Connected Termination", "", {{"%s â†’ %s range\n", 35, 45, "range"}, {"%s â†’ %s damage\n", 8, 15, "Damage"}, {"%s â†’ %s Shield HP, 1 â†’ 2 Defense\n", 15, 30, "health"}, {"Bypasses Defense\n"}, {"Tough against [Wave Attacks]"}}};
	["Beacon II"] = {"Creative Interruption", "", {{"%s â†’ %s range\n", 45, 55, "range"}, {"%s â†’ %s damage\n", 15, 28, "Damage"}, {"%s â†’ %s firerate\n", 0.25, 0.2, "firerate"}, {"%s â†’ %s Shield HP, 2 â†’ 3 Defense\n", 30, 60, "health"}, {"%s â†’ %s attack radius\n", 3, 3.1, "radius"}, {"Slightly strong against Traited enemies"}}};
	["Beacon III"] = {"End-to-end Communication", "", {{"%s â†’ %s range\n", 55, 60, "range"}, {"%s â†’ %s damage\n", 28, 45, "Damage"}, {"%s â†’ %s Shield HP, 3 â†’ 4 Defense\n", 60, 120, "health"}, {"%s â†’ %s attack radius\n", 3.1, 3.2, "radius"}, {"Bypasses 50% of Armor"}}};
	["Beacon IV"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"%s range\n", 60, 60, "range"}, {"%s damage\n", 45, 45, "Damage"}, {"%s Shield HP, 4 Defense\n", 120, 120, "health"}, {"%s attack radius\n", 3.2, 3.2, "radius"}, {"Bypasses Defense and 50% of Armor"}}};
	["Drafter I"] = {"Dangerous Winds", "", {{"%s â†’ %s range\n", 25, 30, "range"}, {"%s â†’ %s damage and knockback distance\n", 3, 4, "Damage"}, {"%s â†’ %s HP\n", 24, 32, "health"}, {"Tough against Opponent's sent enemies"}}};
	["Drafter II"] = {"Hurricane", "", {{"%s â†’ %s range\n", 30, 45, "range"}, {"%s â†’ %s damage and knockback distance\n", 4, 6, "Damage"}, {"%s â†’ %s HP\n", 32, 78, "health"}, {"%s â†’ %s firerate\n", 4, 5, "firerate"}, {"Activated Ability: Whirlwind! Enemies close to Drafter will be slowed down and damaged while active"}}};
	["Drafter III"] = {"Tornado Twister", "", {{"%s â†’ %s range\n", 45, 65, "range"}, {"%s â†’ %s damage and knockback distance\n", 6, 10, "Damage"}, {"%s â†’ %s HP\n", 78, 155, "health"}, {"%s â†’ %s firerate\n", 5, 6, "firerate"}, {"Attack slows enemies for a short time"}}};
	["Drafter IV"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"%s range\n", 65, 65, "range"}, {"%s â†’ %s damage and knockback distance\n", 10, 10, "Damage"}, {"%s HP\n", 155, 155, "health"}, {"%s firerate\n", 6, 6, "firerate"}, {"Attack slows enemies for a short time"}}};
	["Mortar I"] = {"Rapid Shells", "", {{"%s â†’ %s range\n", 60, 70, "range"}, {"%s â†’ %s radius\n", 12, 16, "radius"}, {"%s â†’ %s damage\n", 25, 50, "Damage"}, {"Sabotages opponents' units for 2 â†’ 3 seconds\n", nil, nil, nil, nil, nil, "PVP"}, {"%s â†’ %s Shield HP\n", 15, 20, "health"}, {"Strong against Opponent's sent enemies"}}};
	["Mortar II"] = {"Heavy Reload", "", {{"%s â†’ %s range\n", 70, 85, "range"}, {"%s â†’ %s radius\n", 16, 22, "radius"}, {"%s â†’ %s damage\n", 50, 130, "Damage"}, {"Sabotages opponents' units for 3 â†’ 4 seconds\n", nil, nil, nil, nil, nil, "PVP"}, {"%s â†’ %s Shield HP\n", 20, 70, "health"}, {"Attacks briefly stun enemies"}}};
	["Mortar III"] = {"Atomic Stuff", "", {{"%s â†’ %s range\n", 85, 110, "range"}, {"%s â†’ %s radius\n", 22, 30, "radius"}, {"%s â†’ %s damage\n", 130, 270, "Damage"}, {"Sabotages opponents' units for 4 â†’ 5 seconds\n", nil, nil, nil, nil, nil, "PVP"}, {"%s â†’ %s Shield HP\n", 70, 150, "health"}, {longstring3}}};
	["Mortar IV"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"%s range\n", 110, 110, "range"}, {"%s radius\n", 30, 30, "radius"}, {"%s damage\n", 270, 270, "Damage"}, {"Sabotages opponents' units for 5 seconds\n", nil, nil, nil, nil, nil, "PVP"}, {"%s Shield HP\n", 150, 150, "health"}, {longstring3}}};
	["Cosmonaut I"] = {"Better View", "", {{"%s â†’ %s range\n", 30, 35, "range"}, {"%s â†’ %s damage\n", 6, 10, "Damage"}, {"View height increased"}}};
	["Cosmonaut II"] = {"Planetary Level", "", {{"%s â†’ %s range\n", 35, 40, "range"}, {"%s â†’ %s damage\n", 10, 16, "Damage"}, {"Can attack Higher Floatings\n"}, {"Ability: Fire a blast at your current position, also creating a [Wave Attack]"}}};
	["Cosmonaut III"] = {"None Shield", "", {{"%s â†’ %s range\n", 40, 50, "range"}, {"%s â†’ %s damage\n", 16, 38, "Damage"}, {"Ability cooldown %s â†’ %s seconds\n", 35, 30, "abilitycooldown"}, {"Strong against [COSMIC] enemies"}}};
	["Cosmonaut IV"] = {"Space Explorer", "", {{"%s â†’ %s range\n", 50, 65, "range"}, {"%s â†’ %s damage\n", 38, 80, "Damage"}, {"View height increased\n"}, {"Ability cooldown %s â†’ %s seconds\n", 30, 25, "abilitycooldown"}, {"Completely immune to [Wave Attacks]"}}};
	["Cosmonaut V"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"%s range\n", 65, 65, "range"}, {"%s damage\n", 80, 80, "Damage"}, {"Ability cooldown %s seconds\n", 25, 25, "abilitycooldown"}}};
	["Sentry I"] = {"Zero Day", "", {{"%s â†’ %s range\n", 40, 45, "range"}, {"%s â†’ %s damage\n", 7, 13, "Damage"}, {"View height increased"}}};
	["Sentry II"] = {"Resistance", "", {{"%s â†’ %s damage\n", 13, 20, "Damage"}, {"%s â†’ %s firerate\n", 0.4, 0.3, "firerate"}, {"Strong against [METAL] enemies, tough against [Wave Attacks]"}}};
	["Sentry III"] = {"Upgraded Model", "", {{"%s â†’ %s range\n", 45, 55, "range"}, {"%s â†’ %s damage\n", 20, 45, "Damage"}, {"Can attack any Floating enemy\n"}, {"Bullets briefly slow enemies' movement"}}};
	["Sentry IV"] = {"Deadliest Bullets", "", {{"%s â†’ %s range\n", 55, 70, "range"}, {"%s â†’ %s damage\n", 45, 110, "Damage"}, {"Strong against [ALIEN] and [COSMIC] enemies\n"}, {"Slowly regenerates lost health"}}};
	["Sentry V"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"%s range\n", 70, 70, "range"}, {"%s damage\n", 110, 110, "Damage"}, {"Strong against [ALIEN], [COSMIC], and [METAL] enemies\n"}, {"Slowly regenerates lost health"}}};
	["Chainsaw I"] = {"Shiny Blades", "", {{"%s â†’ %s damage\n", 5, 10, "Damage"}, {"%s â†’ %s HP, 1 â†’ 3 Defense\n", 50, 90, "health"}, {"%s â†’ %s Shield HP\n", 0, 10, "health"}, {"Strong against Traitless enemies\n"}, {"[ALIEN KILLER]: Bypasses the Superarmor of ALIEN enemies\n"}, {"Immune to instant kills, 100% stun immunity\n"}, {"Attack length increased by 50%\n"}}};
	["Chainsaw II"] = {"Wood Harvesting", "", {{"%s â†’ %s range\n", 6, 7, "range"}, {"%s â†’ %s damage\n", 10, 20, "Damage"}, {"%s â†’ %s HP, 3 â†’ 5 Defense\n", 90, 180, "health"}, {"%s â†’ %s Shield HP\n", 10, 50, "health"}, {"Massively tough against [Wave Attacks]\n"}, {"Bypasses Defense\n"}, {"Increased freeze immunity\n"}, {"Attack length increased by 50%\n"}}};
	["Chainsaw III"] = {"Through Bones and Flesh", "", {{"%s â†’ %s range\n", 7, 8, "range"}, {"%s â†’ %s damage\n", 20, 30, "Damage"}, {"%s â†’ %s HP, 5 â†’ 7 Defense\n", 180, 300, "health"}, {"%s â†’ %s Shield HP\n", 50, 100, "health"}, {"Massive damage to opponent's sent enemies\n"}, {"Applies Bleed\n"}, {"Attack length increased by 33%, status resistance increased by 50%\n"}}};
	["Chainsaw IV"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"%s range\n", 8, 8, "range"}, {"%s damage\n", 30, 30, "Damage"}, {"%s HP, 7 Defense\n", 300, 300, "health"}, {"%s Shield HP\n", 100, 100, "health"}, {"Immunities to stun, freeze, and instant kills\n"}, {"Massive damage to opponent's sent enemies, applies Bleed\n"}}};
	["Dancer I"] = {"Paying = Winning", "", {{"%s â†’ %s damage\n", 12, 18, "Damage"}, {"%s â†’ %s HP, 1 â†’ 2 Defense\n", 15, 22, "health"}, {"%s â†’ %s firerate\n", 0.4, 0.33, "firerate"}, {"Able to parry attacks\n"}, {"+10% freeze, explosive, and fire resistance"}}};
	["Dancer II"] = {"Cheap Developer...", "", {{"%s â†’ %s damage\n", 18, 30, "Damage"}, {"%s â†’ %s HP, 2 â†’ 4 Defense\n", 22, 30, "health"}, {"%s â†’ %s firerate\n", 0.33, 0.3, "firerate"}, {"+10% freeze, explosive, and fire resistance"}}};
	["Dancer III"] = {"Try This Combo:", "", {{"%s â†’ %s damage\n", 30, 50, "Damage"}, {"%s â†’ %s HP, 4 â†’ 8 Defense\n", 30, 60, "health"}, {"%s â†’ %s firerate\n", 0.3, 0.27, "firerate"}, {"Tough against Ranged enemies\n"}, {"+100% stun immunity, and immune to instant kills\n"}, {"+40% freeze, explosive, and fire resistance"}}};
	["Dancer IV"] = {"<u><font color='#FFBB45'>Max Rank!</font></u>", "", {{"%s damage\n", 50, 50, "Damage"}, {"%s HP, 8 Defense\n", 60, 60, "health"}, {"%s firerate\n", 0.27, 0.27, "firerate"}, {"Tough against Ranged enemies\n"}, {"+100% stun immunity, and immune to instant kills\n"}, {"70% freeze, explosive, and fire resistance"}}};
}
function module_upvr.Calculate_Upgrades(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) -- Line 1738
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [1] 2. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [1] 2. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [2] 3. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [2] 3. Error Block 3 end (CF ANALYSIS FAILED)
end
function module_upvr.CoolDown(arg1, arg2, arg3) -- Line 1936
	repeat
	until arg2 <= 0 + game:GetService("RunService").Heartbeat:Wait()
end
function module_upvr.RaycastT(arg1, arg2, arg3, arg4, arg5) -- Line 1941
	if not arg5 or type(arg5) ~= "number" then
	end
	local RaycastParams_new_result1 = RaycastParams.new()
	RaycastParams_new_result1.FilterType = Enum.RaycastFilterType.Include
	RaycastParams_new_result1.FilterDescendantsInstances = arg2
	if arg4 then
		RaycastParams_new_result1.CollisionGroup = "Mappart"
	end
	RaycastParams_new_result1.IgnoreWater = true
	return workspace:Raycast(arg1.Position, CFrame.lookAt(arg1.Position, arg3.Position).LookVector * 50, RaycastParams_new_result1)
end
function module_upvr.Trinket_Interact(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) -- Line 1952
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local var3513_upvw = arg7 + 1
	for i_37, v_37_upvr in ipairs(arg5) do
		local _, _ = pcall(function() -- Line 1954
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: v_37_upvr (readonly)
			]]
			arg1:SetAttribute("Trinket_"..v_37_upvr, true)
		end)
	end
	local function INLINED_3() -- Internal function, doesn't exist in bytecode
		arg1:SetAttribute("Firerate", i_37)
		i_37 = v_37_upvr / 0.8547008547008548
		v_37_upvr = arg1:GetAttribute("Firerate")
		arg1.HealthShield.Value = math.ceil(i_37 * 1.25)
		i_37 = v_37_upvr.Value
		v_37_upvr = arg1.HealthShield
		arg1.Health.Value = math.max(math.ceil(i_37), i_37)
		i_37 = 1
		i_37 = v_37_upvr * 1.25
		v_37_upvr = arg1.Health.Value
		arg1.HealthMax.Value = math.max(math.ceil(i_37), i_37)
		i_37 = 1
		i_37 = v_37_upvr * 1.25
		v_37_upvr = arg1.HealthMax.Value
		arg1:SetAttribute("Trinket_Burger", i_37)
		i_37 = true
		return table.find(arg5, "Admin")
	end
	if table.find(arg5, "Burger") and arg6.Name == "Tower1" or table.find(arg5, "Burger_2") and arg6.Name == "Tower5" or INLINED_3() then
		arg1:SetAttribute("Defense4", (arg1:GetAttribute("Defense4") or 0) + 0.03)
	end
	if table.find(arg5, "Telescope") and arg6.Name == "Tower1" then
		arg1:SetAttribute("Trinket_Telescope", true)
		arg1:SetAttribute("Range", arg1:GetAttribute("Range") * 1.15)
		arg1:SetAttribute("Firerate", arg1:GetAttribute("Firerate") / 0.8)
		if table.find(arg5, "Admin") and not arg9 then
			local clone_32 = game.ServerStorage.JohnEffectPart.RangeEffect:Clone()
			clone_32.ParticleEmitter.Color = ColorSequence.new(Color3.fromRGB(208, 161, 255))
			clone_32.ParticleEmitter:SetAttribute("Time", 300)
			clone_32.ParticleEmitter:SetAttribute("Boost", 0.2)
			clone_32.Parent = arg1.Torso
		end
	end
	if table.find(arg5, "Gasoline") and arg6.Name == "Tower1" then
		arg1:SetAttribute("Trinket_Gasoline_Effect", true)
		arg1:SetAttribute("ToughBLAZE", true)
		if arg1:GetAttribute("UpgradeCost") then
			arg1:SetAttribute("UpgradeCost", math.ceil(arg1:GetAttribute("UpgradeCost") * 1.2))
			arg1:SetAttribute("Upgrade1", "($"..module_upvr.addComma(arg1:GetAttribute("UpgradeCost"))..") "..module_upvr.Descs[arg1.Name][1])
		end
		if table.find(arg5, "Admin") then
			arg1:SetAttribute("StrongAgainstBLAZE", true)
			arg1:SetAttribute("Defense2", (arg1:GetAttribute("Defense2") or 0) + 1)
		end
	end
	if table.find(arg5, "Silver") and arg1:GetAttribute("UpgradeCost") then
		arg1:SetAttribute("UpgradeCost", math.ceil(arg1:GetAttribute("UpgradeCost") * 1.2))
		arg1:SetAttribute("Upgrade1", "($"..module_upvr.addComma(arg1:GetAttribute("UpgradeCost"))..") "..module_upvr.Descs[arg1.Name][1])
	end
	if table.find(arg5, "Admin") and (not table.find(arg5, "Queen") or arg3 ~= "Bunny") then
		coroutine.resume(coroutine.create(function() -- Line 2000
			--[[ Upvalues[4]:
				[1]: arg1 (readonly)
				[2]: arg5 (readonly)
				[3]: arg3 (readonly)
				[4]: module_upvr (copied, readonly)
			]]
			local clone_21 = game.ServerStorage.Important.Timer:Clone()
			clone_21.Parent = arg1.HumanoidRootPart
			local var3525
			if table.find(arg5, "Fighter") and arg3 == "Brawler" then
				var3525 = 30
			end
			for i_38 = var3525, 1, -1 do
				clone_21.TimeLabel.Text = "â±"..tostring(math.ceil(i_38))
				arg1:SetAttribute("Admin_Timer", i_38)
				module_upvr.CoolDown(script, 1)
			end
			arg1:Destroy()
		end))
	end
	local function INLINED_4() -- Internal function, doesn't exist in bytecode
		game.ReplicatedStorage.spider:Clone().Parent = arg1.HumanoidRootPart
		game.ServerStorage.spider:Clone().Parent = arg1.Torso
		arg1:SetAttribute("Unhealable", true)
		return table.find(arg5, "Admin")
	end
	if table.find(arg5, "Spider") and (not table.find(arg5, "Queen") or arg3 ~= "Bunny") or INLINED_4() then
		arg1:SetAttribute("Defense2", (arg1:GetAttribute("Defense2") or 0) + 1)
	end
	if table.find(arg5, "Bomb") and arg1:FindFirstChild("Die_G") then
		arg1:SetAttribute("Defense", (arg1:GetAttribute("Defense") or 0) - 1)
		arg1.Die_G:Destroy()
		local clone_3 = game.ServerStorage.Important.ExplosiveDie:Clone()
		clone_3.Parent = arg1
		clone_3.Disabled = false
		if arg3 == "Mimic" then
			arg1:SetAttribute("DieRadius", 1)
			arg1:SetAttribute("Die_Damage", 1)
		else
			arg1:SetAttribute("DieRadius", math.min(10, 5 + var3513_upvw / 500))
			arg1:SetAttribute("Die_Damage", math.min(50, 5 + var3513_upvw / 50))
			if table.find(arg5, "Admin") then
				arg1:SetAttribute("DieRadius", math.min(10, 5 + var3513_upvw / 500) * 2)
				arg1:SetAttribute("Die_Damage", math.min(50, 5 + var3513_upvw / 50) * 2)
				local ExploseImmune = arg1.ExploseImmune
				ExploseImmune.Value *= 0.75
			end
		end
	end
	if table.find(arg5, "Pepper") and arg1:GetAttribute("Walkspeed") then
		if arg8[arg2] then
			arg1:SetAttribute("Effect_Gasoline1", true)
		end
		arg1:SetAttribute("Walkspeed", arg1:GetAttribute("Walkspeed") * 2)
		if table.find(arg5, "Admin") and not arg9 then
			local clone_24 = game.ServerStorage.particles.speedup:Clone()
			clone_24.FireTick.Value = 15
			clone_24:SetAttribute("Boost", 1.25)
			clone_24.Parent = arg1.Torso
		end
	end
	if table.find(arg5, "Spikes") then
		local _, _ = pcall(function() -- Line 2053
			--[[ Upvalues[5]:
				[1]: arg3 (readonly)
				[2]: arg1 (readonly)
				[3]: var3513_upvw (read and write)
				[4]: arg5 (readonly)
				[5]: module_upvr (copied, readonly)
			]]
			local clone_9 = game.ServerStorage.EngineerSentry.Spikes:Clone()
			clone_9.Name = arg3.."'s "..clone_9.Name
			clone_9:SetAttribute("Team", arg1:GetAttribute("Team"))
			clone_9:SetAttribute("Extra_Effect", arg1:GetAttribute("Extra_Effect"))
			clone_9:SetAttribute("MaxTimes", math.ceil(var3513_upvw / 100))
			if clone_9:FindFirstChild("MyAlly") then
				clone_9.MyAlly.Value = arg1
			end
			if table.find(arg5, "Admin") then
				clone_9:SetAttribute("Damage", 16)
			end
			clone_9.Parent = workspace.StuffToIgnore
			clone_9.HumanoidRootPart.CFrame = CFrame.new(module_upvr.RaycastT(arg1.HumanoidRootPart.CFrame * CFrame.new(0, 1, 0), {workspace.Map.TheMap}, arg1.HumanoidRootPart.CFrame * CFrame.new(0, -10, 0), true).Position) * CFrame.new(0, clone_9.HumanoidRootPart.Size.Y / 2, 0)
			game.Debris:AddItem(clone_9, math.min(120, math.ceil(var3513_upvw / 5)))
		end)
		arg1.HealthMax.Value = math.max(math.ceil(arg1.HealthMax.Value / 1.1), 1)
		arg1.Health.Value = math.max(math.ceil(arg1.Health.Value / 1.1), 1)
		arg1.HealthShield.Value = math.ceil(arg1.HealthShield.Value / 1.1)
		local var3535_upvw = false
		arg1:GetAttributeChangedSignal("Death_State"):Connect(function() -- Line 2071
			--[[ Upvalues[6]:
				[1]: var3535_upvw (read and write)
				[2]: arg3 (readonly)
				[3]: arg1 (readonly)
				[4]: var3513_upvw (read and write)
				[5]: arg5 (readonly)
				[6]: module_upvr (copied, readonly)
			]]
			if var3535_upvw then
			else
				var3535_upvw = true
				local clone_4 = game.ServerStorage.EngineerSentry.Spikes:Clone()
				clone_4.Name = arg3.."'s "..clone_4.Name
				clone_4:SetAttribute("Team", arg1:GetAttribute("Team"))
				clone_4:SetAttribute("Extra_Effect", arg1:GetAttribute("Extra_Effect"))
				clone_4:SetAttribute("MaxTimes", math.ceil(var3513_upvw / 100))
				if clone_4:FindFirstChild("MyAlly") then
					clone_4.MyAlly.Value = arg1
				end
				if table.find(arg5, "Admin") then
					clone_4:SetAttribute("Damage", 16)
				end
				clone_4.Parent = workspace.StuffToIgnore
				clone_4.HumanoidRootPart.CFrame = CFrame.new(module_upvr.RaycastT(arg1.HumanoidRootPart.CFrame * CFrame.new(0, 1, 0), {workspace.Map.TheMap}, arg1.HumanoidRootPart.CFrame * CFrame.new(0, -10, 0), true).Position) * CFrame.new(0, clone_4.HumanoidRootPart.Size.Y / 2, 0)
				game.Debris:AddItem(clone_4, math.min(120, math.ceil(var3513_upvw / 5)))
			end
		end)
	end
	if table.find(arg5, "Eggs") and arg1:GetAttribute("SpawnedOn") ~= "Cliff" and arg1:GetAttribute("PlacedOn") ~= "Watchtower" and arg1:GetAttribute("Name2") ~= "Aviator" then
		for i_39, v_38 in pairs(arg1:GetAttributes()) do
			if string.match(i_39, "Trait") and module_upvr.Traits[i_39][2] and v_38 ~= "TRAITLESS" then
				table.insert({}, v_38)
			end
		end
		local tbl_6_upvr = {}
		local maximum_upvr_2 = math.max(1, arg1.HumanoidRootPart.Size.Y)
		local function _(arg1_3) -- Line 2092, Named "egg_handle"
			--[[ Upvalues[3]:
				[1]: tbl_6_upvr (readonly)
				[2]: module_upvr (copied, readonly)
				[3]: maximum_upvr_2 (readonly)
			]]
			for _, v_39 in ipairs(tbl_6_upvr) do
				module_upvr.TraitApply(arg1_3, v_39)
			end
			arg1_3:ScaleTo(maximum_upvr_2)
		end
		arg1:SetAttribute("Defense", (arg1:GetAttribute("Defense") or 0) - 1)
		arg1:SetAttribute("DeathSummon", 1)
		local ObjectValue_upvr_2 = Instance.new("ObjectValue", arg1)
		ObjectValue_upvr_2.Name = "DeathSummon"
		ObjectValue_upvr_2.Value = game.ServerStorage.Enemies.Egg
		arg1.HealthMax:GetPropertyChangedSignal("Value"):Connect(function() -- Line 2101
			--[[ Upvalues[4]:
				[1]: ObjectValue_upvr_2 (readonly)
				[2]: arg1 (readonly)
				[3]: var3513_upvw (read and write)
				[4]: arg5 (readonly)
			]]
			ObjectValue_upvr_2:SetAttribute("HP", math.clamp(arg1.HealthMax.Value, 1, math.ceil(var3513_upvw / 6)))
			if table.find(arg5, "Admin") then
				ObjectValue_upvr_2:SetAttribute("HP", math.clamp(arg1.HealthMax.Value, 1, math.ceil(var3513_upvw / 6)) * 1.5)
			end
		end)
		ObjectValue_upvr_2:SetAttribute("HP", math.clamp(arg1.HealthMax.Value, 1, math.ceil(var3513_upvw / 6)))
	end
	tbl_6_upvr = table.find
	maximum_upvr_2 = arg5
	tbl_6_upvr = tbl_6_upvr(maximum_upvr_2, "Fighter")
	if tbl_6_upvr and arg3 == "Brawler" then
		tbl_6_upvr = arg1:ScaleTo
		tbl_6_upvr(1.25)
		ObjectValue_upvr_2 = "Melee"
		tbl_6_upvr = arg1:SetAttribute
		tbl_6_upvr("Type", ObjectValue_upvr_2)
		ObjectValue_upvr_2 = arg1:GetAttribute("Walkspeed") * 1.25
		tbl_6_upvr = arg1:SetAttribute
		tbl_6_upvr("Walkspeed", ObjectValue_upvr_2)
		ObjectValue_upvr_2 = arg1:GetAttribute("Firerate") * 0.4
		tbl_6_upvr = arg1:SetAttribute
		tbl_6_upvr("Firerate", ObjectValue_upvr_2)
		ObjectValue_upvr_2 = arg1:GetAttribute("Damage") * 2
		tbl_6_upvr = arg1:SetAttribute
		tbl_6_upvr("Damage", ObjectValue_upvr_2)
		ObjectValue_upvr_2 = (arg1:GetAttribute("Defense") or 0) - 1
		tbl_6_upvr = arg1:SetAttribute
		tbl_6_upvr("Defense", ObjectValue_upvr_2)
		ObjectValue_upvr_2 = 0.25
		tbl_6_upvr = arg1:SetAttribute
		tbl_6_upvr("StatusVuln", ObjectValue_upvr_2)
		ObjectValue_upvr_2 = 0.5
		tbl_6_upvr = arg1:SetAttribute
		tbl_6_upvr("DefenseMult", ObjectValue_upvr_2)
		ObjectValue_upvr_2 = 0.05
		tbl_6_upvr = arg1:SetAttribute
		tbl_6_upvr("LOD", ObjectValue_upvr_2)
		tbl_6_upvr = arg1.HealthMax
		ObjectValue_upvr_2 = arg1.HealthMax.Value / 2
		ObjectValue_upvr_2 = 1
		maximum_upvr_2 = math.max(math.ceil(ObjectValue_upvr_2), ObjectValue_upvr_2)
		tbl_6_upvr.Value = maximum_upvr_2
		tbl_6_upvr = arg1.Health
		ObjectValue_upvr_2 = arg1.Health.Value / 2
		ObjectValue_upvr_2 = 1
		maximum_upvr_2 = math.max(math.ceil(ObjectValue_upvr_2), ObjectValue_upvr_2)
		tbl_6_upvr.Value = maximum_upvr_2
		tbl_6_upvr = arg1.HealthShield
		ObjectValue_upvr_2 = arg1.HealthShield.Value
		maximum_upvr_2 = math.ceil(ObjectValue_upvr_2 / 2)
		tbl_6_upvr.Value = maximum_upvr_2
		tbl_6_upvr = table.find
		maximum_upvr_2 = arg5
		tbl_6_upvr = tbl_6_upvr(maximum_upvr_2, "Admin")
		if tbl_6_upvr then
			ObjectValue_upvr_2 = (arg1:GetAttribute("Defense2") or 0) + 1
			tbl_6_upvr = arg1:SetAttribute
			tbl_6_upvr("Defense2", ObjectValue_upvr_2)
		end
	end
	tbl_6_upvr = table.find
	maximum_upvr_2 = arg5
	tbl_6_upvr = tbl_6_upvr(maximum_upvr_2, "Explode")
	if tbl_6_upvr and arg3 == "Demoman" then
		tbl_6_upvr = arg1:GetAttribute("UpgradeCost")
		if tbl_6_upvr then
			ObjectValue_upvr_2 = arg1:GetAttribute("UpgradeCost") * 3
			tbl_6_upvr = arg1:SetAttribute
			tbl_6_upvr("UpgradeCost", ObjectValue_upvr_2)
			ObjectValue_upvr_2 = "($"..module_upvr.addComma(arg1:GetAttribute("UpgradeCost"))..") "..module_upvr.Descs[arg1.Name][1]
			tbl_6_upvr = arg1:SetAttribute
			tbl_6_upvr("Upgrade1", ObjectValue_upvr_2)
		end
		ObjectValue_upvr_2 = arg1:GetAttribute("Range") * 1.5
		tbl_6_upvr = arg1:SetAttribute
		tbl_6_upvr("Range", ObjectValue_upvr_2)
		ObjectValue_upvr_2 = arg1:GetAttribute("Radius") * 1.5
		tbl_6_upvr = arg1:SetAttribute
		tbl_6_upvr("Radius", ObjectValue_upvr_2)
		ObjectValue_upvr_2 = arg1:GetAttribute("Firerate") * 2
		tbl_6_upvr = arg1:SetAttribute
		tbl_6_upvr("Firerate", ObjectValue_upvr_2)
		ObjectValue_upvr_2 = arg1:GetAttribute("Damage") * 2
		tbl_6_upvr = arg1:SetAttribute
		tbl_6_upvr("Damage", ObjectValue_upvr_2)
		tbl_6_upvr = table.find
		maximum_upvr_2 = arg5
		tbl_6_upvr = tbl_6_upvr(maximum_upvr_2, "Admin")
		if tbl_6_upvr then
			ObjectValue_upvr_2 = true
			tbl_6_upvr = arg1:SetAttribute
			tbl_6_upvr("Tough", ObjectValue_upvr_2)
			ObjectValue_upvr_2 = (arg1:GetAttribute("Defense2") or 0) + 1
			tbl_6_upvr = arg1:SetAttribute
			tbl_6_upvr("Defense2", ObjectValue_upvr_2)
			tbl_6_upvr = arg1.ExploseImmune
			local var3550 = tbl_6_upvr
			maximum_upvr_2 = var3550.Value
			maximum_upvr_2 *= 0.5
			var3550.Value = maximum_upvr_2
		end
	end
	var3550 = table.find
	maximum_upvr_2 = arg5
	var3550 = var3550(maximum_upvr_2, "Lighter")
	if var3550 and arg3 == "Ignitor" then
		ObjectValue_upvr_2 = (arg1:GetAttribute("LOD") or 1) * 0.25
		var3550 = arg1:SetAttribute
		var3550("LOD", ObjectValue_upvr_2)
		ObjectValue_upvr_2 = arg1:GetAttribute("Range") * 0.33
		var3550 = arg1:SetAttribute
		var3550("Range", ObjectValue_upvr_2)
		ObjectValue_upvr_2 = arg1:GetAttribute("Damage") * 2
		var3550 = arg1:SetAttribute
		var3550("Damage", ObjectValue_upvr_2)
		ObjectValue_upvr_2 = arg1:GetAttribute("Firerate") / 2
		var3550 = arg1:SetAttribute
		var3550("Firerate", ObjectValue_upvr_2)
		var3550 = arg1.HealthMax
		ObjectValue_upvr_2 = arg1.HealthMax.Value * 5
		ObjectValue_upvr_2 = 1
		maximum_upvr_2 = math.max(math.ceil(ObjectValue_upvr_2), ObjectValue_upvr_2)
		var3550.Value = maximum_upvr_2
		var3550 = arg1.Health
		ObjectValue_upvr_2 = arg1.Health.Value * 5
		ObjectValue_upvr_2 = 1
		maximum_upvr_2 = math.max(math.ceil(ObjectValue_upvr_2), ObjectValue_upvr_2)
		var3550.Value = maximum_upvr_2
		var3550 = arg1.HealthShield
		ObjectValue_upvr_2 = arg1.HealthShield.Value
		maximum_upvr_2 = math.ceil(ObjectValue_upvr_2 * 5)
		var3550.Value = maximum_upvr_2
		var3550 = table.find
		maximum_upvr_2 = arg5
		var3550 = var3550(maximum_upvr_2, "Admin")
		if var3550 then
			ObjectValue_upvr_2 = (arg1:GetAttribute("Defense4") or 0) + 0.11
			var3550 = arg1:SetAttribute
			var3550("Defense4", ObjectValue_upvr_2)
			var3550 = arg1.ExploseImmune
			local var3551 = var3550
			maximum_upvr_2 = var3551.Value
			maximum_upvr_2 *= 0.5
			var3551.Value = maximum_upvr_2
		end
	end
	var3551 = table.find
	maximum_upvr_2 = arg5
	var3551 = var3551(maximum_upvr_2, "Snowmen")
	if var3551 and arg3 == "Snowman" then
		ObjectValue_upvr_2 = arg1:GetAttribute("Damage") * 2
		var3551 = arg1:SetAttribute
		var3551("Damage", ObjectValue_upvr_2)
		var3551 = table.find
		maximum_upvr_2 = arg5
		var3551 = var3551(maximum_upvr_2, "Admin")
		if var3551 then
			ObjectValue_upvr_2 = true
			var3551 = arg1:SetAttribute
			var3551("MassiveDamageMETAL", ObjectValue_upvr_2)
			ObjectValue_upvr_2 = true
			var3551 = arg1:SetAttribute
			var3551("Tough", ObjectValue_upvr_2)
		end
	end
	var3551 = table.find
	maximum_upvr_2 = arg5
	var3551 = var3551(maximum_upvr_2, "Zombies")
	if var3551 and arg3 == "Reaper" then
		ObjectValue_upvr_2 = arg1:GetAttribute("Range") * 2
		var3551 = arg1:SetAttribute
		var3551("Range", ObjectValue_upvr_2)
		ObjectValue_upvr_2 = arg1:GetAttribute("AccessABCD") * 2
		var3551 = arg1:SetAttribute
		var3551("AccessABCD", ObjectValue_upvr_2)
		var3551 = table.find
		maximum_upvr_2 = arg5
		var3551 = var3551(maximum_upvr_2, "Admin")
		if var3551 then
			ObjectValue_upvr_2 = true
			var3551 = arg1:SetAttribute
			var3551("ToughZOMBIE", ObjectValue_upvr_2)
		end
	end
	var3551 = table.find
	maximum_upvr_2 = arg5
	var3551 = var3551(maximum_upvr_2, "Mother")
	local var3552_upvw
	if var3552_upvw and (arg3 == "Valkyrie" or arg3 == "Verglasar" or arg3 == "Farmer" or arg3 == "Singer") then
		var3552_upvw = arg1:ScaleTo
		var3552_upvw(1.25)
		ObjectValue_upvr_2 = (arg1:GetAttribute("Priority") or 1) * 0.95
		var3552_upvw = arg1:SetAttribute
		var3552_upvw("Priority", ObjectValue_upvr_2)
		ObjectValue_upvr_2 = arg1:GetAttribute("Firerate") * 1.33
		var3552_upvw = arg1:SetAttribute
		var3552_upvw("Firerate", ObjectValue_upvr_2)
		ObjectValue_upvr_2 = (arg1:GetAttribute("Defense4") or 0) + 0.05
		var3552_upvw = arg1:SetAttribute
		var3552_upvw("Defense4", ObjectValue_upvr_2)
		var3552_upvw = arg1.HealthMax
		ObjectValue_upvr_2 = arg1.HealthMax.Value * 1.5
		ObjectValue_upvr_2 = 1
		maximum_upvr_2 = math.max(math.ceil(ObjectValue_upvr_2), ObjectValue_upvr_2)
		var3552_upvw.Value = maximum_upvr_2
		var3552_upvw = arg1.Health
		ObjectValue_upvr_2 = arg1.Health.Value * 1.5
		ObjectValue_upvr_2 = 1
		maximum_upvr_2 = math.max(math.ceil(ObjectValue_upvr_2), ObjectValue_upvr_2)
		var3552_upvw.Value = maximum_upvr_2
		var3552_upvw = arg1.HealthShield
		ObjectValue_upvr_2 = arg1.HealthShield.Value
		maximum_upvr_2 = math.ceil(ObjectValue_upvr_2 * 1.5)
		var3552_upvw.Value = maximum_upvr_2
		var3552_upvw = 1.1
		maximum_upvr_2 = table.find
		ObjectValue_upvr_2 = "Admin"
		maximum_upvr_2 = maximum_upvr_2(arg5, ObjectValue_upvr_2)
		if maximum_upvr_2 then
			ObjectValue_upvr_2 = 1.33
			maximum_upvr_2 = arg1:ScaleTo
			maximum_upvr_2(ObjectValue_upvr_2)
			ObjectValue_upvr_2 = "Defense4"
			maximum_upvr_2 = arg1:SetAttribute
			maximum_upvr_2(ObjectValue_upvr_2, (arg1:GetAttribute("Defense4") or 0) + 0.05)
			ObjectValue_upvr_2 = "Defense"
			maximum_upvr_2 = arg1:SetAttribute
			maximum_upvr_2(ObjectValue_upvr_2, (arg1:GetAttribute("Defense") or 0) + 6)
			var3552_upvw = 1.11
		end
		if arg3 ~= "Singer" then
			maximum_upvr_2 = arg1["Left Leg"]
			local var3553 = maximum_upvr_2
			ObjectValue_upvr_2 = "Model"
			local any = Instance.new(ObjectValue_upvr_2, workspace.StuffToIgnore)
			var3553.Parent = any
			ObjectValue_upvr_2 = any:ScaleTo
			ObjectValue_upvr_2(var3552_upvw)
			var3553.Parent = arg1
			ObjectValue_upvr_2 = any:Destroy
			ObjectValue_upvr_2()
			var3553 = arg1["Right Leg"]
			local var3555 = var3553
			ObjectValue_upvr_2 = Instance.new("Model", workspace.StuffToIgnore)
			local var3557 = ObjectValue_upvr_2
			var3555.Parent = var3557
			var3557:ScaleTo(var3552_upvw)
			var3555.Parent = arg1
			var3557:Destroy()
		end
	end
	var3552_upvw = table.find
	var3555 = arg5
	var3552_upvw = var3552_upvw(var3555, "Queen")
	if var3552_upvw and arg3 == "Bunny" then
		var3552_upvw = arg1:ScaleTo
		var3552_upvw(1.5)
		var3557 = true
		var3552_upvw = arg1:SetAttribute
		var3552_upvw("Unhealable", var3557)
		var3557 = 0.2
		var3552_upvw = arg1:SetAttribute
		var3552_upvw("Priority", var3557)
		var3557 = arg1:GetAttribute("Range") * 0.75
		var3552_upvw = arg1:SetAttribute
		var3552_upvw("Range", var3557)
		var3557 = arg1:GetAttribute("Radius") * 1.25
		var3552_upvw = arg1:SetAttribute
		var3552_upvw("Radius", var3557)
		var3557 = arg1:GetAttribute("Damage") * 2
		var3552_upvw = arg1:SetAttribute
		var3552_upvw("Damage", var3557)
		var3552_upvw = arg1.HealthMax
		var3557 = arg1.HealthMax.Value / 10
		var3557 = 1
		var3555 = math.max(math.ceil(var3557), var3557)
		var3552_upvw.Value = var3555
		var3552_upvw = arg1.Health
		var3557 = arg1.Health.Value / 10
		var3557 = 1
		var3555 = math.max(math.ceil(var3557), var3557)
		var3552_upvw.Value = var3555
		var3552_upvw = arg1.HealthShield
		var3557 = arg1.HealthShield.Value
		var3555 = math.ceil(var3557 / 10)
		var3552_upvw.Value = var3555
		var3552_upvw = false
		var3557 = "Death_State"
		var3555 = arg1:GetAttributeChangedSignal(var3557)
		function var3557() -- Line 2202
			--[[ Upvalues[2]:
				[1]: var3552_upvw (read and write)
				[2]: arg4 (readonly)
			]]
			if game.ServerScriptService.TimeStuff.minutes.Value < 2 then
			else
				if var3552_upvw then return end
				var3552_upvw = true
				game.Lighting:SetAttribute("KilType", "Protector")
				game.Lighting:SetAttribute("Kil", "Queen Bunny being damaged")
				workspace.BluTeamUnits[string.upper(arg4).."end"].Health.Value = 0
			end
		end
		var3555 = var3555:Connect
		var3555(var3557)
		var3557 = game
		var3555 = var3557.ReplicatedStorage.QUEEN:Clone()
		var3555.Parent = arg1.Head
		var3555 = 1.025
		var3557 = arg5
		local var3558
		if table.find(var3557, "Admin") and not arg9 then
			arg1:ScaleTo(1.75)
			arg1:SetAttribute("Defense4", (arg1:GetAttribute("Defense4") or 0) + 0.05)
			arg1:SetAttribute("Unhealable", false)
			arg1:SetAttribute("HealLimit", 10)
			arg1:SetAttribute("Priority", 0.1)
			var3557 = game.ServerStorage.JohnEffectPart
			local clone_30 = var3557.JohnEffect:Clone()
			var3557 = clone_30.ParticleEmitter
			var3557.Color = ColorSequence.new(Color3.fromRGB(208, 161, 255))
			var3557 = clone_30.ParticleEmitter:SetAttribute
			var3557("Time", 300)
			var3557 = clone_30.ParticleEmitter:SetAttribute
			var3557("Boost", 0.25)
			var3557 = arg1.Torso
			clone_30.Parent = var3557
			var3558 = 1.1
		end
		local Left_Leg = arg1["Left Leg"]
		var3557 = Instance.new("Model", workspace.StuffToIgnore)
		local var3561 = var3557
		Left_Leg.Parent = var3561
		var3561:ScaleTo(var3558)
		Left_Leg.Parent = arg1
		var3561:Destroy()
		local Right_Leg = arg1["Right Leg"]
		local Model_2 = Instance.new("Model", workspace.StuffToIgnore)
		Right_Leg.Parent = Model_2
		Model_2:ScaleTo(var3558)
		Right_Leg.Parent = arg1
		Model_2:Destroy()
	end
	if table.find(arg5, "Ice3") and arg3 == "Verglasar" then
		arg1:SetAttribute("Regenerate", true)
		arg1.HealthMax.Value = math.max(math.ceil(arg1.HealthMax.Value / 1.5), 1)
		arg1.Health.Value = math.max(math.ceil(arg1.Health.Value / 1.5), 1)
		arg1.HealthShield.Value = math.ceil(arg1.HealthShield.Value / 1.5)
		for i_41, v_40 in ipairs(arg1["Left Arm"].food:GetChildren()) do
			v_40.Transparency = 0
		end
		if table.find(arg5, "Admin") and not arg9 then
			v_40 = arg1:GetAttribute("Radius")
			i_41 = v_40 * 1.25
			arg1:SetAttribute("Radius", i_41)
			game.ServerStorage.Heals2:Clone().FireTick.Value = 300
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			game.ServerStorage.Heals2:Clone().Parent = arg1.Torso
		end
	end
	if table.find(arg5, "Sniper") and arg3 == "Sniper" then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		arg1.GunShoot.shootSound.Volume = arg1.GunShoot.shootSound.Volume / 1.1
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		arg1.GunShoot.shootSound.PlaybackSpeed = arg1.GunShoot.shootSound.PlaybackSpeed + 0.2
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		arg1.GunShoot.shootSound.RollOffMinDistance = arg1.GunShoot.shootSound.RollOffMinDistance / 1.5
		v_40 = arg1:GetAttribute("Firerate")
		i_41 = v_40 * 0.2
		arg1:SetAttribute("Firerate", i_41)
		v_40 = arg1:GetAttribute("Damage")
		i_41 = v_40 * 0.2
		arg1:SetAttribute("Damage", i_41)
		if table.find(arg5, "Admin") and not arg9 then
			i_41 = game
			i_41 = Color3.fromRGB
			v_40 = 208
			i_41 = i_41(v_40, 161, 255)
			i_41.ServerStorage.JohnEffectPart.RangeEffect:Clone().ParticleEmitter.Color = ColorSequence.new(i_41)
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			i_41 = "Time"
			v_40 = 300
			i_41.ServerStorage.JohnEffectPart.RangeEffect:Clone().ParticleEmitter:SetAttribute(i_41, v_40)
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			i_41 = "Boost"
			v_40 = 0.2
			i_41.ServerStorage.JohnEffectPart.RangeEffect:Clone().ParticleEmitter:SetAttribute(i_41, v_40)
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			i_41.ServerStorage.JohnEffectPart.RangeEffect:Clone().Parent = arg1.Torso
		end
	end
	if table.find(arg5, "Healer") and arg3 == "Medic" then
		i_41 = true
		arg1:SetAttribute("Unhealable", i_41)
		i_41 = true
		arg1:SetAttribute("Regenerate", i_41)
		v_40 = arg1:GetAttribute("Priority") or 1
		i_41 = v_40 * 0.75
		arg1:SetAttribute("Priority", i_41)
		v_40 = arg1.HealthMax.Value
		i_41 = v_40 / 2
		i_41 = 1
		arg1.HealthMax.Value = math.max(math.ceil(i_41), i_41)
		v_40 = arg1.Health.Value
		i_41 = v_40 / 2
		i_41 = 1
		arg1.Health.Value = math.max(math.ceil(i_41), i_41)
		v_40 = arg1.HealthShield
		i_41 = v_40.Value
		arg1.HealthShield.Value = math.ceil(i_41 / 2)
		if table.find(arg5, "Admin") then
			v_40 = arg1:GetAttribute("Defense4") or 0
			i_41 = v_40 + 0.25
			arg1:SetAttribute("Defense4", i_41)
			v_40 = arg1:GetAttribute("Priority") or 1
			i_41 = v_40 * 0.75
			arg1:SetAttribute("Priority", i_41)
			i_41 = false
			arg1:SetAttribute("Unhealable", i_41)
			i_41 = 10
			arg1:SetAttribute("HealLimit", i_41)
			v_40 = workspace
			i_41 = v_40.StuffToIgnore
			local Model_3 = Instance.new("Model", i_41)
			arg1["Left Leg"].Parent = Model_3
			v_40 = 1.15
			Model_3:ScaleTo(v_40)
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			arg1["Left Leg"].Parent = arg1
			Model_3:Destroy()
			i_41 = "Model"
			v_40 = workspace.StuffToIgnore
			local any_2 = Instance.new(i_41, v_40)
			arg1["Right Leg"].Parent = any_2
			i_41 = any_2:ScaleTo
			i_41(1.15)
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			arg1["Right Leg"].Parent = arg1
			i_41 = any_2:Destroy
			i_41()
		end
	end
	i_41 = game
	if i_41.Lighting.MAP.Value == "Prison" and not arg1:GetAttribute("Prison_Immune") and arg1:GetAttribute("SpawnedOn") ~= "building" and arg1:GetAttribute("SpawnedOn") ~= "Cliff" then
		game.ServerStorage.handcuff:Clone().FireTick.Value = 5
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		game.ServerStorage.handcuff:Clone().Parent = arg1.Torso
	end
end
function module_upvr.Trinket_Interact_Enemy(arg1, arg2, arg3, arg4) -- Line 2277
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	if table.find(arg2, "Admin") then
		coroutine.resume(coroutine.create(function() -- Line 2279
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: module_upvr (copied, readonly)
			]]
			local clone_13 = game.ServerStorage.Important.Timer:Clone()
			clone_13.Parent = arg1.HumanoidRootPart
			for i_42 = arg1:GetAttribute("Admin_Timer") or 240, 1, -1 do
				clone_13.TimeLabel.Text = "â±"..tostring(math.ceil(i_42))
				arg1:SetAttribute("Admin_Timer", i_42)
				module_upvr.CoolDown(script, 1)
			end
			arg1:Destroy()
		end))
	end
	if table.find(arg2, "Spider") then
		arg1:SetAttribute("Unhealable", true)
		game.ServerStorage.spider:Clone().Parent = arg1.Torso
		game.ReplicatedStorage.spider:Clone().Parent = arg1.HumanoidRootPart
	end
	if table.find(arg2, "Blitz") and arg1:GetAttribute("Walkspeed") and arg3 ~= "units" then
		arg1:SetAttribute("Walkspeed", arg1:GetAttribute("Walkspeed") * 1.5)
		arg1:SetAttribute("Firerate", arg1:GetAttribute("Firerate") / 1.33)
		arg1:SetAttribute("Range", math.max(3, arg1:GetAttribute("Range") / 1.5))
		if arg1:GetAttribute("Range2") then
			arg1:SetAttribute("Range2", math.max(3, arg1:GetAttribute("Range2") / 1.5))
		end
		if table.find(arg2, "Admin") and not arg4 then
			local clone_5 = game.ServerStorage.JohnEffectPart.JohnEffect:Clone()
			clone_5.ParticleEmitter.Color = ColorSequence.new(Color3.fromRGB(208, 161, 255))
			clone_5.ParticleEmitter:SetAttribute("Time", 300)
			clone_5.ParticleEmitter:SetAttribute("Boost", 0.2)
			clone_5.Parent = arg1.Torso
		end
	end
	if table.find(arg2, "Lives") then
		local Health_2 = arg1.Health
		Health_2.Value *= 0.8
		local HealthMax = arg1.HealthMax
		HealthMax.Value *= 0.8
		local HealthShield = arg1.HealthShield
		HealthShield.Value *= 0.8
	end
	if table.find(arg2, "Jail") then
		local Health = arg1.Health
		Health.Value *= 0.9
		local HealthMax_2 = arg1.HealthMax
		HealthMax_2.Value *= 0.9
		local HealthShield_2 = arg1.HealthShield
		HealthShield_2.Value *= 0.9
	end
	if game.Lighting.MAP.Value == "Prison" and not arg1:GetAttribute("Prison_Immune") then
		local clone_26 = game.ServerStorage.handcuff:Clone()
		clone_26.FireTick.Value = 5
		clone_26.Parent = arg1.Torso
	end
end
function module_upvr.Accessory_Interact(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, arg18) -- Line 2320
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	if arg13.Value == 5 and not arg2:GetAttribute("Classic") then
		if table.find(module_upvr.unitsPVP, arg5) then
			arg2:SetAttribute("Team", arg7:GetAttribute("Team"))
		else
			arg2:SetAttribute("Team", arg9)
		end
	end
	local Range_2 = arg2:GetAttribute("Range")
	local Range2 = arg2:GetAttribute("Range2")
	local Radius = arg2:GetAttribute("Radius")
	local Damage = arg2:GetAttribute("Damage")
	if Damage and type(Damage) == "number" and arg8:GetAttribute("AccessDmgBoost") then
		arg2:SetAttribute("Damage", math.max(1, math.round(Damage * (1 + arg8:GetAttribute("AccessDmgBoost")))))
	end
	local Firerate = arg2:GetAttribute("Firerate")
	if Firerate and type(Firerate) == "number" and arg8:GetAttribute("AccessFirerate2") then
		if arg16[arg4] and 1 <= arg8:GetAttribute("AccessFirerate2") then
			arg2:SetAttribute("Firerate", Firerate / math.sqrt(arg8:GetAttribute("AccessFirerate2")))
		else
			arg2:SetAttribute("Firerate", Firerate / arg8:GetAttribute("AccessFirerate2"))
		end
		if arg14[arg4] and arg10 == "Boots" then
			arg2:SetAttribute("Firerate", arg2:GetAttribute("Firerate") / 1.15)
		end
		if arg14[arg4] and arg10 == "Boots2" then
			arg2:SetAttribute("Extra_Effect", "Ice_Shatter")
			if Damage then
				arg2:SetAttribute("Damage", arg2:GetAttribute("Damage") * 1.175)
			end
		end
		if arg14[arg4] and arg10 == "Boots3" then
			arg2:SetAttribute("Move2", true)
			arg2:SetAttribute("Moving", true)
			arg2:SetAttribute("Move3", true)
			arg2:SetAttribute("Firerate", arg2:GetAttribute("Firerate") / 0.8)
			arg2:SetAttribute("Range", arg2:GetAttribute("Range") * 0.8)
			Range_2 = arg2:GetAttribute("Range")
		end
		if arg10 == "ClassicCap" then
			if table.find(module_upvr.unitsCREDS, arg5) then
				arg2:SetAttribute("Firerate", arg2:GetAttribute("Firerate") / 1.2)
			else
				arg2:SetAttribute("Firerate", arg2:GetAttribute("Firerate") * 1.2)
			end
		end
		if arg10 == "Cap2" then
			if module_upvr.AltUnit[arg5] or table.find(module_upvr.unitsCREDS, arg5) then
				arg2:SetAttribute("Firerate", arg2:GetAttribute("Firerate") / 1.2)
			else
				arg2:SetAttribute("Firerate", arg2:GetAttribute("Firerate") * 1.3)
			end
		end
		if table.find(module_upvr.EcoUnit, arg5) and arg12.Value == "Unnamedtown" then
			arg2:SetAttribute("Firerate", arg2:GetAttribute("Firerate") * 3)
		end
		if table.find(module_upvr.EcoUnit, arg5) and arg12.Value == "Frosted Mine" then
			arg2:SetAttribute("Firerate", arg2:GetAttribute("Firerate") * 1.5)
		end
	end
	if arg16[arg5] then
		arg2:SetAttribute("Less", true)
	end
	if Radius and type(Radius) == "number" and arg8:GetAttribute("AccessRadius") then
		arg2:SetAttribute("Radius", Radius * arg8:GetAttribute("AccessRadius"))
	end
	if arg10 == "Evil" or arg10 == "Heaven" then
		local clone_16 = game.ServerStorage.Important.AftermathScript:Clone()
		clone_16:SetAttribute("Color", Color3.fromRGB(255, 207, 207))
		clone_16.Parent = arg2
		clone_16.Disabled = false
	end
	if arg10 == "Extra" then
		local clone_18 = game.ServerStorage.Important.AftermathScript:Clone()
		clone_18:SetAttribute("Seconds", 30)
		clone_18:SetAttribute("Color", Color3.fromRGB(255, 207, 207))
		clone_18.Parent = arg2
		clone_18.Disabled = false
	end
	if arg10 == "Fire" and table.find(module_upvr.ExplodeUnits, arg5) then
		arg2:SetAttribute("ToughBLAZE", true)
		arg2:SetAttribute("Firerate", arg2:GetAttribute("Firerate") * 1.1)
		arg2:SetAttribute("Radius", arg2:GetAttribute("Radius") * 0.5)
		arg2:SetAttribute("Explosive2", "Fire")
		if not arg2:GetAttribute("DeathType") then
			arg2:SetAttribute("DeathType", "Fire")
		end
	end
	if Range_2 and type(Range_2) == "number" and arg8:GetAttribute("AccessRange") then
		arg2:SetAttribute("Range", Range_2 * arg8:GetAttribute("AccessRange"))
	end
	if Range2 and type(Range2) == "number" and arg8:GetAttribute("AccessRange") then
		arg2:SetAttribute("Range2", Range2 * arg8:GetAttribute("AccessRange"))
	end
	if arg12.Value == "Heights" and arg2:GetAttribute("SpawnedOn") == "Cliff" then
		arg2:SetAttribute("Range", arg2:GetAttribute("Range") / 2)
	end
	if arg10 == "Cannon" and (arg2:GetAttribute("SpawnedOn") == "Cliff" or arg4 == "Rifler" or arg3 == "Lookout IV") then
		arg2:SetAttribute("Range", arg2:GetAttribute("Range") / (arg2:GetAttribute("GlassDiv") or 1.5))
		for _, v_41 in ipairs(arg2.HumanoidRootPart:GetChildren()) do
			if v_41:IsA("BasePart") then
				v_41.Color = Color3.new(1, 1, 1)
				v_41.Material = Enum.Material.Glass
				v_41.Transparency = 0.3
				v_41.Reflectance = 0.5
			end
		end
	end
	if arg10 == "Plant" then
		arg2:SetAttribute("NoIncomeAllow", true)
	end
	if arg10 == "AmmoPack" and arg2:GetAttribute("Ammo") then
		arg2:SetAttribute("Ammo", 10000)
		arg2:SetAttribute("Firerate", arg2:GetAttribute("Firerate") * 1.15)
	end
	local Walkspeed_2 = arg2:GetAttribute("Walkspeed")
	if Walkspeed_2 and type(Walkspeed_2) == "number" and arg8:GetAttribute("AccessWalkspeed") then
		arg2:SetAttribute("Walkspeed", Walkspeed_2 * arg8:GetAttribute("AccessWalkspeed"))
	end
	if arg7 and (arg7.Color == Color3.fromRGB(52, 32, 9) or arg7.Name ~= "suspicious" and arg1:GetAttribute("SpawnedOn") == "suspicious") then
		arg2:SetAttribute("UnitType", nil)
		if arg10 == "Platform" then
			arg2:SetAttribute("Range", arg2:GetAttribute("Range") * 3.5)
			arg2:SetAttribute("Damage", (arg2:GetAttribute("Damage") or 0) * 0.67)
			arg2:SetAttribute("PlacedOn", "Watchtower")
			arg2:SetAttribute("Firerate", (arg2:GetAttribute("Firerate") or 0) / 0.75)
			arg2:SetAttribute("Less", true)
		end
		if arg2:GetAttribute("SpawnedOn") == "Cliff" then
			arg2:SetAttribute("Firerate", arg2:GetAttribute("Firerate") * 0.8333333333333334)
		elseif arg10 ~= "Platform" and not table.find(module_upvr.units_ALL, arg5) then
			arg2:SetAttribute("Range", arg2:GetAttribute("Range") * 0.8)
			-- KONSTANTWARNING: GOTO [746] #555
		end
	elseif arg10 == "Platform" and arg2:GetAttribute("SpawnedOn") == "Cliff" then
		arg2:SetAttribute("Range", arg2:GetAttribute("Range") * 3.5)
	end
	if arg7 and (arg7.Color == Color3.fromRGB(52, 32, 9) or arg7.Name == "Cliff") then
		arg2:SetAttribute("Flying", true)
	end
	if arg8:GetAttribute("Access_Status") then
		arg2:SetAttribute("StatusVuln", (arg2:GetAttribute("StatusVuln") or 1) * arg8:GetAttribute("Access_Status"))
	end
	arg2:SetAttribute("AccessABCD", arg8:GetAttribute("AccessABCD") or 1)
	if arg10 == "Cannon" then
		arg2:SetAttribute("Unhealable", true)
	end
	if arg8:GetAttribute("AccessWaveLevel") then
		arg2:SetAttribute("WaveLevel", (arg2:GetAttribute("WaveLevel") or 0) + arg8:GetAttribute("AccessWaveLevel"))
	end
	if not arg14[arg4] and (arg10 == "Business" or arg5 == "Spawner") or arg18[arg3] and arg5 ~= "Noobfighter" and arg5 ~= "Blademaster" and not arg2:GetAttribute("Classic") then
		arg2:SetAttribute("Classic", true)
		local var3614
		if module_upvr.LimitsList[arg5.."_LVL"] and module_upvr.LimitsList[arg5.."_LVL"][1] <= arg2.SpecialLevel.Value + 1 then
			var3614 = module_upvr.LimitsList[arg5.."_LVL"][2]
		end
		local ceiled = math.ceil(math.round((math.ceil(arg18[arg3] * arg8:GetAttribute("AccessUpgradeCost") * (1 - math.min(var3614 * 0.08, 0.8)) / 4) + math.ceil(arg17[arg5..' '..module_upvr.ToRomanNumerals(arg2.SpecialLevel.Value + 1)] * (1 + arg8:GetAttribute("AccessUnitCost")) / 4)) ^ 1.14) * 1.15)
		arg2:SetAttribute("Upgrade1", "($"..module_upvr.addComma(ceiled)..") "..module_upvr.Descs[arg3][1])
		arg2:SetAttribute("UpgradeCost", ceiled)
	end
	if arg10 == "Business" then
		arg2:SetAttribute("MoneySell", arg6)
	end
	if arg15[arg4] and arg5 ~= "Aviator" and arg5 ~= "Chesspiece" then
		arg2:SetAttribute("NotAffected", true)
	end
	if arg10 == "Snows" then
		arg2:SetAttribute("No_Ice", true)
		local BoolValue = Instance.new("BoolValue", arg2)
		BoolValue.Name = "STUNNED"
		game.Debris:AddItem(BoolValue, 0.1)
	end
	if arg10 == "Ice" then
		arg2:SetAttribute("SPECIAL_Freeze", 0.05)
		arg2:SetAttribute("Extra_Effect", "Ice_Shatter")
		arg2:SetAttribute("No_Ice", true)
	end
	if arg10 == "Stockpile" then
		arg2:SetAttribute("PB", true)
		arg2:SetAttribute("DefenseLimit", (arg2:GetAttribute("Defense") or 0) + 10)
	end
	if arg10 == "Stars" then
		arg2:SetAttribute("IKImmune", true)
		arg2:SetAttribute("Star_Power", math.clamp(arg6 / 1000, 1, 10) * (arg2:GetAttribute("LOD") or 1))
	end
	if arg10 == "Wall" then
		arg2:SetAttribute("Priority", (arg2:GetAttribute("Priority") or 1) * 0.9)
	end
	if arg10 == "Stockpile" then
		arg2:SetAttribute("IncB", (arg2:GetAttribute("IncB") or 1) * 0.5)
	end
	if arg10 == "GLASS" then
		module_upvr.TraitApply(arg2, "ANGEL")
	end
	if arg10 == "Snows" and not module_upvr.NoIceUnits[arg4] then
		if arg2:GetAttribute("SpawnedOn") ~= "suspicious" or table.find(arg11, "Queen") and arg5 == "Bunny" then
			game.ServerStorage.Freezy2:Clone().Parent = arg2
			return
		end
		if arg4 ~= "Recon" then
			game.ServerStorage.Freezy:Clone().Parent = arg2
		end
	end
end
function module_upvr.Accessory_Interact_Health(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) -- Line 2384
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local any_Trinkets_Get_result1_upvr = module_upvr.Trinkets_Get(arg4)
	local _, _ = pcall(function() -- Line 2386
		--[[ Upvalues[7]:
			[1]: arg4 (readonly)
			[2]: arg6 (readonly)
			[3]: arg1 (readonly)
			[4]: arg3 (readonly)
			[5]: arg7 (readonly)
			[6]: arg2 (readonly)
			[7]: any_Trinkets_Get_result1_upvr (readonly)
		]]
		local AccessHealth = arg4:GetAttribute("AccessHealth")
		if arg6 == "MemeFolder" then
			if arg1:FindFirstChild("SpecialLevel") and arg3 ~= "Blademaster" and arg3 ~= "Noobfighter" then
				AccessHealth *= 0.9 + arg1.SpecialLevel.Value / 10
			end
		end
		if arg7[arg2] and (arg6 == "Boots" or arg6 == "Boots3") then
			AccessHealth += 0.2
		end
		if table.find(any_Trinkets_Get_result1_upvr, "Lives") then
			AccessHealth -= 0.2
		end
		if table.find(any_Trinkets_Get_result1_upvr, "Jail") then
			AccessHealth -= 0.1
		end
		arg1.HealthMax.Value = math.max(math.ceil(arg1.HealthMax.Value * AccessHealth), 1)
		arg1.Health.Value = math.max(math.ceil(arg1.Health.Value * AccessHealth), 1)
		arg1.HealthShield.Value = math.ceil(arg1.HealthShield.Value * AccessHealth)
	end)
end
function module_upvr.Accessory_Interact_After(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 2397
	if arg6 == "Stockpile" then
		for _, v_42_upvr in ipairs(workspace.BluTeamUnits:GetChildren()) do
			local _, _ = pcall(function() -- Line 2398
				--[[ Upvalues[3]:
					[1]: v_42_upvr (readonly)
					[2]: arg1 (readonly)
					[3]: arg3 (readonly)
				]]
				if (v_42_upvr.HumanoidRootPart.Position - arg1.HumanoidRootPart.Position).magnitude <= 7 and string.split(v_42_upvr.Name, ' ')[1] == arg3 and not v_42_upvr:GetAttribute("BeingShielded") then
					v_42_upvr:SetAttribute("Defense2", (v_42_upvr:GetAttribute("Defense2") or 0) + 0.5)
					if not v_42_upvr:GetAttribute("DefenseLimit") then
						v_42_upvr:SetAttribute("DefenseLimit", (v_42_upvr:GetAttribute("Defense") or 0) + 10)
					end
					v_42_upvr.HealthShield.Value = math.min(math.max(v_42_upvr.HealthShield.Value, v_42_upvr:GetAttribute("HealLimit") or 100), v_42_upvr.HealthShield.Value + 2)
					v_42_upvr:SetAttribute("Defense", math.min((v_42_upvr:GetAttribute("Defense") or 0) + 1, math.max(v_42_upvr:GetAttribute("Defense") or 0, v_42_upvr:GetAttribute("DefenseLimit"))))
					arg1:SetAttribute("Defense", math.min((arg1:GetAttribute("Defense") or 0) + 1, math.max(arg1:GetAttribute("Defense") or 0, arg1:GetAttribute("DefenseLimit"))))
				end
			end)
		end
	end
	if arg6 == "Cape" then
		local clone_6 = game.ServerStorage.JohnEffectPart.FirerateEffect:Clone()
		clone_6.ParticleEmitter.Color = ColorSequence.new(Color3.fromRGB(208, 161, 255))
		clone_6.ParticleEmitter:SetAttribute("Time", 30)
		clone_6.ParticleEmitter:SetAttribute("Boost", 0.25)
		clone_6.Parent = arg1.Torso
	end
	if arg6 == "AllInNone" then
		local clone_7 = game.ServerStorage.JohnEffectPart.FirerateEffect:Clone()
		clone_7.ParticleEmitter.Color = ColorSequence.new(Color3.fromRGB(208, 161, 255))
		clone_7.ParticleEmitter:SetAttribute("Time", 15)
		clone_7.ParticleEmitter:SetAttribute("Boost", 0.25)
		clone_7.Parent = arg1.Torso
	end
	if arg6 == "Cap2" then
		local clone_2 = game.ServerStorage.JohnEffectPart.RangeEffect:Clone()
		clone_2.ParticleEmitter.Color = ColorSequence.new(Color3.fromRGB(208, 161, 255))
		clone_2.ParticleEmitter:SetAttribute("Time", 15)
		clone_2.ParticleEmitter:SetAttribute("Boost", 0.25)
		clone_2.Parent = arg1.Torso
	end
	if arg6 ~= "None" and workspace:GetAttribute("Accessory_Get") == "Ice" then
		workspace:SetAttribute("Accessory_Get", nil)
		warn("Challenge failed!")
		warn(arg1.Name.." was placed with an accessory.")
	end
end
function module_upvr.Apply_Accessory_Cosmetic(arg1, arg2) -- Line 2412
	for i_45 = 2, 4 do
		if arg1:GetAttribute("Accessory"..i_45) then
			if game.ServerStorage.AccessStorage.Part:FindFirstChild(arg1:GetAttribute("Accessory"..i_45).."Particle") then
				local Torso = arg2:FindFirstChild("Torso")
				if arg2:FindFirstChild("APPart") then
					Torso = arg2:FindFirstChild("APPart")
				end
				game.ServerStorage.AccessStorage.Part[arg1:GetAttribute("Accessory"..i_45).."Particle"]:Clone().Parent = Torso
			end
			if game.ServerStorage.AccessStorage[arg1:GetAttribute("Accessory"..i_45)]:FindFirstChild("AccessoryUnit") then
				local clone_23 = game.ServerStorage.AccessStorage[arg1:GetAttribute("Accessory"..i_45)]:FindFirstChild("AccessoryUnit"):Clone()
				local Head = arg2:FindFirstChild("Head")
				if arg2:FindFirstChild("A2Part") then
					Head = arg2:FindFirstChild("A2Part")
				end
				clone_23.CFrame = Head.CFrame
				clone_23.Parent = arg2
				clone_23.CFrame = Head.CFrame
				local WeldConstraint_3 = Instance.new("WeldConstraint", clone_23)
				WeldConstraint_3.Part0 = clone_23
				WeldConstraint_3.Part1 = Head
			end
		end
	end
end
module_upvr.AcessoryNames = {
	AllInNone = "All-in-None";
	AllInOne = "All-in-One";
	AmmoPack = "Ammo Pack";
	BattleCat = '?';
	BattleStack = '?';
	Cannon = "Glass Cannon";
	Cape = "Quick Cape";
	ClassicCap = "Classic Cap";
	Conehat = "Conehead's Cranium";
	Conehat2 = "Conehead2 Cranium";
	Conehat22 = "Conehead2 Cranium [DD]";
	Crownking = "Headking's Crown";
	Dealmaker = "Dealmaker";
	Enemy = "Betrayed";
	Flyer = "Driller Drone";
	Heaven = "Heaven's Crown";
	Mecha = "Menacing Mask";
	None = "None";
	PartyHat = "Annual Reunion";
	PinkCap = "Valentine's Cap";
	Snows = "Snow Shoulders";
	Stealth = "Stationary Scarf";
	Hood = "Static Stabber";
	Trophy10 = "Bronze Trophy";
	Trophy50 = "Silver Trophy";
	Trophy100 = "Gold Trophy";
	Trophy500 = "Trophy Stack";
	Trophy1000 = "Holy Trophy";
	goldy = "GOLDEN!!!";
	Stockpile = "Stockpile";
	Salvage = "Harvester";
	Goggles = "Gazer's Goggles";
	Boots = "Blazing Boots";
	Speedrun = "Speedrun Suit";
	Paladin = "Paladin's Pummeler";
	Enemy2 = "Double-Spooker";
	ChefHat = "Chef Hat";
	MemeFolder = "Meme Folder";
	XMasCone = "Holiday Cone";
	Pirate = "Pirate Cap";
	Platform = "Platform";
	Bootleg = "Platinum Bootleg";
	Business = "Benevolent Banker";
	Fire = "Focused Fire";
	Enemy3 = "Heavenly";
	Evil = "Demon's Diamond";
	Heaven2 = "Heaven's Crowns";
	Boots2 = "Frost Walkers";
	Extra = "Extra Life";
	Ice = "Focused Freeze";
	Enemy4 = "Eternal Elderly";
	Missions_1 = "Paladin's Armor";
	Missions_2 = "Conehead's Robes";
	DONE = "Divine Protection";
	Mine = "Excavator's Wardrobe";
	Boots3 = "Shoes of Steel";
	Trophy4 = "Egg Trophy";
	Egg = "Egg Head";
	Bunny = "Bunny Suit";
	Campaign_201 = "Menacing Mecha";
	Campaign_30001 = "Torn Warrior";
	Campaign_30002 = "Kindler of Wildfire";
	SIN = "Devil's Chainmail";
	Blade = "Blade Keeper";
	GLASS = "GLASS!!!!!";
	modifier_1 = "Shining Sparkles";
	modifier_2 = "Shimmering Surge";
	Cap2 = "Faded Cap";
	Plant = "Financial Fern";
	Farmers = "Faded Farmer";
	True_Cone = "True Conehead's Cranium";
	Math_3 = "Calculated Criminal";
	Hoarder = "Currency Hoarder";
	Stars = "Superpowered Star";
	Wall = "Unbreakable Defense";
	Mudhead = "Mudhead's Cranium";
	modifier_3 = "Sparkling Superior";
	funny_1 = "Screaming Superstar";
	funny_2 = "Screaming Solar Superstar";
	glitch = "Fractured Reality";
	Cowboy_Hat = "Sheriff's Hat";
	Cowboys = "Sheriff's Outfit";
	prison_1 = "Perfect Prisoner";
	prison_2 = "Critical Criminal";
	skeleton = "Apparent Skeleton";
	Friends_1 = "Master's Armor";
	Cowboy_2 = "Cowboy Cavalry";
	Frost_1 = "Ice Shatter";
	Mathematician = "Calculating Criminal";
	halloween_2022 = "Undead Enchantress";
	healers = "Doctor's Clothes";
	champion = "Massive Head";
	builder_1 = "Hard Hat";
	builder_2 = "Turbo Hard Hat";
	builder_3 = "Outrageously Hard Hat";
	Enemy5 = "Duality Cross";
	Enemy6 = "Backwards Betrayed";
	Security_1 = "Security Guard";
	Security_2 = "Robot Suit";
	Security_3 = "Someone's Gift";
	alien_1 = "Very Normal Person";
	Paladin_2 = "Glitched Paladin";
	Largest = "Massive Size";
	champion_2 = "Colossal Cranium";
	molten = "Molten Hammer";
	dancer = "Night Dancer";
	Enemy7 = "World To Destroy";
	["1Blockhead"] = "Blockhead";
	["1Cap"] = "Backwards Cap";
	["1Cape"] = "Donator Cape";
	["1EvilCat"] = '?';
	["1Flag"] = "Donator Flag";
	["1Glove"] = "Lost Glove";
	["1Scarf"] = "Scarf";
	["1TopHat"] = "Top Hat";
	["2Annihlator"] = "Annihlator";
	["2Boss"] = "Boss's Fit";
	["2CropBoots"] = "Crop n' Shoes";
	["2John"] = "Terror";
	["2Supa"] = "SupaOutfit";
	["2Test"] = "Outline";
	["2Vice"] = "Vice's Fit";
	["2WallCat"] = '?';
	["3Barrage"] = "Barrager Bob-cut";
	["3Dissolver"] = "Purple Ponytail";
	["3Ponytail"] = "Frosty Pigtails";
	["3Pulse"] = "Pulsating Ponytail";
	["3Recon"] = "Feathered Recon";
	["3Rifle"] = "Mysterious Style";
	["3Soldier"] = "Soldier Style";
	["3Tazer"] = "Asymmetric";
	["4_elemental"] = "Elemental Wizard";
	["4_frost"] = "Frosty Outfit";
	["4_sorcerer"] = "Sorcerer";
	["4_mud"] = "Mud Master";
	["5_converter"] = "Red Drills";
	["5_rocker"] = "Deep Blue Cut";
	["5_bunny"] = "Flowing Purples";
	["5_eradicator"] = "Shy Maroon";
	["5_trap"] = "Sharp Curls";
	["5_snowman"] = "Golden Locks";
	["5_reaper"] = "Reaper's Down";
	["5_singer"] = "Pink Shock";
	["7_bound"] = "Soul Bound";
	["7_confused"] = "Confused, Truly";
	["7_explode"] = "Flying Parts";
	["7_frost"] = "Eternal Frostburn";
	["7_master"] = "Second Phase";
	["7_portal"] = "Portal Carrier";
	["7_rush"] = "Door Breaker";
	["7_wind"] = "Wind Dancer";
	["8_swords"] = "Skull Blade";
	["8_pumpkins"] = "Pumpkin Head";
	["8_undead"] = "Undead Rags";
	["8_mudhead"] = "Mudhead's Mudhead";
	["8_ranger"] = "Granite Soldier";
	["8_pumpkin"] = "Pumpkin Pack";
	["8_warrior"] = "Gourd Warrior";
	["8_sorcerer"] = "Other Sorcerer";
	["8_king"] = "Forgotten King";
	["8_rich"] = "Royalty's Robes";
	["9Terminator"] = "Terminator";
	CropBootsHat = "Crop n' Hat";
	TestAccessory = "Farmer's Fern";
	Flag = "Flag [Tester]";
}
module_upvr.AccessIcons = {
	None = "rbxassetid://11971577760";
	Missing = "rbxassetid://16850206348";
	ClassicCap = "rbxassetid://11971615519";
	Mecha = "rbxassetid://11971619337";
	Conehat = "rbxassetid://11971620405";
	Paladin = "rbxassetid://11971621741";
	Hood = "rbxassetid://12318292461";
	Stealth = "rbxassetid://16860061224";
	Goggles = "rbxassetid://16860067372";
	AmmoPack = "rbxassetid://11971633176";
	Flyer = "rbxassetid://11971634636";
	Cannon = "rbxassetid://11971636588";
	Enemy = "rbxassetid://11971638108";
	Cape = "rbxassetid://11971639458";
	Crownking = "rbxassetid://16850201115";
	Boots = "rbxassetid://11971651403";
	Speedrun = "rbxassetid://11971652255";
	Snows = "rbxassetid://11971653635";
	Enemy2 = "rbxassetid://11971654803";
	Salvage = "rbxassetid://11971664640";
	Heaven = "rbxassetid://16850197068";
	MemeFolder = "rbxassetid://11971665674";
	AllInOne = "rbxassetid://11971666783";
	AllInNone = "rbxassetid://11971667712";
	Stockpile = "rbxassetid://16860048754";
	Conehat2 = "rbxassetid://11971670289";
	Dealmaker = "rbxassetid://11971673723";
	Pirate = "rbxassetid://12145133207";
	goldy = "rbxassetid://11971577760";
	Platform = "rbxassetid://16850193668";
	Business = "rbxassetid://14194540483";
	Fire = "rbxassetid://14411493600";
	Enemy3 = "rbxassetid://14661627693";
	Evil = "rbxassetid://14704430544";
	Boots2 = "rbxassetid://14863576743";
	["9Terminator"] = "rbxassetid://11971636588";
	Extra = "rbxassetid://15646417818";
	Ice = "rbxassetid://15646442803";
	Enemy4 = "rbxassetid://16219500044";
	Missions_1 = "rbxassetid://11971621741";
	Missions_2 = "rbxassetid://16249604698";
	DONE = "rbxassetid://16251113904";
	Mine = "rbxassetid://16350962148";
	Boots3 = "rbxassetid://16629946302";
	Trophy4 = "rbxassetid://16664472188";
	Egg = "rbxassetid://16664467164";
	Bunny = "rbxassetid://16664474151";
	Campaign_201 = "rbxassetid://11971619337";
	Campaign_30001 = "rbxassetid://16689317034";
	Campaign_30002 = "rbxassetid://17038331283";
	SIN = "rbxassetid://14704430544";
	Blade = "rbxassetid://16689279890";
	GLASS = "rbxassetid://16859325025";
	modifier_1 = "rbxassetid://16951521195";
	modifier_2 = "rbxassetid://16951524068";
	Cap2 = "rbxassetid://16689317034";
	Plant = "rbxassetid://16860055542";
	Farmers = "rbxassetid://17278522983";
	True_Cone = "rbxassetid://16249604698";
	Math_3 = "rbxassetid://17608866585";
	Hoarder = "rbxassetid://17704362958";
	Stars = "rbxassetid://17762353166";
	Wall = "rbxassetid://17762355311";
	Mudhead = "rbxassetid://17815017730";
	modifier_3 = "rbxassetid://17875857535";
	funny_1 = "rbxassetid://18105705729";
	funny_2 = "rbxassetid://18105711530";
	glitch = "rbxassetid://18345468603";
	Cowboy_Hat = "rbxassetid://18399481124";
	Cowboys = "rbxassetid://18399478723";
	prison_1 = "rbxassetid://18937920859";
	prison_2 = "rbxassetid://18937918053";
	skeleton = "rbxassetid://18962145141";
	Friends_1 = "rbxassetid://18983796700";
	Cowboy_2 = "rbxassetid://86414943169019";
	Frost_1 = "rbxassetid://18160834194";
	Mathematician = "rbxassetid://81072417714729";
	halloween_2022 = "rbxassetid://129118692477578";
	healers = "rbxassetid://73012379795917";
	champion = "rbxassetid://114682919547841";
	["8_swords"] = "rbxassetid://129702922802528";
	["8_pumpkins"] = "rbxassetid://96810183724832";
	["8_undead"] = "rbxassetid://85135889921023";
	["8_mudhead"] = "rbxassetid://17815017730";
	["8_ranger"] = "rbxassetid://89570285200908";
	["8_pumpkin"] = "rbxassetid://88295539863038";
	["8_warrior"] = "rbxassetid://86687833891174";
	["8_sorcerer"] = "rbxassetid://122390984882232";
	["8_king"] = "rbxassetid://83032088890635";
	["8_rich"] = "rbxassetid://86714846388580";
	builder_1 = "rbxassetid://91953604208458";
	builder_2 = "rbxassetid://108292760689637";
	builder_3 = "rbxassetid://134011979401728";
	Enemy5 = "rbxassetid://134136887426837";
	Enemy6 = "rbxassetid://122972776457620";
	Security_1 = "rbxassetid://92446409341151";
	Security_2 = "rbxassetid://89129308537682";
	Security_3 = "rbxassetid://103285912218414";
	alien_1 = "rbxassetid://105944923171858";
	Paladin_2 = "rbxassetid://76956898115109";
	Largest = "rbxassetid://111737107594276";
	champion_2 = "rbxassetid://112889392538417";
	molten = "rbxassetid://74745594999238";
	dancer = "rbxassetid://120970864186266";
	Enemy7 = "rbxassetid://115917619992459";
	PartyHat = "rbxassetid://16860072159";
	PinkCap = "rbxassetid://11971684208";
	Crownking2 = "rbxassetid://16850201115";
	Heaven2 = "rbxassetid://16850197068";
	ChefHat = "rbxassetid://11971707942";
	XMasCone = "rbxassetid://11971686689";
	Bootleg = "rbxassetid://13308462081";
	Conehat22 = "rbxassetid://11971670289";
	Dealmaker2 = "rbxassetid://11971673723";
	MemeFolder2 = "rbxassetid://11971665674";
	TestAccessory = "rbxassetid://16860055542";
	Flag = "rbxassetid://9840315508";
}
module_upvr.AccessStats = {
	None = {
		AccessDmgBoost = 0;
		AccessUnitCost = 0;
		AccessCoolDecrease = 0;
		AccessFirerate = 0;
		AccessRange = 1;
	};
	TestAccessory = {
		AccessDmgBoost = 0.5;
		AccessUnitCost = 0.35;
		AccessCoolDecrease = 0;
		AccessFirerate = 0;
		AccessRange = 1;
	};
	Crownking = {
		AccessDmgBoost = 0.5;
		AccessUnitCost = 0.35;
		AccessCoolDecrease = 0;
		AccessFirerate = 0;
		AccessRange = 1;
	};
	Conehat = {
		AccessDmgBoost = 0.8;
		AccessUnitCost = 0.7;
		AccessCoolDecrease = -1;
		AccessFirerate = 0;
		AccessRange = 1;
		AccessHealth = 1.5;
	};
	Conehat2 = {
		AccessDmgBoost = 0;
		AccessUnitCost = 0.7;
		AccessCoolDecrease = -1;
		AccessFirerate = 0.44;
		AccessFirerate2 = 1.8;
		AccessRange = 1;
		AccessHealth = 1.5;
	};
	True_Cone = {
		AccessDmgBoost = 0.35;
		AccessUnitCost = 0.75;
		AccessCoolDecrease = -1;
		AccessFirerate = 0.65;
		AccessFirerate2 = 1.35;
		AccessRange = 1;
		AccessHealth = 1.5;
		Access_Status = 0.75;
	};
	Mecha = {
		AccessABCD = 0.68;
		AccessDmgBoost = 0;
		AccessUnitCost = 0.2;
		AccessCoolDecrease = 0.32;
		AccessFirerate = 0;
		AccessWalkspeed = 1.1;
		AccessRange = 1.1;
	};
	ClassicCap = {
		AccessDmgBoost = 0;
		AccessUnitCost = 0;
		AccessCoolDecrease = 0;
		AccessFirerate = 0;
		AccessRange = 1;
	};
	Cap2 = {
		AccessDmgBoost = 0;
		AccessUnitCost = 0;
		AccessCoolDecrease = 0;
		AccessFirerate = 0;
		AccessRange = 1;
	};
	Hood = {
		AccessDmgBoost = 0;
		AccessUnitCost = 0;
		AccessCoolDecrease = 0;
		AccessFirerate = 0;
		AccessFirerate2 = 1;
		AccessRange = 1;
	};
	Stealth = {
		AccessDmgBoost = 0;
		AccessUnitCost = 0;
		AccessCoolDecrease = 0;
		AccessFirerate = 0;
		AccessFirerate2 = 1;
		AccessRange = 1;
	};
	Dealmaker = {
		AccessDmgBoost = -0.18;
		AccessUnitCost = -0.18;
		AccessCoolDecrease = -0.18;
		AccessFirerate = 0;
		AccessRange = 1;
		AccessUpgradeCost = 0.82;
	};
	Plant = {
		AccessDmgBoost = 0;
		AccessUnitCost = 0.05;
		AccessCoolDecrease = 0;
		AccessFirerate = 0;
		AccessRange = 1;
		AccessStartingCash = 1.225;
		Access_Cash_Limit = 1.25;
		AccessUpgradeCost = 1.05;
	};
	Snows = {
		AccessDmgBoost = 0;
		AccessUnitCost = 0;
		AccessCoolDecrease = 0;
		AccessFirerate = 0.32;
		AccessFirerate2 = 1.32;
		AccessRange = 1;
	};
	Cape = {
		AccessDmgBoost = 0;
		AccessUnitCost = 0;
		AccessCoolDecrease = 0.25;
		AccessFirerate = 0.5;
		AccessFirerate2 = 1.5;
		AccessWalkspeed = 1.4;
		AccessRange = 0.65;
	};
	AmmoPack = {
		AccessDmgBoost = 0;
		AccessUnitCost = 0;
		AccessCoolDecrease = 0;
		AccessFirerate = 0;
		AccessRange = 1;
	};
	Cannon = {
		AccessDmgBoost = 0;
		AccessUnitCost = 0;
		AccessCoolDecrease = 0;
		AccessFirerate = 0;
		AccessRange = 1;
	};
	Flyer = {
		AccessDmgBoost = 0;
		AccessUnitCost = 0;
		AccessCoolDecrease = 0;
		AccessFirerate = 0;
		AccessRange = 1;
	};
	Heaven = {
		AccessDmgBoost = 0;
		AccessUnitCost = 0;
		AccessCoolDecrease = 0;
		AccessFirerate = 0;
		AccessFirerate2 = 1;
		AccessRange = 0.9;
		AccessHealth = 1;
	};
	AllInOne = {
		AccessDmgBoost = 0;
		AccessUnitCost = 0.25;
		AccessCoolDecrease = -0.5;
		AccessFirerate = 0;
		AccessRange = 1;
	};
	AllInNone = {
		AccessDmgBoost = 0;
		AccessUnitCost = 0.2;
		AccessCoolDecrease = 0;
		AccessFirerate = 0;
		AccessRange = 1;
	};
	Enemy = {
		AccessDmgBoost = 0;
		AccessUnitCost = 9;
		AccessCoolDecrease = 0;
		AccessFirerate = 0;
		Access_Cash_Limit = 2;
		AccessRange = 1;
	};
	Stockpile = {
		AccessDmgBoost = -0.1;
		AccessUnitCost = 0;
		AccessCoolDecrease = 0;
		AccessFirerate = -0.1;
		AccessFirerate2 = 0.9090909090909091;
		AccessHealth = 1.33;
		AccessRange = 0.9;
	};
	Salvage = {
		AccessDmgBoost = 0;
		AccessUnitCost = 0;
		AccessCoolDecrease = 0;
		AccessFirerate = 0;
		AccessFirerate2 = 1;
		AccessRange = 1;
	};
	Goggles = {
		AccessDmgBoost = 0;
		AccessUnitCost = 0;
		AccessCoolDecrease = 0;
		AccessFirerate = -0.4;
		AccessFirerate2 = 0.7142857142857143;
		AccessRange = 1.4;
	};
	Boots = {
		AccessDmgBoost = 0;
		AccessUnitCost = 0;
		AccessCoolDecrease = 0;
		AccessFirerate = 0;
		AccessWalkspeed = 1.3;
		AccessRange = 1;
	};
	Boots2 = {
		AccessDmgBoost = 0;
		AccessUnitCost = 0;
		AccessCoolDecrease = 0;
		AccessFirerate = 0;
		AccessWalkspeed = 0.7;
		AccessRange = 1;
	};
	Boots3 = {
		AccessDmgBoost = 0;
		AccessUnitCost = 0;
		AccessCoolDecrease = 0;
		AccessFirerate = 0;
		AccessWalkspeed = 0.5;
		AccessRange = 1;
	};
	Speedrun = {
		AccessDmgBoost = 0;
		AccessUnitCost = 0;
		AccessCoolDecrease = -0.25;
		AccessFirerate = 0.1;
		AccessFirerate2 = 1.1;
		AccessRange = 1;
	};
	Paladin = {
		AccessDmgBoost = 0;
		AccessUnitCost = 0.65;
		AccessUpgradeCost = 1;
		AccessCoolDecrease = -0.65;
		AccessABCD = 1.1;
		AccessFirerate = -0.1;
		AccessFirerate2 = 0.9090909090909091;
		AccessRange = 1;
		AccessHealth = 1.4;
		AccessUnitLimit = 2;
	};
	Enemy2 = {
		AccessDmgBoost = 0;
		AccessUnitCost = 9;
		AccessCoolDecrease = 0;
		AccessFirerate = 0;
		Access_Cash_Limit = 2;
		AccessRange = 1;
	};
	MemeFolder = {
		AccessDmgBoost = 0;
		AccessUnitCost = 0;
		AccessCoolDecrease = 0;
		AccessFirerate = 0;
		AccessUpgradeCost = 1.2;
		AccessExtraUpgrade = 1;
		AccessRange = 1.1;
	};
	Platform = {
		AccessDmgBoost = 0;
		AccessUnitCost = 0;
		AccessCoolDecrease = 0;
		AccessFirerate = 0;
		AccessRange = 0.5;
		AccessABCD = 1.2;
		AccessHealth = 1.75;
	};
	Business = {
		AccessDmgBoost = 0;
		AccessUnitCost = 0;
		AccessCoolDecrease = -0.25;
		AccessFirerate = 0;
		AccessUpgradeCost = 1;
		AccessRange = 1;
	};
	Fire = {
		AccessDmgBoost = 0;
		AccessUnitCost = 0;
		AccessCoolDecrease = 0;
		AccessFirerate = 0;
		AccessRange = 1;
	};
	Enemy3 = {
		AccessDmgBoost = 0;
		AccessUnitCost = 45;
		AccessCoolDecrease = 0;
		AccessFirerate = 0;
		Access_Cash_Limit = 2;
		AccessRange = 1;
	};
	Evil = {
		AccessDmgBoost = 0.8;
		AccessUnitCost = 0.2;
		AccessCoolDecrease = 0;
		AccessFirerate = -0.4;
		AccessFirerate2 = 0.7142857142857143;
		AccessRange = 1;
		AccessWalkspeed = 0.5;
		AccessUpgradeCost = 1.2;
		AccessHealth = 1.8;
	};
	Extra = {
		AccessDmgBoost = 0;
		AccessUnitCost = 0.25;
		AccessCoolDecrease = 0.1;
		AccessFirerate = 0;
		AccessRange = 1;
	};
	Ice = {
		AccessDmgBoost = 0.4;
		AccessUnitCost = 0;
		AccessCoolDecrease = 0;
		AccessFirerate = -0.5;
		AccessFirerate2 = 0.6666666666666666;
		AccessRange = 1;
	};
	Enemy4 = {
		AccessDmgBoost = 0;
		AccessUnitCost = 45;
		AccessCoolDecrease = 0;
		AccessFirerate = 0;
		Access_Cash_Limit = 2;
		AccessRange = 1;
	};
	GLASS = {
		AccessDmgBoost = -0.9;
		AccessUnitCost = 0.9;
		AccessCoolDecrease = -0.9;
		AccessFirerate = -0.9;
		AccessFirerate2 = 0.5263157894736842;
		AccessUpgradeCost = 1.9;
		AccessRange = 0.1;
		AccessHealth = 0.1;
	};
	Stars = {
		AccessDmgBoost = 0;
		AccessUnitCost = 0.1;
		AccessCoolDecrease = -0.33;
		AccessFirerate = 0;
		AccessRange = 1;
	};
	Wall = {
		AccessDmgBoost = 0;
		AccessUnitCost = 1;
		AccessCoolDecrease = -1;
		AccessFirerate = 0;
		AccessRange = 1;
		AccessHealth = 3;
	};
	Mudhead = {
		AccessDmgBoost = 0.35;
		AccessUnitCost = 0.5;
		AccessCoolDecrease = 0;
		AccessFirerate = 0;
		AccessRange = 1;
		AccessHealth = 1.35;
		Access_Status = 0.25;
	};
	Enemy5 = {
		AccessDmgBoost = 0;
		AccessUnitCost = 99;
		AccessCoolDecrease = 0;
		AccessFirerate = 0;
		Access_Cash_Limit = 2;
		AccessRange = 1;
	};
	Enemy6 = {
		AccessDmgBoost = 0;
		AccessUnitCost = 99;
		AccessCoolDecrease = 0;
		AccessFirerate = 0;
		AccessRange = 1;
	};
}
module_upvr.AccessBaseStats = {
	AccessABCD = 1;
	AccessDmgBoost = 0;
	AccessUnitCost = 0;
	AccessCoolDecrease = 0;
	AccessFirerate = 0;
	AccessFirerate2 = 1;
	AccessRange = 1;
	AccessHealth = 1;
	AccessRadius = 1;
	AccessUpgradeCost = 1;
	AccessWalkspeed = 1;
	AccessStartingCash = 1;
}
module_upvr.AccessBaseRemove = {
	AccessExtraUpgrade = true;
	AccessWaveLevel = true;
	Access_Status = true;
	AccessUnitLimit = true;
	Access_Cash_Limit = true;
}
module_upvr.Trinket = {
	Unknown = {"Unknown", "rbxassetid://18159949496", "", {nil, 0, 0}};
	Coin = {"Golden Coin", "rbxassetid://18231749542", "No effect. \n", {nil, 10000, 0}};
	Silver = {"Silver Dollar", "rbxassetid://18261231827", "Increases unit cost and increases the chance of earning a trinket. \n", {nil, 5000, 0.5}};
	Grapple = {"Grapple", "rbxassetid://18245064902", "You have a permanent grapple that you can use to go anywhere you want!\n (No effect on units.)", {nil, 1000, 0, {0, 0, 0, 9, 0}}};
	Remote = {"Trinket Detector", "rbxassetid://18671909459", "Allows you to detect what trinkets can be obtained from your current destination.", {nil, 1000, 0, {3, 3, 0, 6, 0}}};
	Flashlight = {"Blue Flashlight", "rbxassetid://18672412178", "Gives you a permanent blue flashlight, helping you see in the dark!", {nil, 1000, 0, {0, 0, 0, 6, 6}}};
	Secrets = {"Secret Detector", "rbxassetid://18714086809", "Allows you to easily detect and find secrets in any location.", {nil, 1000, 0, {0, 0, 6, 6, 0}}};
	Telescope = {"Sighter's Telescope", "rbxassetid://18217188145", "The first unit slot has 15% more range, but 25% slower firerate.", {nil, 1000, 0, {0, 0, 0, 10, 5}}};
	Burger = {"Really Good Food", "rbxassetid://18217170024", "The first unit slot has 25% more health, but 17% slower firerate.", {nil, 1000, 0, {0, 0, 0, 1, 0}}};
	Gasoline = {"Gasoline", "rbxassetid://18251931990", "The first unit slot has higher placement cost, but is resistant to [BLAZE] trait, and applies fire effect when attacking.", {nil, 2000, 0, {9, 9, 0, 0, 0}}};
	Burger_2 = {"Really Strange Food", "rbxassetid://83544172382552", "The last unit slot has 25% more health, but 17% slower firerate.", {nil, 1000, 0, {0, 0, 0, 1, 0}}};
	Admin = {"Admin Console", "rbxassetid://18217184888", "The delay before spawning a stationary unit is removed, but units & friendly enemies (from enemy accessories, like 'the Betrayed') disappear after a while.\n Includes a special interaction with every other trinket.", {nil, 13700, 3.3, {0, 33, 0, 33, 0}}};
	Spider = {"Hungry Spider", "rbxassetid://18217182809", "Units, summons & friendly enemies (from enemy accessories, like 'the Betrayed') take damage very slowly and cannot be healed. Any enemy above 1,000 HP will be 10% less strong.", {nil, 1000, 0, {3, 0, 0, 3, 0}}};
	Bomb = {"Bomb Buddy", "rbxassetid://18217180105", "Units & summons will explode on death, but their defense is reduced by 1.", {nil, 1000, 0, {1, 0, 0, 5, 0}}};
	Pepper = {"Hot Pepper", "rbxassetid://18231742353", "Unit movement speed is doubled, but they are set on fire when damaged.", {nil, 1000, 0, {9, 0, 0, 0, 0}}};
	Eggs = {"Mystery Egg", "rbxassetid://18235024078", "Units spawn an egg on death, but their defense is reduced by 1.", {nil, 1000, 0, {0, 9, 0, 0, 0}}};
	Spikes = {"Forbidden Floors", "rbxassetid://18244279129", "Units & summons drop spikes on spawn & on death, but their health is slightly reduced. Spikes last longer based on unit cost.", {nil, 1000, 0, {0, 0, 0, 9, 0}}};
	Mother = {"Mother's Heel", "rbxassetid://18235445967", "Verglasar, Farmer, Singer & Valkyrie have greatly increased health and size, and extra superarmor, but slower attack rate.", {nil, 3000, 0, {6, 0, 0, 0, 6}}};
	Queen = {"Queen's Crown", "rbxassetid://18235536109", "Bunny has greatly increased stats in most categories, including priority, but has low health and cannot be healed. Their death will result in instant game over.", {nil, 2000, 1, {0, 0, 18, 0, 0}}};
	Ice3 = {"Cold Snack", "rbxassetid://18235170773", "Verglasar's health is reduced, but she can heal herself by eating ice cream.", {nil, 1000, 0, {0, 0, 0, 0, 6}}};
	Fighter = {"Fighting Spirit", "rbxassetid://18231764200", "Brawler's health is reduced, but damage, cooldown, firerate & size are greatly increased. Brawler deals full damage to shield and is resistant to status effects.", {nil, 1000, 0, {3, 0, 0, 0, 0}}};
	Sniper = {"Fullspeed Bullets", "rbxassetid://18217176352", "Sniper attacks 5x faster, but deals 5x less damage.", {nil, 2000, 0}};
	Explode = {"Giant Bombs", "rbxassetid://18235041334", "Demoman has greatly increased bomb radius, damage and range, but is much more expensive to spawn.", {nil, 2000, 0}};
	Healer = {"Doctor's Kit", "rbxassetid://18217173772", "Medic's health is lowered, priority raised, and she cannot gain health/shield. Medic applies a short regeneration effect to anything she heals.", {nil, 1000, 0, {3, 3, 0, 0, 0}}};
	Betrayal = {"Reprogrammer", "rbxassetid://18251452759", "Some friendly enemies included in 'The Betrayed' accessory are replaced with enemies from Wrecked mode.", {nil, 2000, 2}};
	Lighter = {"Light Lighter", "rbxassetid://18251467266", "Reduces Ignitor's range greatly, but increases her damage and health greatly.", {nil, 2000, 0, {6, 0, 0, 1, 0}}};
	Blitz = {"Blitz", "rbxassetid://18251567660", "Your friendly enemies (from enemy accessories, like 'the Betrayed') will attack faster, and move way faster. Their range is decreased.", {nil, 2000, 2, {0, 0, 0, 9, 9}}};
	Mud_7 = {"Reprogrammer?", "rbxassetid://18255328697", "Some friendly enemies included in 'The Double-Spooker' accessory are replaced with mud enemies.", {nil, 2000, 2, {0, 0, 0, 9, 0}}};
	Snowmen = {"Frost Former", "rbxassetid://18261242083", "Snowman does not create snowballs, but her damage is increased, and defeated enemies may turn into snow men.", {nil, 2000, 0, {0, 0, 0, 0, 25}}};
	Zombies = {"Zombie Arm", "rbxassetid://18261268442", "Reaper's range & summon lifetime is increased and summon rate is incredibly slow, but when summoning, she will respawn dead allies with weaker health and range.", {nil, 3000, 0, {25, 25, 0, 0, 0}}};
	Cleaner = {"Floor Cleaner", "rbxassetid://18280893231", "Trapper only builds bear traps and large traps. Their cooldown is reduced.", {nil, 3000, 0, {0, 0, 0, 0, 25}}};
	Eyes = {"Odd Eye", "rbxassetid://18280902502", "Sargeant's right path max upgrade will increase nearby Sargeants' and Soldiers' range instead of firerate.", {nil, 3000, 0, {25, 0, 0, 0, 0}}};
	Ghosted = {"Ghost Pepper", "rbxassetid://18280936748", "Saboteur gets increased damage and creates a surge on the enemy it attacks with its ability, but doesn't attack normally and doesn't apply sabotage effect. Ability cooldown is greatly reduced.", {nil, 3000, 0, {0, 0, 0, 25, 0}}};
	Hands = {"Other Hand", "rbxassetid://18281205090", "Enchantress summons become [BLAZE] traited. She deals more damage and her attacks will set fire to enemies, but ability cooldowns are longer.", {nil, 6666, 0, {66, 0, 0, 66, 0}}};
	Soda = {"Cold Beverage", "rbxassetid://18302774607", "Lookout III+ ability doesn't increase firerate, but the cooldown is shorter, and Lookout will freeze enemies it attacks while active (and nearby enemies).", {nil, 2000, 0, {9, 0, 0, 0, 9}}};
	Microphone = {"Superstar Singer", "rbxassetid://18349949561", "Singer has 50% less Superarmor, but can charm enemies with much higher health, and attacks at twice the speed.", {nil, 2100, 0, {0, 0, 21, 0, 0}}};
	Frosted = {"Frostburn", "rbxassetid://18280916546", "Instead of freezing enemies, Cryomancer applies a Frostburn effect that deals more damage the longer the enemy is frozen.", {nil, 2100, 0, {0, 0, 0, 0, 21}}};
	Corrupteds = {"Corrupted Program", "rbxassetid://18586931257", "Most friendly enemies included in 'The Eternal Elderly' accessory are replaced with strange and corrupted enemies.", {nil, 2000, 1, {9, 9, 9, 9, 9}}};
	Enraged = {"Burst of Rage", "rbxassetid://18586954715", "Guerrilla's ability cooldown is much longer, but Guerrilla attacks faster for a longer duration, and unlocks the ability at Rank II.", {nil, 2000, 0, {25, 0, 0, 0, 0}}};
	Trees = {"Tiny Tree", "rbxassetid://18863468809", "The one who uses the rifle attacks slower, but produces extra money from dealing damage, and defeated enemies turn into money plants.\n Their ability produces income instead.", {nil, 2000, 0, {0, 25, 0, 0, 0}}};
	Frozen_Bomb = {"Frosted Bombs", "rbxassetid://18886387599", "Incendiarier & Demoman attack slower, but deal more damage and instead of fire, apply Frostburn that deals more damage to frozen enemies.", {nil, 2000, 0, {0, 0, 0, 0, 25}}};
	Mud_Mirror = {"Muddy Mirror", "rbxassetid://132187317424060", "Mudsplatter attacks slower, but copies the status effects applied by nearby units, and applies them to enemies.", {nil, 2000, 0, {0, 0, 0, 7, 0}}};
	Seed_Bag = {"Bag of Seeds", "rbxassetid://109229710004102", "Agronomist has increased range and attacks enemies with seeds, gaining water with each enemy hit.\n Agronomist's left path cannot be accessed or upgraded at all.", {nil, 2000, 0, {0, 7, 0, 0, 0}}};
	Buckets_ = {"Bucket of Slime", "rbxassetid://76080430286463", "Agronomist's plants have greatly increased water capacity, but will die immediately when out of water.", {nil, 2000, 0.1, {0, 3, 0, 0, 3}}};
	Grenades = {"Broken Grenade", "rbxassetid://108350004014610", "Operative's stun grenades will stun for less time, but apply sabotage.\n", {nil, 2000, 0.1, {0, 0, 0, 7, 0}}};
	Warriors = {"Warrior's Blade", "rbxassetid://129756402359021", "Spawner's summons will be spawned at the Spawner instead of unit spawns.\n", {nil, 2000, 0.1, {0, 0, 0, 7, 0}}};
	Rain_Boots = {"Rain Boots", "rbxassetid://140213339035942", "Engineer and her summons will be completely immune to [Wave Attacks], but Robots are unable to attack.\n", {nil, 2000, 0, {0, 0, 0, 0, 5}}};
	Paper_Ghost = {"Paper Ghost", "rbxassetid://113715250573961", "Saboteur's firerate is much slower, but he will be permanently cloaked.\n", {nil, 1000, 0, {0, 0, 0, 0, 0}}};
	Log = {"Wooden Reinforcement", "rbxassetid://95464902821860", "Watchtower's cooldown is much higher, but watchtowers last forever.\n", {nil, 2000, 0, {0, 0, 0, 0, 0}}};
	Money_Paper = {"Tax Document", "rbxassetid://133829700742359", "Bank doesn't give any money, but income gain is tripled.\n", {nil, 2000, 0, {0, 0, 0, 5, 0}}};
	Vines = {"Spiked Vines", "rbxassetid://111773666085628", "Juggernaut loses all shield health, but reflects any damage taken from enemies. Upgrading increases the damage that the enemy receives.\n", {nil, 2000, 0, {0, 5, 0, 0, 0}}};
	Alien_7 = {"Strange Capsule", "rbxassetid://129800555019417", "Bunny does not heal units, and attacks slower. Her eggs are replaced with their ALIEN variant, which spawns Aliens when broken.\n", {nil, 1000, 0, {0, 0, 0, 0, 0}}};
	backwards = {"Suspicious Program", "rbxassetid://92721167454940", "Operative's ability cooldowns are longer, but he summons ALIEN enemies on top of his normal summons.\n Summon limit is also increased.", {nil, 1000, 0, {0, 0, 0, 0, 0}}};
	Lives = {"Short Life", "rbxassetid://18714125463", "Reduces unit & friendly enemy health by 20%. When activated, activates a weaker version of 'Extra Life' accessory's ability, but increases everyone's unit cooldowns by 75%.", {nil, 1000, 0, {0, 6, 0, 0, 0}}, "ABILITY"};
	Phone = {"Call for Help", "rbxassetid://18714491990", "Reduces starting cash. When activated, SWAT units will be summoned, with strength based on starting cash.\n Can be used multiple times.", {nil, 1000, 0, {0, 0, 6, 6, 0}}, "ABILITY"};
	Jail = {"Jail", "rbxassetid://97657553870678", "Reduces unit & friendly enemy health by 10%. When activated, temporarily jails all weak enemies.\n Can be used multiple times.", {nil, 1, 0, {0, 0, 0, 0, 0}}, "ABILITY"};
}
function module_upvr.Trinkets_Get(arg1) -- Line 3144
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	for i_46, v_43 in pairs(arg1:GetAttributes()) do
		if string.match(i_46, "Trinket") and module_upvr.Trinket[v_43] then
			table.insert({}, v_43)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
module_upvr.Trinket_Description = {
	ABILITY = "<b><font color='#e07070'>[ ABILITY | Special effect is activated by pressing the trinket's icon. ]</font></b>\n";
}
module_upvr.trinkets_needed = {"Coin", "Silver", "Grapple", "Telescope", "Burger", "Gasoline", "Admin", "Spider", "Bomb", "Pepper", "Eggs", "Spikes", "Mother", "Queen", "Ice3", "Fighter", "Sniper", "Explode", "Healer", "Betrayal", "Lighter", "Blitz", "Mud_7", "Snowmen", "Zombies", "Cleaner", "Eyes", "Ghosted", "Hands", "Soda", "Frosted", "Microphone", "Remote", "Flashlight", "Corrupteds", "Lives", "Phone", "Secrets", "Trees", "Frozen_Bomb", "Mud_Mirror", "Seed_Bag", "Buckets_", "Warriors", "Grenades", "Rain_Boots", "Money_Paper", "Paper_Ghost", "Vines", "Burger_2", "Log", "Alien_7", "backwards"}
module_upvr.banned_trading = {"Unknown", "Coin", "Trees", "Frozen_Bomb", "Mud_Mirror", "Seed_Bag", "Buckets_", "Warriors", "Grenades", "Burger_2", "Log", "Alien_7", "backwards", "Jail"}
module_upvr.banned_Trinket_Sandbox = {"Trees"}
module_upvr.Trinket_Rewards = {
	Glacier = {25, 0, {"Ice3", "Snowmen", "Cleaner", "Frozen_Bomb"}};
	Battleplate = {25, 0, {"Burger", "Coin", "Eyes"}};
	Battlehouse = {25, 0, {"Pepper", "Blitz", "Gasoline"}};
	Wastelands = {25, 0, {"Fighter", "Pepper", "Ghosted"}};
	Depot = {5, 100, {"Remote"}};
	["Ghost Town"] = {2, 80, {"Mother", "Pepper", "Blitz", "Lighter", "Ghosted"}};
	["Ruined Warehouse"] = {2, 80, {"Betrayal", "Microphone"}};
	["Destroyed Remnant"] = {2, 80, {"Queen", "Ice3", "Mother", "Soda"}};
	["Eruption Site"] = {2, 80, {"Explode", "Bomb", "Lighter", "Hands"}};
	["Blazing Wasteland"] = {2, 80, {"Blitz", "Lighter", "Hands"}};
	["Fated Plate"] = {2, 80, {"Burger", "Coin", "Eyes", "Cleaner"}};
	["Demolished Depot"] = {2, 80, {"Grenades", "Phone", "Warriors"}};
	Blockhouse = {1, 50, {"Pepper", "Blitz"}};
	Plains = {1, 50, {"Pepper"}};
	Station = {1, 50, {"Telescope", "Grapple"}};
	Chasm = {1, 50, {"Spider", "Grapple"}};
	["Mudded Cavern"] = {1, 50, {"Spider", "Grapple", "Mud_7", "Mud_Mirror"}};
	Manor = {1, 50, {"Spider", "Lighter", "Zombies"}};
	Twofold = {1, 50, {"Coin", "Fighter", "Hands", "Warriors"}};
	Baseplate = {1, 50, {"Burger"}};
	Construction = {1, 50, {"Coin", "Burger", "Grapple", "Gasoline"}};
	Heights = {1, 50, {"Sniper"}};
	Pyramid = {1, 50, {"Coin", "Gasoline"}};
	Badlands = {1, 50, {"Fighter"}};
	Volcano = {1, 50, {"Healer", "Lighter", "Hands"}};
	Wildfire = {1, 50, {"Gasoline", "Lighter", "Phone"}};
	Graveyard = {1, 50, {"Spider", "Explode", "Zombies", "Ghosted", "Buckets_"}};
	Powerhouse = {1, 50, {"Frozen_Bomb", "Cleaner", "Betrayal"}};
	Everfrost = {1, 50, {"Frozen_Bomb", "Ice3", "Soda", "Frosted"}};
	Seasonal = {1, 50, {"Frozen_Bomb", "Hands", "Coin", "Buckets_", "Log"}};
	Outbreak = {1, 35, {"Spider", "Zombies", "Ghosted", "Microphone", "Phone", "Buckets_"}};
	Abyss = {1, 35, {"Healer", "Lighter", "Hands"}};
	Swamp = {1, 35, {"Spider", "Zombies", "Lives"}};
	Castle = {1, 35, {"Queen", "Mother"}};
	Meadow = {1, 35, {"Eggs", "Queen"}};
	Hideout = {1, 35, {"Bomb", "Explode"}};
	Liminal = {1, 35, {"Spikes", "Silver", "Cleaner"}};
	Industry = {1, 35, {"Spikes", "Silver", "Corrupteds", "Grenades"}};
	Ruins = {1, 35, {"Spikes", "Grenades", "Phone", "Warriors"}};
	Highway = {1, 35, {"Spikes", "Silver"}};
	Remnant = {1, 35, {"Ice3", "Snowmen", "Cleaner"}};
	Snowfield = {1, 35, {"Ice3", "Soda", "Frosted"}};
	Arctic = {1, 35, {"Ice3", "Cleaner", "Frosted"}};
	Cargo = {1, 35, {"Coin", "Silver"}};
	Island = {1, 35, {"Coin", "Silver"}};
	Equator = {1, 35, {"Coin", "Silver"}};
	Blizzard = {1, 35, {"Ice3", "Snowmen"}};
	Spiral = {1, 35, {"Ice3", "Soda"}};
	Hollow = {1, 35, {"Flashlight", "Lives"}};
	Blimp = {1, 35, {"Flashlight"}};
	["Ruined Facility"] = {1, 35, {"Blitz", "Betrayal", "Flashlight", "Corrupteds"}};
	Suburban = {1, 20, {"Pepper", "Telescope", "Lighter", "Phone"}};
	Grassland = {1, 20, {"Healer"}};
	Jungle = {1, 20, {"Healer", "Vines"}};
	Campsite = {1, 20, {"Telescope"}};
	Desert = {1, 20, {"Lighter"}};
	Doomspire = {1, 20, {"Burger"}};
	Chessboard = {1, 20, {"Burger"}};
	Gallery = {1, 20, {"Burger"}};
	Savanna = {1, 20, {"Seed_Bag", "Log"}};
	Farm = {1, 20, {"Seed_Bag"}};
	Plumrealm = {1, 1, {"Admin"}};
	Painlands = {1, 1, {"Trees"}};
}
function module_upvr.MakeThing(arg1, arg2, arg3, arg4) -- Line 3301
	local clone_25 = arg1.template:Clone()
	local template2 = clone_25.template2
	clone_25.Visible = true
	template2.Visible = true
	template2.TextLabel.Text = arg2
	clone_25.Size = UDim2.new(0, 10 * #arg2 + 10, 0, 32)
	template2.TextLabel.TextColor3 = arg3
	if arg4 then
		template2:SetAttribute("DespawnTimer", arg4)
	else
		template2:SetAttribute("DespawnTimer", 2 + #arg2 / 8)
	end
	clone_25.Parent = arg1
end
function module_upvr.MakeError(arg1, arg2, arg3, arg4, arg5) -- Line 3317
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr.MakeThing(arg1, arg2, arg3, arg4)
end
function module_upvr.MakeAnnounce(arg1, arg2, arg3, arg4) -- Line 3321
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr.MakeThing(arg1, arg2, arg3, 20)
end
module_upvr.ClientUnitInfo = {
	["Soldier I"] = {32, "suspicious"};
	["Soldier II"] = {35, "suspicious"};
	["Soldier III"] = {36, "suspicious"};
	["Soldier IV"] = {38, "suspicious"};
	["Soldier V"] = {42, "suspicious"};
	["Soldier VI"] = {45, "suspicious"};
	["Tazer I"] = {37.5, "suspicious"};
	["Tazer II"] = {40, "suspicious"};
	["Tazer III"] = {46, "suspicious"};
	["Tazer IV"] = {62, "suspicious"};
	["Destructor I"] = {37.5, "suspicious"};
	["Destructor II"] = {40, "suspicious"};
	["Destructor III"] = {46, "suspicious"};
	["Destructor IV"] = {50, "suspicious"};
	["Destructor V"] = {50, "suspicious"};
	["Demoman I"] = {20, "suspicious"};
	["Demoman II"] = {22.5, "suspicious"};
	["Demoman III"] = {26, "suspicious"};
	["Demoman IV"] = {28.5, "suspicious"};
	["Demoman V"] = {29, "suspicious"};
	["Demoman VI"] = {35, "suspicious"};
	["Swordfighter I"] = {5.25, "suspicious"};
	["Swordfighter II"] = {5.25, "suspicious"};
	["Swordfighter III"] = {5.25, "suspicious"};
	["Swordfighter IV"] = {5.25, "suspicious"};
	["Swordfighter V"] = {5.75, "suspicious"};
	["Businessman I"] = {12.5, "suspicious"};
	["Businessman II"] = {18.5, "suspicious"};
	["Businessman III"] = {25, "suspicious"};
	["Businessman IV"] = {32, "suspicious"};
	["Sniper I"] = {44, "suspicious"};
	["Sniper II"] = {46, "suspicious"};
	["Sniper III"] = {50, "suspicious"};
	["Sniper IV"] = {55, "suspicious"};
	["Sniper V"] = {62.5, "suspicious"};
	["Sniper VI"] = {70, "suspicious"};
	["Engineer I"] = {28, "suspicious", nil, nil, nil, 18.666666666666668};
	["Engineer II"] = {31.25, "suspicious", nil, nil, nil, 20.833333333333332};
	["Engineer III"] = {34.75, "suspicious", nil, nil, nil, 23.166666666666668};
	["Engineer IV"] = {37.5, "suspicious", nil, nil, nil, 25};
	["Engineer V"] = {37.5, "suspicious", nil, nil, nil, 25};
	["Cryomancer I"] = {22, "suspicious"};
	["Cryomancer II"] = {26, "suspicious"};
	["Cryomancer III"] = {32, "suspicious"};
	["Cryomancer IV"] = {35, "suspicious"};
	["Cryomancer V"] = {35, "suspicious"};
	["Cryomancer VI"] = {50, "suspicious"};
	["Guerrilla I"] = {22, "suspicious"};
	["Guerrilla II"] = {25, "suspicious"};
	["Guerrilla III"] = {28, "suspicious"};
	["Guerrilla IV"] = {32, "suspicious"};
	["Guerrilla V"] = {35, "suspicious"};
	["Juggernaut I"] = {6.25, "suspicious"};
	["Juggernaut II"] = {6.25, "suspicious"};
	["Juggernaut III"] = {9.5, "suspicious"};
	["Juggernaut IV"] = {9.5, "suspicious"};
	["Dissolver I"] = {37.5, "suspicious"};
	["Dissolver II"] = {37.5, "suspicious"};
	["Dissolver III"] = {37.5, "suspicious"};
	["Dissolver IV"] = {37.5, "suspicious"};
	["Dissolver V"] = {45, "suspicious"};
	["Assassin I"] = {5, "suspicious", true};
	["Assassin II"] = {5, "suspicious", true};
	["Assassin III"] = {20, "suspicious", nil, nil, nil, 5};
	["Assassin IV"] = {30, "suspicious", nil, nil, nil, 5};
	["Assassin V"] = {40, "suspicious", nil, nil, nil, 5};
	["Assassin VI"] = {50, "suspicious", nil, nil, nil, 5};
	["Reaper I"] = {31.25, "suspicious", nil, nil, nil, 6};
	["Reaper II"] = {31.25, "suspicious", nil, nil, nil, 6};
	["Reaper III"] = {31.25, "suspicious", nil, nil, nil, 6};
	["Reaper IV"] = {31.25, "suspicious", nil, nil, nil, 6};
	["Reaper V"] = {31.25, "suspicious", nil, nil, nil, 6};
	["Blockbuster I"] = {28, "suspicious", nil, nil, nil, 14};
	["Blockbuster II"] = {32, "suspicious", nil, nil, nil, 16};
	["Blockbuster III"] = {35, "suspicious", nil, nil, nil, 17.5};
	["Blockbuster IV"] = {35, "suspicious", nil, nil, nil, 17.5};
	["Blockbuster V"] = {38, "suspicious", nil, nil, nil, 19};
	["Recon I"] = {24, "suspicious"};
	["Recon II"] = {26.4, "suspicious"};
	["Recon III"] = {30, "suspicious"};
	["Recon IV"] = {36, "suspicious"};
	["Recon V"] = {42, "suspicious"};
	["Recon VI"] = {48, "suspicious"};
	["Farmer I"] = {4.6, "suspicious", true};
	["Farmer II"] = {4.6, "suspicious", true};
	["Farmer III"] = {5, "suspicious", true};
	["Farmer IV"] = {6, "suspicious", true};
	["Farmer V"] = {6, "suspicious", true};
	["Farmer VI"] = {6.5, "suspicious", true};
	["Lookout I"] = {95, "suspicious"};
	["Lookout II"] = {125, "suspicious"};
	["Lookout III"] = {155, "suspicious"};
	["Lookout IV"] = {5, "suspicious"};
	["Glazier I"] = {15, "suspicious"};
	["Glazier II"] = {18, "suspicious"};
	["Barrager I"] = {13, "suspicious"};
	["Barrager II"] = {13, "suspicious"};
	["Barrager III"] = {13, "suspicious"};
	["Barrager IV"] = {16, "suspicious"};
	["Barrager V"] = {20, "suspicious"};
	["Barrager VI"] = {22, "suspicious"};
	["Turreter I"] = {28, "suspicious"};
	["Turreter II"] = {28, "suspicious"};
	["Turreter III"] = {32, "suspicious"};
	["Turreter IV"] = {32, "suspicious"};
	["Turreter V"] = {32, "suspicious"};
	["Turreter VI"] = {40, "suspicious"};
	["Turreter VII"] = {40, "suspicious"};
	["Turreter VIII"] = {40, "suspicious"};
	["Blaster I"] = {87.5, "Cliff"};
	["Blaster II"] = {112.5, "Cliff"};
	["Blaster III"] = {125, "Cliff"};
	["Blaster IV"] = {137.5, "Cliff"};
	["Noobfighter I"] = {5, "suspicious", true};
	["Noobfighter II"] = {5, "suspicious", true};
	["Noobfighter III"] = {5, "suspicious", true};
	["Noobfighter IV"] = {5, "suspicious", true};
	["Noobfighter V"] = {6, "suspicious", true};
	["Noobfighter VI"] = {6, "suspicious", true};
	["Noobfighter VII"] = {4, "suspicious", true};
	["Noobfighter VIII"] = {4, "suspicious", true};
	["Noobfighter IX"] = {6, "suspicious", true};
	["Ignitor I"] = {18, "suspicious"};
	["Ignitor II"] = {22, "suspicious"};
	["Ignitor III"] = {22, "suspicious"};
	["Ignitor IV"] = {37.5, "suspicious"};
	["Ignitor V"] = {50, "suspicious"};
	["Saboteur I"] = {37.5, "suspicious"};
	["Saboteur II"] = {37.5, "suspicious"};
	["Saboteur III"] = {48, "suspicious"};
	["Saboteur IV"] = {56.25, "suspicious"};
	["Ninja I"] = {16, "suspicious", nil, nil, nil, 6};
	["Ninja II"] = {18, "suspicious", nil, nil, nil, 6};
	["Ninja III"] = {21, "suspicious", nil, nil, nil, 6};
	["Ninja IV"] = {25, "suspicious", nil, nil, nil, 6};
	["Ninja V"] = {30, "suspicious", nil, nil, nil, 6};
	["Ninja VI"] = {35, "suspicious", nil, nil, nil, 6};
	["Bank I"] = {20, "building"};
	["Bank II"] = {25, "building"};
	["Bank III"] = {30, "building"};
	["Bank IV"] = {30, "building"};
	["Brawler I"] = {4, "suspicious", true};
	["Brawler II"] = {4, "suspicious", true};
	["Brawler III"] = {4, "suspicious", true};
	["Brawler IV"] = {4, "suspicious", true};
	["Brawler V"] = {4, "suspicious", true};
	["Brawler VI"] = {4, "suspicious", true};
	["Brawler VII"] = {4, "suspicious", true};
	["Brawler VIII"] = {4, "suspicious", true};
	["Brawler IX"] = {4, "suspicious", true};
	["Medic I"] = {18.75, "suspicious"};
	["Medic II"] = {25, "suspicious"};
	["Medic III"] = {25, "suspicious"};
	["Medic IV"] = {28, "suspicious"};
	["Chesspiece I"] = {6.25, "suspicious"};
	["Chesspiece II"] = {9.5, "suspicious"};
	["Chesspiece III"] = {9.5, "suspicious"};
	["Chesspiece IV"] = {11.25, "suspicious"};
	["SWAT I"] = {5, "building"};
	["SWAT II"] = {5, "building"};
	["SWAT III"] = {5, "building"};
	["SWAT IV"] = {5, "building"};
	["Airstrike I"] = {45, "suspicious"};
	["Airstrike II"] = {45, "suspicious"};
	["Airstrike III"] = {60, "suspicious"};
	["Airstrike IV"] = {75, "suspicious"};
	["Pulsar I"] = {18.75, "suspicious"};
	["Pulsar II"] = {22, "suspicious"};
	["Pulsar III"] = {25, "suspicious"};
	["Pulsar IV"] = {32, "suspicious"};
	["Constructor I"] = {125, "suspicious", nil, nil, nil, 5};
	["Constructor II"] = {125, "suspicious", nil, nil, nil, 5};
	["Constructor III"] = {125, "suspicious", nil, nil, nil, 5};
	["Constructor IV"] = {125, "suspicious", nil, nil, nil, 5};
	["Aviator I"] = {15, "suspicious"};
	["Aviator II"] = {15, "suspicious"};
	["Aviator III"] = {19, "suspicious"};
	["Aviator IV"] = {24, "suspicious"};
	["Aviator V"] = {25, "suspicious"};
	["Mudsplatter I"] = {37.5, "suspicious"};
	["Mudsplatter II"] = {37.5, "suspicious"};
	["Mudsplatter III"] = {37.5, "suspicious"};
	["Mudsplatter IV"] = {37.5, "suspicious"};
	["Mudsplatter V"] = {37.5, "suspicious"};
	["General I"] = {31.25, "suspicious", nil, nil, nil, 15.625};
	["General II"] = {37.5, "suspicious", nil, nil, nil, 18.75};
	["General III"] = {43.75, "suspicious", nil, nil, nil, 21.875};
	["General IV"] = {50, "suspicious", nil, nil, nil, 25};
	["Rocker I"] = {25, "suspicious", nil, nil, nil, 6};
	["Rocker II"] = {31.25, "suspicious", nil, nil, nil, 6};
	["Rocker III"] = {35, "suspicious", nil, nil, nil, 6};
	["Rocker IV"] = {37.5, "suspicious", nil, nil, nil, 6};
	["Rifler I"] = {50, "suspicious"};
	["Rifler II"] = {62.5, "suspicious"};
	["Rifler III"] = {75, "suspicious"};
	["Rifler IV"] = {87.5, "suspicious"};
	["Enchantress I"] = {50, "suspicious"};
	["Enchantress II"] = {50, "suspicious"};
	["Enchantress III"] = {50, "suspicious"};
	["Enchantress IV"] = {80, "suspicious"};
	["Mecha I"] = {31.25, "suspicious"};
	["Mecha II"] = {35, "suspicious"};
	["Mecha III"] = {37.5, "suspicious"};
	["Mecha IV"] = {43.75, "suspicious"};
	["Sargeant I"] = {25, "suspicious", nil, nil, nil, 6};
	["Sargeant II"] = {25, "suspicious", nil, nil, nil, 6};
	["Watchtower I"] = {8, "suspicious", true, 10};
	["Watchtower II"] = {8, "suspicious", true, 10};
	["Watchtower III"] = {12, "suspicious", true, 15};
	["Incendiarier I"] = {48, "Cliff"};
	["Incendiarier II"] = {48, "Cliff"};
	["Verglasar I"] = {18.75, "suspicious", nil, nil, nil, 6};
	["Verglasar II"] = {18.75, "suspicious", nil, nil, nil, 6};
	["Agronomist I"] = {9.5, "suspicious"};
	["Agronomist II"] = {9.5, "suspicious"};
	["Agent I"] = {32, "suspicious"};
	["Agent II"] = {32, "suspicious"};
	["Cowboy I"] = {28, "suspicious"};
	["Artificer I"] = {18.75, "suspicious"};
	["Artificer II"] = {20, "suspicious"};
	["Artificer III"] = {22.5, "suspicious"};
	["Artificer IV"] = {25, "suspicious"};
	["Eradicator I"] = {56.25, "suspicious", nil, 10, nil, 18.75};
	["Eradicator II"] = {62.5, "suspicious", nil, 10, nil, 20.833333333333332};
	["Eradicator III"] = {68.75, "suspicious", nil, 10, nil, 22.916666666666668};
	["Eradicator IV"] = {75, "suspicious", nil, 10, nil, 25};
	["Wrecker I"] = {12, "suspicious"};
	["Wrecker II"] = {12, "suspicious"};
	["Wrecker III"] = {12, "suspicious"};
	["Wrecker IV"] = {12, "suspicious"};
	["Wrecker V"] = {12, "suspicious"};
	["Kindler I"] = {22, "suspicious", nil, nil, true};
	["Kindler II"] = {27.5, "suspicious", nil, nil, true};
	["Mirror I"] = {16, "suspicious", nil, 2};
	["Mirror II"] = {16, "suspicious", nil, 2};
	["Mirror III"] = {20, "suspicious", nil, 2};
	["Mirror IV"] = {20, "suspicious", nil, 2};
	["Chef I"] = {20, "suspicious"};
	["Chef II"] = {20, "suspicious"};
	["Chef III"] = {20, "suspicious"};
	["Chef IV"] = {25, "suspicious"};
	["Operative I"] = {25, "suspicious"};
	["Operative II"] = {25, "suspicious"};
	["Operative III"] = {30, "suspicious"};
	["Operative IV"] = {35, "suspicious"};
	["Pumpkin I"] = {10, "suspicious", nil, 15};
	["Pumpkin II"] = {10, "suspicious", nil, 15};
	["Spawner I"] = {10, "building"};
	["Spawner II"] = {10, "building"};
	["Spawner III"] = {10, "building"};
	["Spawner IV"] = {10, "building"};
	["Reserve I"] = {5, "building"};
	["Snowman I"] = {26, "suspicious"};
	["Snowman II"] = {32, "suspicious"};
	["Snowman III"] = {40, "suspicious"};
	["Snowman IV"] = {50, "suspicious"};
	["Snowman V"] = {50, "suspicious"};
	["Toxicator I"] = {70, "Cliff"};
	["Toxicator II"] = {80, "Cliff"};
	["Toxicator III"] = {80, "Cliff"};
	["Toxicator IV"] = {85, "Cliff"};
	["Ruler I"] = {50, "suspicious", nil, 10};
	["Ruler II"] = {50, "suspicious", nil, 10};
	["Striker I"] = {20, "suspicious", nil, nil, nil, 5.5};
	["Striker II"] = {25, "suspicious", nil, nil, nil, 5.5};
	["Striker III"] = {30, "suspicious", nil, nil, nil, 6};
	["Striker IV"] = {45, "suspicious", nil, nil, nil, 6.33};
	["Striker V"] = {45, "suspicious", nil, nil, nil, 6.5};
	["Bunny I"] = {50, "suspicious", nil, 6, nil, 20};
	["Bunny II"] = {55, "suspicious", nil, 6, nil, 24};
	["Bunny III"] = {62.5, "suspicious", nil, 6, nil, 28};
	["Bunny IV"] = {72.5, "suspicious", nil, 6, nil, 32};
	["Bunny V"] = {90, "suspicious", nil, 12, nil, 45};
	["Outlaw I"] = {25, "suspicious"};
	["Outlaw II"] = {28, "suspicious"};
	["Outlaw III"] = {32, "suspicious"};
	["Outlaw IV"] = {36, "suspicious"};
	["Radar I"] = {40, "building"};
	["Radar II"] = {45, "building"};
	["Radar III"] = {55, "building"};
	["Radar IV"] = {65, "building"};
	["Trapper I"] = {25, "suspicious", nil, nil, nil, 4.5};
	["Trapper II"] = {32, "suspicious", nil, nil, nil, 4.5};
	["Trapper III"] = {45, "suspicious", nil, nil, nil, 4.5};
	["Trapper IV"] = {52, "suspicious", nil, nil, nil, 4.5};
	["Singer I"] = {25, "suspicious"};
	["Singer II"] = {30, "suspicious"};
	["Singer III"] = {35, "suspicious"};
	["Singer IV"] = {40, "suspicious"};
	["Valkyrie I"] = {40, "suspicious", nil, nil, nil, 4.5};
	["Valkyrie II"] = {45, "suspicious", nil, nil, nil, 4.5};
	["Valkyrie III"] = {55, "suspicious", nil, nil, nil, 4.5};
	["Valkyrie IV"] = {70, "suspicious", nil, nil, nil, 4.5};
	["Converter I"] = {30, "suspicious"};
	["Converter II"] = {32.5, "suspicious"};
	["Converter III"] = {35, "suspicious"};
	["Converter IV"] = {40, "suspicious"};
	["Blademaster I"] = {6, "suspicious", true};
	["Blademaster II"] = {6, "suspicious", true};
	["Blademaster III"] = {6, "suspicious", true};
	["Blademaster IV"] = {6, "suspicious", true};
	["Blademaster V"] = {6, "suspicious", true};
	["Blademaster VI"] = {6, "suspicious", true};
	["Blademaster VII"] = {6, "suspicious", true};
	["Blademaster VIII"] = {6, "suspicious", true};
	["Blademaster IX"] = {6, "suspicious", true};
	["Blademaster X"] = {6, "suspicious", true};
	["Blademaster XI"] = {6, "suspicious", true};
	["Factory I"] = {40, "building"};
	["Factory II"] = {55, "building"};
	["Factory III"] = {70, "building"};
	["Factory IV"] = {85, "building"};
	["Gasoliner I"] = {25, "suspicious"};
	["Gasoliner II"] = {30, "suspicious"};
	["Gasoliner III"] = {40, "suspicious"};
	["Gasoliner IV"] = {40, "suspicious"};
	["Mimic I"] = {4, "suspicious"};
	["Beacon I"] = {35, "suspicious", nil, 4, nil, 6};
	["Beacon II"] = {45, "suspicious", nil, 5, nil, 6};
	["Beacon III"] = {55, "suspicious", nil, 6, nil, 6};
	["Beacon IV"] = {60, "suspicious", nil, 6, nil, 6};
	["Drafter I"] = {25, "suspicious"};
	["Drafter II"] = {30, "suspicious"};
	["Drafter III"] = {45, "suspicious"};
	["Drafter IV"] = {65, "suspicious"};
	["Mortar I"] = {60, "Cliff"};
	["Mortar II"] = {70, "Cliff"};
	["Mortar III"] = {85, "Cliff"};
	["Mortar IV"] = {110, "Cliff"};
	["Cosmonaut I"] = {30, "suspicious"};
	["Cosmonaut II"] = {35, "suspicious"};
	["Cosmonaut III"] = {40, "suspicious"};
	["Cosmonaut IV"] = {50, "suspicious"};
	["Cosmonaut V"] = {65, "suspicious"};
	["Sentry I"] = {40, "suspicious", nil, 20};
	["Sentry II"] = {45, "suspicious", nil, 20};
	["Sentry III"] = {45, "suspicious", nil, 20};
	["Sentry IV"] = {55, "suspicious", nil, 30};
	["Sentry V"] = {70, "suspicious", nil, 40};
	["Chainsaw I"] = {6, "suspicious", true};
	["Chainsaw II"] = {6, "suspicious", true};
	["Chainsaw III"] = {7, "suspicious", true};
	["Chainsaw IV"] = {8, "suspicious", true};
	["Dancer I"] = {3.75, "suspicious", true};
	["Dancer II"] = {3.75, "suspicious", true};
	["Dancer III"] = {3.75, "suspicious", true};
	["Dancer IV"] = {3.75, "suspicious", true};
}
module_upvr.ClientUnitInfo_Drone = {
	["Lookout I"] = {19, "suspicious"};
	["Lookout II"] = {25, "suspicious"};
	["Lookout III"] = {31, "suspicious"};
	["Lookout IV"] = {65, "suspicious"};
	["Mudsplatter I"] = {45, "suspicious"};
	["Mudsplatter II"] = {45, "suspicious"};
	["Mudsplatter III"] = {45, "suspicious"};
	["Mudsplatter IV"] = {45, "suspicious"};
	["Mudsplatter V"] = {45, "suspicious"};
	["Ignitor I"] = {24, "suspicious"};
	["Ignitor II"] = {28, "suspicious"};
	["Ignitor III"] = {28, "suspicious"};
	["Ignitor IV"] = {43.5, "suspicious"};
	["Ignitor V"] = {56, "suspicious"};
	["Reserve I"] = {100, "building"};
	["Rocker I"] = {16.666666666666668, "suspicious"};
	["Rocker II"] = {20.833333333333332, "suspicious"};
	["Rocker III"] = {23.333333333333332, "suspicious"};
	["Rocker IV"] = {25, "suspicious"};
}
module_upvr.ClientUnitInfo_Melee = {
	["Ninja I"] = {32, "suspicious", nil, nil, nil, 6};
	["Ninja II"] = {36, "suspicious", nil, nil, nil, 6};
	["Ninja III"] = {42, "suspicious", nil, nil, nil, 6};
	["Ninja IV"] = {50, "suspicious", nil, nil, nil, 6};
	["Ninja V"] = {60, "suspicious", nil, nil, nil, 6};
	["Ninja VI"] = {70, "suspicious", nil, nil, nil, 6};
}
module_upvr.TowerList = {-- : First try: runluau:11745: attempt to index nil with 't'

module_upvr.CostList = {-- : First try: runluau:11745: attempt to index nil with 't'

module_upvr.map = {
	I = 1;
	V = 5;
	X = 10;
	L = 50;
	C = 100;
	D = 500;
	M = 1000;
}
module_upvr.numbers = {1, 5, 10, 50, 100, 500, 1000}
module_upvr.chars = {'I', 'V', 'X', 'L', 'C', 'D', 'M'}
function module_upvr.ToRomanNumerals(arg1) -- Line 3957
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local tonumber_result1 = tonumber(arg1)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [7] 7. Error Block 31 start (CF ANALYSIS FAILED)
	if tonumber_result1 ~= tonumber_result1 then
		-- KONSTANTERROR: [9] 8. Error Block 29 start (CF ANALYSIS FAILED)
		warn("Unable to convert to number")
		do
			return '0'
		end
		-- KONSTANTERROR: [9] 8. Error Block 29 end (CF ANALYSIS FAILED)
	end
	if tonumber_result1 == math.huge then
		warn("Unable to convert infinity")
		return '0'
	end
	local floored = math.floor(tonumber_result1)
	if floored <= 0 then
		return floored
	end
	repeat
	until 0 > floored - module_upvr.numbers[#module_upvr.numbers] and 0 >= floored
	-- KONSTANTERROR: [7] 7. Error Block 31 end (CF ANALYSIS FAILED)
end
function module_upvr.ToNumber(arg1) -- Line 3968
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local any_upper_result1 = arg1:upper()
	local var4377
	while true do
		local var4378
		if var4378 > any_upper_result1:len() then break end
		local any_sub_result1 = any_upper_result1:sub(var4378, var4378)
		local var4380
		if any_sub_result1 ~= ' ' then
			var4380 = module_upvr.map[any_sub_result1]
			if not var4380 then
				var4380 = error("Unknown Roman Numeral '"..any_sub_result1.."'")
			end
			local any_sub_result1_2 = any_upper_result1:sub(var4378 + 1, var4378 + 1)
			local var4382 = module_upvr.map[any_sub_result1_2]
			if any_sub_result1_2 and var4382 then
				if var4380 < var4382 then
					var4377 += var4382 - var4380
					var4378 += 1
				else
					var4377 += var4380
				end
			else
				var4377 += var4380
			end
		end
		var4378 += 1
	end
	return var4377
end
return module_upvr
