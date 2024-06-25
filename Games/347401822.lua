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

local R1 = KavoUI.CreateLib("RateOne | Theme: "..Settings.Theme, Settings.Theme)

-- Plaza Script Section --
local PlazaTab = R1:NewTab("Plaza Scripts")

local Condos = PlazaTab:NewSection("Condos")
local Casino = PlazaTab:NewSection("Casino")
local Teleports = PlazaTab:NewSection("Teleports")

-- Condos --
Condos:NewButton("Claim all condos", "", function()
	local RoomTable = {"102","103","104","201","203","204","301","302","303","304","401","402","403","404","501","502","503","504","601","602","603","604","701","702","703","704"}
	for i,v in RoomTable do
		game:GetService("ReplicatedStorage").AptStats.Remotes.GetRoom:FireServer(v)
	end
end)

Condos:NewTextBox("Kick Condo Ownership", "", function(Number)
	game:GetService("ReplicatedStorage").AptStats.Remotes.KickRequest:FireServer(Number);
end)
-- Condos --

-- Casino --

-- Casino --

-- Teleports --
Teleports:NewButton("Airport TP","Nigger",function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-625, 35, -255) 
end)
Teleports:NewButton("Ava's Pet Shop","Pet Monkeys",function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-536, 35, 127)
end)
Teleports:NewButton("Condo Area","Oh baby ESEX!!",function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(98, 66, 114) 
	wait(0.10) 
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(82, 188, 101)
end)
Teleports:NewButton("Casino","100k on red..250k on black",function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-443, 36, 323)
end)
Teleports:NewButton("Club","Throw it back",function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-475, 36, 230)
end)
Teleports:NewButton("Dealership","Get scammed and get a car!",function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-563, 46, -36)
end)
Teleports:NewButton("Ferris Wheel","We can makeout here",function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1072, 34, 188)
end)
Teleports:NewButton("Glo","YOU FAT FUCK",function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-446, 39, -70)
end)
Teleports:NewButton("Games","Gaming and sex",function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-271, 35, 352)
end)
Teleports:NewButton("Island 1","Epstein!!!",function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1067, 152, -1859)
end)
Teleports:NewButton("Island 2","HOLY SHIT NOT AGAIN!",function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-317, 32, 2458)
end)
Teleports:NewButton("Micks Hardware","Rock hard wares...ohh yess",function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-641, 55, 194)
end)
Teleports:NewButton("Oans Electronics","Shock my nipples..please",function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-598, 55, 203)
end)
-- Teleports --

-- Client Scripts Section --
local ClientTab = R1:NewTab("Client Scripts")
local ClientSection = ClientTab:NewSection("Client Scripts",false)

ClientSection:NewButton("Fling Script","Loads fling script",function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/loss23/R1_24/main/ClientScripts/fling.lua'))()
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

end)
