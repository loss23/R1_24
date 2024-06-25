local KavoUI

if game:GetService("RunService"):IsStudio() then
	KavoUI = require(game.ReplicatedStorage.KAVO)
else
	KavoUI = loadstring(game:HttpGet('https://raw.githubusercontent.com/loss23/R1_24/main/lib.lua'))()
end

if KavoUI == nil then KavoUI = loadstring(game:HttpGet('https://raw.githubusercontent.com/loss23/R1_24/main/lib.lua'))() end

local Settings = {
	["Theme"] = _G.Theme or "BloodTheme",
	["Key"] = _G.Key or ""
}

local R1KEY

if game:GetService("RunService"):IsStudio() then
	R1KEY = ""
else
	loadstring(game:HttpGet('https://raw.githubusercontent.com/loss23/R1_24/main/Functions/GetKey.lua'))()
	R1KEY = _G.R1KEY
end

if Settings.Key ~= R1KEY then
	game.StarterGui:SetCore("SendNotification",  {
		Title = "▀▄『R』『1』▄▀";
		Text = "Incorrect key, please join Discord server.";
		Icon = "rbxassetid://10223592622";
		Duration = 10;
	})
	return
end

function LoadClientScript(ScriptName)
	loadstring(game:HttpGet('https://raw.githubusercontent.com/loss23/R1_24/main/ClientScripts/'..ScriptName..'.lua'))()
end

local ScriptDB = {
	["347401822"] = "https://raw.githubusercontent.com/loss23/R1_24/main/Games/347401822.lua"
}

local R1 = KavoUI.CreateLib("RateOne | Theme: "..Settings.Theme, Settings.Theme)

-- Client Scripts Section --
local ClientTab = R1:NewTab("Client Scripts")
local ClientSection = ClientTab:NewSection("Client Scripts",false)

ClientSection:NewButton("Fling Script","Loads fling script",function()
	LoadClientScript("fling")
end)
ClientSection:NewButton("Mute All Sounds","Can't be undone",function()
	LoadClientScript("MuteAllSounds")
end)
ClientSection:NewButton("Get All Tools","Client sided",function()
	LoadClientScript("GetAllTools")
end)

-- R1 Section --
local R1Tab = R1:NewTab("RateOne")
local R1SettingsSection = R1Tab:NewSection("Settings",true)

R1SettingsSection:NewButton("Rejoin","Rejoins Game",function()
	game:GetService("TeleportService"):Teleport(game.PlaceId,game.Players.LocalPlayer)
end)

R1SettingsSection:NewLabel("Credits: thefrx0x & loser5808")
R1SettingsSection:NewButton("JOIN OUR DISCORD!", "Joins the rate one discord!", function()
	setclipboard("https://discord.gg/tyKb9KXm")
	game.StarterGui:SetCore("SendNotification",  {
		Title = "▀▄『R』『1』▄▀";
		Text = "Invite copied";
		Icon = "rbxassetid://10223592622";
		Duration = 4.5;
	})
end))

if table.find(ScriptDB,tostring(game.PlaceId) then
	loadstring(game:HttpGet(ScriptDB[tostring(game.PlaceId)]))()
end
