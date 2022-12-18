--[[
























Script made by @SEASONAL#1235
Join SeasonWare Discord - https://discord.gg/TqHYYVyyJR
Have a fun time with the script.
Script get's updated every week
so dont expect an outdated script.

 

👋Good Bye👋



































]]--

getgenv().SelectedOption = nil

function presents()
    if getgenv().SelectedOption == "Gift 1" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4643.9072265625, -16.998323440551758, 4940.2939453125) --Christmas World--
    end
    if getgenv().SelectedOption == "Gift 2" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3941.3291015625, -13.748202323913574, 4754.5849609375) --Christmas World--
    end
    if getgenv().SelectedOption == "Gift 3" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(103.27117919921875, 93.58992767333984, 349.3389587402344) --Spawn World--
    end
    if getgenv().SelectedOption == "Gift 4" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-108.68701171875, 93.58992767333984, 125.13272094726562) --Spawn World--
    end
    if getgenv().SelectedOption == "Gift 5" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1433.9315185546875, 93.58993530273438, 352.73846435546875) --Spawn World--
    end
    if getgenv().SelectedOption == "Gift 6" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1766.9462890625, 99.5899887084961, 530.5208129882812) --Spawn World--
    end
    if getgenv().SelectedOption == "Gift 7" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2687.08251953125, 93.58992767333984, 345.0792236328125) --Spawn World--
    end
    if getgenv().SelectedOption == "Gift 8" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2814.740478515625, 96.03471374511719, 131.12892150878906) --Fantasy World--
    end
    if getgenv().SelectedOption == "Gift 9" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3147.632568359375, 122.29927825927734, -513.0463256835938) --Fantasy World--
    end
    if getgenv().SelectedOption == "Gift 10" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2827.6611328125, 122.3809814453125, 1056.99609375) --Fantasy World--
    end
    if getgenv().SelectedOption == "Gift 11" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4171.5185546875, 122.3807144165039, -308.2745666503906) --Fantasy World--
    end
    if getgenv().SelectedOption == "Gift 12" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4206.82373046875, 122.38087463378906, 596.9381103515625) --Fantasy World--
    end
    if getgenv().SelectedOption == "Gift 13" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-105.32908630371094, 96.0346908569336, 3033.820556640625) --Tech World--
    end
    if getgenv().SelectedOption == "Gift 14" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-619.0416870117188, 96.0346908569336, 3427.03662109375) --Tech World--
    end
    if getgenv().SelectedOption == "Gift 15" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1067.6602783203125, 96.0346908569336, 3284.208984375) --Tech World--
    end
    if getgenv().SelectedOption == "Gift 16" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-45.74919509887695, 39.856422424316406, 5227.11279296875) --Void--
    end
    if getgenv().SelectedOption == "Gift 17" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4043.1044921875, -35.98148727416992, 3748.40673828125) --Axolotl World--
    end
    if getgenv().SelectedOption == "Gift 18" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3455.9013671875, -16.99837303161621, 2366.140869140625) --Pixel World--
    end
    if getgenv().SelectedOption == "Gift 19" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4587.99560546875, -16.99832534790039, 3208.079345703125) --Cat World--
    end
    if getgenv().SelectedOption == "Gift 20" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3891.17138671875, -8.763590812683105, 3011.75634765625) --Cat World--
    end
end
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window =
    Rayfield:CreateWindow(
    {
        Name = "Pet Simulator X Gift Teleportation",
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

local Tab = Window:CreateTab("Teleports", 7743871002) -- Title, Image

local Section = Tab:CreateSection("Gifts")

local Paragraph = Tab:CreateParagraph({Title = "WARNING", Content = "Only use this in regular mode, Hard core wont let it load!!!"})

local Paragraph = Tab:CreateParagraph({Title = "WARNING", Content = "ONLY USE THE TELEPORT IF YOUR IN THAT WORLD, OR ELSE YOU WILL BE GLITCHED AND HAVE TO REJOIN"})

local Dropdown = Tab:CreateDropdown({
    Name = "Presents",
    Options = {"Gift 1","Gift 2","Gift 3","Gift 4","Gift 5","Gift 6","Gift 7","Gift 8","Gift 9","Gift 10","Gift 11","Gift 12","Gift 13","Gift 14","Gift 15","Gift 16","Gift 17","Gift 18","Gift 19","Gift 20",},
    CurrentOption = "Gifts",
    Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Option)
        getgenv().SelectedOption = Option
        presents()
    end,
 })

 local Paragraph = Tab:CreateParagraph({Title = "Places", Content = "Gifts 1 - 2 = Christmas World, Gifts 3 - 7 = Spawn World, Gifts 8 - 12 = Fantasy World, Gifts 13 - 15 = Tech World, Gifts 16 = Void, Gift 17 = Axolotl World, Gift 18 = Pixel World, Gift 19 - 20 = Cat World"})