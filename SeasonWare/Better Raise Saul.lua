--[[


























Credits to Extorius Hub for giving me this idea to create a 
ass raise a random script.

You can find Extorius Hub's script at this link "https://scriptblox.com/script/raise-a-floppa-2-2x-Cash-Flopp-utofrm-7098"

if you're here your either looking into my code or your gonna steal 
it for your script, so you dont need permission to steal this code as 
i only spent like 30 minutes on it, so go wild with those scripts and 
have a good day.

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
        Name = "Better Raise Saul",
        LoadingTitle = "Made by SEASONAL#1235",
        LoadingSubtitle = "Made by SEASONAL#1235",
        ConfigurationSaving = {
            Enabled = false,
            FolderName = "", -- Create a custom folder for your hub/game
            FileName = ""
        },
        Discord = {
            Enabled = false,
            Invite = "", -- The Discord invite code, do not include discord.gg/
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
        Name = "Auto Click Saul",
        CurrentValue = false,
        Flag = "Toggle1",
        Callback = function(Value)
            Toggle_AutoClick = Value
            while Toggle_AutoClick and task.wait() do
            	fireclickdetector(workspace.NoCollide.SaulCube.Main.ClickDetector)
			end
        end
    }
)

local Section = Tab:CreateSection("Caring For Saul")
local Toggle = Tab:CreateToggle({
	Name = "Auto Feed",
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
                [1] = {
                    ["Item"] = "Food"
                    }
                }
                game:GetService("ReplicatedStorage").RemoteFunctions.DefaultShopBuy:InvokeServer(unpack(args))
            wait(1)

        end
    end)
end

---         ---