--[[
























Script made by @SEASONAL#1235
Join SeasonWare Discord - https://discord.gg/TqHYYVyyJR
Have a fun time with the script.
Script get's updated every week
so dont expect an outdated script.

 

👋Good Bye👋



































]]--

getgenv().SecureMode = true

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
    Name = "SeasonWare Universal",
    LoadingTitle = "Loading SeasonWare",
    LoadingSubtitle = "Made by @SEASONAL#1235",
    ConfigurationSaving = {
       Enabled = false,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = ""
    },
    Discord = {
       Enabled = true,
       Invite = "TqHYYVyyJR", -- The Discord invite code, do not include discord.gg/
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = false, -- Set this to true to use our key system
    KeySettings = {
       Title = "SeasonWare",
       Subtitle = "Key System",
       Note = "",
       FileName = "",
       SaveKey = true,
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = ""
    }
 })

local Tab = Window:CreateTab("Main", 4483362458) -- Title, Image

local Paragraph = Tab:CreateParagraph({Title = "", Content = "📜This universal Script will be updated with more scripts soon, as there are only around 3 scripts📜. 👋Have a good day and have fun with the script👋."})

local Section = Tab:CreateSection("#1 Script Hub")
local Button = Tab:CreateButton({
    Name = "Infinnity Yiff",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end,
 })

local Section = Tab:CreateSection("Trolling")
local Paragraph = Tab:CreateParagraph({Title = "", Content = "Use Infinnity Yiff to troll"})

local Section = Tab:CreateSection("Fighting")
local Button = Tab:CreateButton({
    Name = "",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/FAY1au9v"))()
    end,
 })

local Section = Tab:CreateSection("FE Hubs")


local Section = Tab:CreateSection("Random")
local Button = Tab:CreateButton({
    Name = "HTTPS SPY",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/fortnitemodder/Https-Spy/main/Enhanced"))()
    end,
 })
