local KavoUI:any = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local R1:any = KavoUI.CreateLib("RateOne", _G.Theme)



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
