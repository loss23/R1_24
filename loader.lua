local ClientSettings = {
    ['Key'] = _G.Key or "",
    ["Theme"] = _G.Theme or "BloodTheme"
}

loadstring(game:HttpGet('https://raw.githubusercontent.com/loss23/R1_24/main/Functions/key.lua'))()
R1KEY = _G.R1KEY

if tostring(ClientSettings.Key) ~= tostring(R1KEY) then 
    game.StarterGui:SetCore("SendNotification",  {
		Title = "▀▄『R』『1』▄▀";
		Text = "Invalid Key.";
		Icon = "rbxassetid://10223592622";
		Duration = 4.5;
	})
    return
end

local KavoUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local R1 = KavoUI.CreateLib("RateOne", ClientSettings.Theme)

local R1Tab = R1:NewTab("RateOne")
local R1SettingsSection = R1Tab:NewSection("Settings",true)

function LoadClientScript(ScriptName)
	loadstring(game:HttpGet('https://raw.githubusercontent.com/loss23/R1_24/main/ClientScripts/'..ScriptName..'.lua'))()
end

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

--Load Game Script Hub
loadstring(game:HttpGet('https://raw.githubusercontent.com/loss23/R1_24/main/games'..game.PlaceId..'.lua'))()
