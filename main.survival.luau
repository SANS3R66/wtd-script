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
local SpawnUnit = ReplicatedStorage.SpawnUnit :: RemoteEvent

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
    -- TODO: make macros more stable
    local macrosSection = Tabs.Main:AddSection("Macros")
    macrosSection:CreateParagraph("", { Title = "Macros section", Content = "Allows you to play or record macros" })
    local fileMacros = macrosSection:CreateInput("", { Title = "Macros file name", Default = "macros.lua" })

    local isMacrosRecording = false
    local isMacrosPlaying = false
    local macrosResult = {}
    local mt = getrawmetatable(game)
    local old = mt.__namecall :: (...any) -> ...any

    macrosSection:CreateButton({
        Title = "Record macros",
        Description = "Starts recording your tower placements",
        Callback = function()
            task.spawn(function()
                if isMacrosRecording then
                    return
                end
                isMacrosRecording = true
                setreadonly(mt, false)
                local lastTick = os.clock()
                local secondsMacros = 0

                mt.__namecall = newcclosure(function(...)
                    local args = { ... }
                    --local method = getnamecallmethod() -- we dont have to call this everytime if we can check via args!

                    task.spawn(function()
                        --if method == "FireServer" then
                        if args[2] == "lol" then
                            local timestamp = secondsMacros
                            macrosResult[timestamp] = {}

                            macrosResult[timestamp].tower = args[3].Name
                            macrosResult[timestamp].spawnlocation = args[4]
                            macrosResult[timestamp].position = args[5]
                        end
                        --end
                    end)

                    return old(...)
                end)

                -- TODO: make everything in RunService or else :angry:
                while task.wait() do -- task.wait() is "If no duration is given the duration will default to zero meaning the thread will automatically resume on the next step."
                    if not isMacrosRecording then
                        setreadonly(game, true)
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
            getrawmetatable(game)["__namecall"] = old

            writefile(
                string.format("wtdhook/macroses/%s", fileMacros.Value),
                string.format("return {%s}", table_to_string(macrosResult, ""))
            )
        end,
    })

    macrosSection:CreateButton({
        Title = "Play macros",
        Description = "Plays macros from selected macros",
        Callback = function()
            if isMacrosPlaying then
                return
            end
            isMacrosPlaying = true

            local lastTick = os.clock()
            local secondsMacros = 0

            local macrosStr = loadfile(string.format("wtdhook/macroses/%s", fileMacros.Value), "WTDMacros")
            local macroTable = macrosStr() :: { [number]: { position: Vector3, spawnlocation: number, tower: "Tower1" | "Tower2" | "Tower3" | "Tower4" | "Tower5"} }

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
                    SpawnUnit:FireServer("lol", Towers:FindFirstChild(macrosData.tower), macrosData.spawnlocation, macrosData.position)
                    sortedMacros[macroIndex] = nil
                    macroIndex += 1
                end

                task.wait()
            end

            isMacrosPlaying = false
            print("macros end")
        end,
    })
end
