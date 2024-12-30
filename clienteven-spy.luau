local function printArguments(...)
	local function printTable(tbl, indent)
		indent = indent or " "
		local Index = 1
		for k, v in tbl do
			if type(v) == "table" then
				print(
					string.format("%s│ Argument %s: %s: Table (%s)", indent, tostring(Index), tostring(k), typeof(v))
				)
				printTable(v, indent .. "    ")
			else
				print(
					string.format(
						"%s│ Argument %s: ['%s'] = %s (%s)",
						indent,
						tostring(Index),
						tostring(k),
						tostring(v),
						typeof(v)
					)
				)
			end
			Index += 1
		end
	end

	local args = { ... }
	print("┌── Arguments ────────────────────────────")
	for i, arg in ipairs(args) do
		if type(arg) == "table" then
			warn(
				"╔═════════════════════════════════════════╗"
			)
			warn(string.format("│ Argument %d: Table (%s)", i, typeof(arg)))
			warn(
				"╚═════════════════════════════════════════╝"
			)
			printTable(arg, "    ")
		else
			print(string.format("│ Argument %d: %s (%s)", i, tostring(arg), typeof(arg)))
		end
	end
	print(
		"└──────────────────────────────────────────"
	)
end

local function getRemotePath(remote)
	local pathParts = {}
	local current = remote

	while current and current ~= game do
		table.insert(pathParts, 1, current.Name)
		current = current.Parent
	end
	table.insert(pathParts, 1, "game")
	return table.concat(pathParts, ".")
end

local function printRemoteCall(remoteType, remote, printFunc)
	local remotePath = getRemotePath(remote)
	printFunc(
		"╔═══════════════════════════════════════════════════════════════════╗"
	)
	printFunc(string.format("║ %s fired from: %s", remoteType, remotePath))
	printFunc(
		"╚═══════════════════════════════════════════════════════════════════╝"
	)
end

local function wrapRemote(remote)
	if remote:IsA("RemoteEvent") then
		remote.OnClientEvent:Connect(function(...)
			printRemoteCall("RemoteEvent", remote, warn)
			printArguments(...)
		end)
	elseif remote:IsA("RemoteFunction") then
		remote.OnClientInvoke = function(...)
			printRemoteCall("RemoteFunction", remote, error)
			printArguments(...)
		end
	end
end

local function wrapRemotesInFolder(folder)
	for _, obj in folder:GetDescendants() do
		if obj:IsA("RemoteEvent") or obj:IsA("RemoteFunction") then
			wrapRemote(obj)
		end
	end
	folder.DescendantAdded:Connect(function(descendant)
		if descendant:IsA("RemoteEvent") or descendant:IsA("RemoteFunction") then
			wrapRemote(descendant)
		end
	end)
end

local ReplicatedStorage = game:GetService("ReplicatedStorage") :: ReplicatedStorage
local StarterGui = game:GetService("StarterGui") :: StarterGui

wrapRemotesInFolder(ReplicatedStorage)
wrapRemotesInFolder(StarterGui)
wrapRemotesInFolder(workspace)

ReplicatedStorage.DescendantAdded:Connect(function(descendant)
	if descendant:IsA("RemoteEvent") or descendant:IsA("RemoteFunction") then
		wrapRemote(descendant)
	end
end)

StarterGui.DescendantAdded:Connect(function(descendant)
	if descendant:IsA("RemoteEvent") or descendant:IsA("RemoteFunction") then
		wrapRemote(descendant)
	end
end)

workspace.DescendantAdded:Connect(function(descendant)
	if descendant:IsA("RemoteEvent") or descendant:IsA("RemoteFunction") then
		wrapRemote(descendant)
	end
end)
