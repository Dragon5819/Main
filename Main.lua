local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/thanhdat4461/OrionMoblie/main/source')))()
local Player = game.Players.LocalPlayer

local Window = OrionLib:MakeWindow({Name = "Key System", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionKeySystem", IntroEnabled = true, IntroText = "Key System"})

local function GetUserRole(userId)
    local ownerIds = {1393073629}
    local adminIds = {}
    local premiumIds = {520439517}
    
    if table.find(ownerIds, userId) then
        return "Owner"
    elseif table.find(adminIds, userId) then
        return "Admin"
    elseif table.find(premiumIds, userId) then
        return "Premium"
    else
        return "Member"
    end
end

local Player = game.Players.LocalPlayer
local UserId = Player.UserId
local UserRole = GetUserRole(UserId)

local roleMessage = "Role:"
if UserRole == "Owner" then
    roleMessage = roleMessage .. "Owner"
elseif UserRole == "Admin" then
    roleMessage = roleMessage .. "Admin"
elseif UserRole == "Premium" then
    roleMessage = roleMessage .. "Premium"
    loadstring(game:HttpGet("https://gist.githubusercontent.com/Dragon5819/24fa1211f46fa7bb5c8bcb1f95cbd00b/raw/0737200171d899c5bf29b44e91481054c4bc1b89/JustAScript"))()
else
    roleMessage = roleMessage .. "Member"
end

OrionLib:MakeNotification({
    Name = "Logged in",
    Content = "You are logged in as " .. Player.Name,
    Image = "rbxassetid://14445132214",
    Time = 10
})

OrionLib:MakeNotification({
    Name = "Role Notification",
    Content = roleMessage,
    Image = "rbxassetid://14590929928",
    Time = 10
})

function MakeScript()
        loadstring(game:HttpGet("https://gist.githubusercontent.com/Dragon5819/24fa1211f46fa7bb5c8bcb1f95cbd00b/raw/b25121349b96027bbc178ad289d6ac36dfde3fb6/JustAScript"))()
end

_G.Key = game:HttpGet('https://pastebin.com/raw/BdZSUsmh')
_G.KeyInput = "string"

function CorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "Correct Key!",
        Content = "You have entered the correct key!",
        Imagine = "rbxassetid://14445221506",
        Time = 15
    })
end

function IncorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "Incorrect Key!",
        Content = "You have entered the incorrect key!",
        Imagine = "rbxassetid://14445221506",
        Time = 10
    })
end

local KeyTab = Window:MakeTab({
    Name = "Key",
    Icon = "rbxassetid://14445221506",
    PremiumOnly = false
})

KeyTab:AddTextbox({
    Name = "Enter key",
    Default = "",
    TextDisappear = true,
    Callback = function(Value)
        _G.KeyInput = Value
    end	  
})

KeyTab:AddButton({
    Name = "Check Key",
    Callback = function()
        if _G.KeyInput == _G.Key then
            wait(1)
            CorrectKeyNotification()
            MakeScript()
        else
            IncorrectKeyNotification()
        end
    end    
})

KeyTab:AddButton({
    Name = "Get Key",
    Callback = function()
        setclipboard("https://gateway.platoboost.com/l/185/Main_key")
        OrionLib:MakeNotification({
        Name = "Copied to clipboard",
        Content = "Paste it on browser",
        Imagine = "rbxassetid://14445221506",
        Time = 5
    })
    end    
})

local PremiumTab = Window:MakeTab({
	Name = "Premium User",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

PremiumTab:AddParagraph("List of the premium role:"," ")

PremiumTab:AddParagraph("1.LeoMiracle","roblox user:maybenot205")

PremiumTab:AddParagraph("2."," ")

PremiumTab:AddParagraph("3."," ")

PremiumTab:AddParagraph("4."," ")

PremiumTab:AddParagraph("5."," ")

local CreditsTab = Window:MakeTab({
	Name = "Credits",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

CreditsTab:AddParagraph("Credits to Dragon5819","Credits to Dragon5819 who made the script")