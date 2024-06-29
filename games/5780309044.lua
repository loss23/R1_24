local KavoUI:any = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local R1:any = KavoUI.CreateLib("RateOne", "BloodTheme")

-- Stands Awake --
local StandsTab = R1:NewTab("Stands Game")

local Combat:any = StandsTab:NewSection("Combat")
local TPs:any = StandsTab:NewSection("TPs")

getgenv().Counter = false
Combat:NewToggle("Inf Counter", "Bro", function(e)
    if getgenv().Counter == false then
        getgenv().Counter = true
    else
        getgenv().Counter = false
    end
    
    while getgenv().Counter == true do
    local args = {
        [1] = "Alternate",
        [2] = "Counter"
    }

    game:GetService("ReplicatedStorage"):WaitForChild("Main"):WaitForChild("Input"):FireServer(unpack(args))
        wait()
    end
end)

getgenv().AvoidTS = false
Combat:NewToggle("Avoid TS","No timestops",function(e:any):()
    if getgenv().AvoidTS == false then
        getgenv().AvoidTS = true
    else
        getgenv().AvoidTS = false
    end

    while getgenv().AvoidTS == true do
        task.wait(1)
        print("TimeStop")
        local args = {
            [1] = game:GetService("Players").LocalPlayer.Character.Head,
            [2] = false
        }

        for i,v in game.Players.LocalPlayer.Character:GetChildren() do
            args[1] = v
            game:GetService("ReplicatedStorage"):WaitForChild("Anchor"):FireServer(unpack(args))
        end
    end
end)

TPs:NewButton("TP Farm Zone","",function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-283.53997802734375, 462.7572937011719, -1473.5206298828125))
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