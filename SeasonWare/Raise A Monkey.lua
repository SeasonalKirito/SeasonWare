--[[
























Script made by @SEASONAL#1235
Join SeasonWare Discord - https://discord.gg/TqHYYVyyJR
Have a fun time with the script.
Script get's updated every week
so dont expect an outdated script.

 

👋Good Bye👋



































]]--

getgenv().autoFeed = false
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
        Name = "Raise A Monkey",
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
        Name = "Auto Click Monkey",
        CurrentValue = false,
        Flag = "Toggle1",
        Callback = function(Value)
            Toggle_AutoClick = Value
            while Toggle_AutoClick and task.wait() do
            	fireclickdetector(workspace.Monke.hitbox.ClickDetector)
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
                    if v.Name == "money" or v.Name == "moneyBag" then
                        firetouchinterest(v, returnHRP(), 0)
                        wait()
                        firetouchinterest(v, returnHRP(), 1)
					end
				end
			end
        end
    }
)

local Section = Tab:CreateSection("Caring For Monkey")
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

---AUTO FEED---

function autoFeed(autoFeed)
    spawn(function()
        while getgenv().autoFeed == true do
        local args = {
            [1] = "Banana"
            }

            game:GetService("ReplicatedStorage").boughtItem:FireServer(unpack(args))
            wait(1)
        end
    end)
end

---         ---
