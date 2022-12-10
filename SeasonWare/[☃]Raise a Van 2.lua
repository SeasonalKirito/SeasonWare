--[[
























Script made by @SEASONAL#1235
Join SeasonWare Discord - https://discord.gg/TqHYYVyyJR
Have a fun time with the script.
Script get's updated every week
so dont expect an outdated script.

 

👋Good Bye👋



































]]--

getgenv().autoFeed = false
getgenv().autoRaiseRent = false
getgenv().SecureMode = true


local LocalPlayer = game:GetService("Players").LocalPlayer



local Rayfield = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Rayfield/main/source"))()



local function returnHRP()
    if not LocalPlayer.Character then
        return
    end
    if not LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        return
    else
        return LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    end
end



local function returnHUM()
    if not LocalPlayer.Character then
        return
    end
    if not LocalPlayer.Character:FindFirstChild("Humanoid") then
        return
    else
        return LocalPlayer.Character:FindFirstChild("Humanoid")
    end
end
repeat
    task.wait()
until returnHRP() and returnHUM()



local Window =
    Rayfield:CreateWindow(
    {
        Name = "[☃]Raise a Van 2",
        LoadingTitle = "Made by SEASONAL#1235",
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

local Tab = Window:CreateTab("Auto Farm", 4483362458)
local Section = Tab:CreateSection("Farming")
local Paragraph = Tab:CreateParagraph({Title = "Script Issues", Content = "If there is any issue's with the script message me on discord -SEASONAL#1235- and i will get back as soon as i can"})
local Toggle =
    Tab:CreateToggle(
    {
        Name = "Auto Click Van",
        CurrentValue = false,
        Flag = "Toggle1",
        Callback = function(Value)
            Toggle_AutoClick = Value
            while Toggle_AutoClick and task.wait() do
            	fireclickdetector(workspace.Floppa.Hitbox.ClickDetector)
			end
        end
    }
)
local Toggle =
    Tab:CreateToggle(
    {
        Name = "Auto Collect Money",
        CurrentValue = false,
        Flag = "Toggle1",
        Callback = function(Value)
            Toggle_AutoCollectCash = Value
            while Toggle_AutoCollectCash and task.wait() do
            	for _,v in ipairs(workspace:GetChildren()) do
                    if v.Name == "Money" or v.Name == "MoneyBag" or v.Name == "MoneyRoommate" then
                        firetouchinterest(v, returnHRP(), 0)
                        wait()
                        firetouchinterest(v, returnHRP(), 1)
					end
				end
			end
        end
    }
)

local Section = Tab:CreateSection("Caring For Van")
local Toggle = Tab:CreateToggle({
	Name = "Auto Buy Food",
	CurrentValue = false,
	Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
        getgenv().autoFeed = Value
        if Value then
            autoFeed(autoFeed)
        end
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Auto Raise Rent *DOES NOT WORK*",
	CurrentValue = false,
	Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
        getgenv().autoRaiseRent = Value
        if Value then
            autoRaiseRent(autoRaiseRent)
        end
	end,
})
local Paragraph = Tab:CreateParagraph({Title = "Script Ongoing Updates", Content = "The Script will get an update with auto Pickup Poop which will make autofarming alot easier. 👋Have a good day with the script!👋"})
---AUTO FEED---

function autoFeed(autoFeed)
    spawn(function()
        while getgenv().autoFeed == true do
            game:GetService("ReplicatedStorage").RE.Food:FireServer()
            wait(5)
        end
    end)
end

---         ---    



---AUTO RAISE RENT---

function autoRaiseRent(autoRaiseRent)
    spawn(function()
        while getgenv().autoRaiseRent == true do
            
            wait(1)
        end
    end)
end

---            ---



local Tab = Window:CreateTab("Teleports", 4483362458) -- Title, Image

local Section = Tab:CreateSection("Teleportation")

local Button = Tab:CreateButton({
    Name = "Teleport Outside House",
    Callback = function()
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-118.69625091552734, 2.9999992847442627, 51.861690521240234)
    end,
 })

local Button = Tab:CreateButton({
    Name = "Teleport Inside House",
    Callback = function()
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-100.86185455322266, 7.902746200561523, -18.979324340820312)
    end,
 })

local Section = Tab:CreateSection("Secret Battery Puzzle")
local Button = Tab:CreateButton({
    Name = "Red Battery",
    Callback = function()
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(82.3570557, -63.7644348, -165.759735, 0, -1, -0, -1, 0, -0, 0, 0, -1)
    end,
 })

local Button = Tab:CreateButton({
    Name = "Green Battery",
    Callback = function()
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-87.5065079, -47.7527122, -130.64241, 2.05636024e-05, -0.5, 0.866025329, -1, 4.05311584e-05, 4.70876694e-05, -5.86211681e-05, -0.866025388, -0.5)
    end,
 })

local Button = Tab:CreateButton({
    Name = "Blue Battery",
    Callback = function()
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(51.1547394, -74.9883728, 41.7466278, 0, 1, -0, -1, 0, 0, 0, 0, 1)
    end,
 })

local Button = Tab:CreateButton({
    Name = "Battery Area",
    Callback = function()
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-97.5220718383789, -44.92271423339844, -121.75885772705078)
    end,
 })

local Paragraph = Tab:CreateParagraph({Title = "Unknown", Content = "I do not know where these batteries lead to so look that up or something?, Just found them while flying around so why not make teleports about them."})

local Section = Tab:CreateSection("Misc")
local Button = Tab:CreateButton({
    Name = "Destroy GUI",
    Callback = function()
        Rayfield:Destroy()
    end,
 })
