--This script unpotimized as fuck but ignore that--

function eggs()
    if getgenv().SelectedEgg == "Draw001" then
        local args = {
        [1] = "Hatch",
        [2] = "Draw001",
        [3] = {}
        }

        game:GetService("ReplicatedStorage").Remotes.Draw:FireServer(unpack(args))
    end
    if getgenv().SelectedEgg == "Draw002" then
        local args = {
            [1] = "Hatch",
            [2] = "Draw002",
            [3] = {}
            }
    
            game:GetService("ReplicatedStorage").Remotes.Draw:FireServer(unpack(args))
    end
end

--Not doing this--


--Locals--

local location = nil
local locationTable = {}

-----------

--Misc--

getgenv().SelectedEgg = nil
getgenv().autoFarm1 = false

--------

--Functions-- DONT MESS WITH THIS

function autoFarm1(autoFarm1)
    spawn(function()
        while getgenv().autoFarm1 == true do
            local teleport_table = {
                location1 = Vector3.new(-455000, 390, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            }
            
            local tween_s = game:GetService('TweenService')
            local tweeninfo = TweenInfo.new(30,Enum.EasingStyle.Linear)
            
            local lp = game.Players.LocalPlayer
            
            function bypass_teleport(v)
                if lp.Character and
                lp.Character:FindFirstChild('HumanoidRootPart') then
                    
                    local cf = CFrame.new(v) 
                    local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
                    a:Play()
                end
            end
            
            bypass_teleport(teleport_table.location1)
            wait()
        end
    end)
end

------------

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))() --#1 Script UI Lib???--

local Window =
    Rayfield:CreateWindow(
    {
        Name = "[🎄Xmas UPD] Flying Race Clicker - AKA Fly race copy",
        LoadingTitle = "[🎄Xmas UPD] Flying Race Clicker - AKA Fly race copy",
        LoadingSubtitle = "Made by SEASONAL#1235",
        ConfigurationSaving = {
            Enabled = false,
            FolderName = "", -- Create a custom folder for your hub/game
            FileName = ""
        },
        Discord = {
            Enabled = true,
            Invite = "TqHYYVyyJR", -- The Discord invite code, do not include discord.gg/
            RememberJoins = true -- Set this to false to make them join the discord every time they load it up
        },
        KeySystem = false, -- Set this to true to use our key system
        KeySettings = {
            Title = "",
            Subtitle = "Key System",
            Note = "Join the discord ",
            FileName = "",
            SaveKey = false,
            GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
            Key = ""
        }
    }
)

local Tab = Window:CreateTab("Home", 7733960981) -- Title, Image

local Section = Tab:CreateSection("Imformation")

local Paragraph = Tab:CreateParagraph({Title = "⚠️IMPORTANT⚠️", Content = "The script will be getting updates recently,"})

local Section = Tab:CreateSection("Credits")

local Label = Tab:CreateLabel("Credits go to SEASONAL#1235 or SeasonWare")

local Tab = Window:CreateTab("Farm", 8997383694) -- Title, Image

local Section = Tab:CreateSection("Farming")

local Label = Tab:CreateLabel("Will update the farm method later")

local Toggle = Tab:CreateToggle({
    Name = "Farm1",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        getgenv().autoFarm1 = Value
        if Value then
            autoFarm1(autoFarm1)
        end
    end,
 })

 local Section = Tab:CreateSection("Pets")

local Dropdown = Tab:CreateDropdown({
    Name = "Buy egg",
    Options = {"Draw001","Draw002"},
    CurrentOption = "Egg",
    Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Option)
        getgenv().SelectedEgg = Option
        eggs()
    end,
 })

local Tab = Window:CreateTab("Teleports", 7743871002) -- Title, Image

local Section = Tab:CreateSection("Locations")

local Label = Tab:CreateLabel("Not even done yet")



 local Tab = Window:CreateTab("Misc", 7733975185) -- Title, Image

 local Section = Tab:CreateSection("Misc")

 local Label = Tab:CreateLabel("Just use this if your lazy")

 local Button = Tab:CreateButton({
    Name = "Equip Best Pets",
    Callback = function()
        local args = {
            [1] = true
        }

        game:GetService("ReplicatedStorage").Remotes.RE_EquipBest:FireServer(unpack(args))
    end,
 })
