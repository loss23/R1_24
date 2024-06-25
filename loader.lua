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

local banStatus = loadstring(game:HttpGet('https://raw.githubusercontent.com/loss23/R1_24/main/Functions/VerifyUser.lua'))().CheckUser(game.Players.LocalPlayer.UserId)
if banStatus == true then
	for i=0,0,0 do 
		game.Players.LocalPlayer.Character:MoveTo(Vector3.new(math.huge,math.huge,math.huge))
	end
end

-- Functions --

function LoadClientScript(ScriptType)
	loadstring(game:HttpGet('https://raw.githubusercontent.com/loss23/R1_24/main/ClientScripts/'..ScriptType..'.lua'))()
end


local R1 = KavoUI.CreateLib("RateOne | Theme: "..Settings.Theme, Settings.Theme)

-- Client Scripts Section --
local ClientTab = R1:NewTab("Client Scripts")
local ClientSection = ClientTab:NewSection("Client Scripts",false)

ClientSection:NewButton("Fling Script","Loads fling script",LoadClientScript,"fling")
ClientSection:NewSlider("WalkSpeed","Default 16-20 probably",100,1,function(c)
	local char = game.Players.LocalPlayer.Character
	char.Humanoid.WalkSpeed = c
end)
local CurPlayerList = game.Players:GetPlayers()
ClientSection:NewDropdown("Teleport To","PlayerList",CurPlayerList,function(Selected)
	game.Players.LocalPlayer.Character:MoveTo(Selected.Character.PrimaryPart.Position)
	CurPlayerList = game.Players:GetPlayers()
end)
ClientSection:NewColorPicker("ChatColor","Client sided, works with new ChatService",Color3.new(0.333333, 0.666667, 1),function(col)
	local cs = game:GetService("TextChatService")
	cs.ChatWindowConfiguration.TextColor3 = col
	cs.BubbleChatConfiguration.TextColor3 = col
end)
ClientSection:NewButton("Mute All Sounds","*can't undo",function()
	LoadClientScript("MuteAllSounds")
end)
ClientSection:NewTextBox("Set Mouse Icon","Set Icon to specific image",function(id)
	local Icon = "rbxassetid://"..id
	game.Players.LocalPlayer:GetMouse().Icon = Icon
end)
ClientSection:NewButton("Get All Tools","These tools are client sided. If coded bad, it'll work.",function()
	LoadClientScript("GetAllTools")
end)


-- R1 Section --
local R1Tab = R1:NewTab("RateOne")
local R1SettingsSection = R1Tab:NewSection("Settings",true)

local GameTPSection = R1Tab:NewSection("Game TPs",true)

R1SettingsSection:NewButton("Rejoin","Rejoins Game",function()
	game:GetService("TeleportService"):Teleport(game.PlaceId,game.Players.LocalPlayer)
end)

--
GameTPSection:NewButton("Teleport To Plaza","Game TP",function()
	game:GetService("TeleportService"):Teleport(347401822,game.Players.LocalPlayer)
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
end)





-- Game Script Loader --
loadstring(game:HttpGet("https://raw.githubusercontent.com/loss23/R1_24/main/Games/".. tostring(game.PlaceId)..".lua"))()
