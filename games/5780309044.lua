local KavoUI:any = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local R1:any = KavoUI.CreateLib("RateOne", _G.Theme)

-- Stands Awake --
local StandsTab = R1:NewTab("Stands Game")

local Combat:any = StandsTab:NewSection("Combat")
local Items:any = StandsTab:NewSection("Items")
local TPs:any = StandsTab:NewSection("TPs")

local infCounter = false
Combat:NewToggle("Inf Counter", "Bro", function(e)
    infCounter = e
    
    while infCounter == true do
    local args = {
        [1] = "Alternate",
        [2] = "Counter"
    }

    game:GetService("ReplicatedStorage"):WaitForChild("Main"):WaitForChild("Input"):FireServer(unpack(args))
        wait()
    end
end)

local AvoidTS = false
Combat:NewToggle("Avoid TS","No timestops",function(e:any):()
    AvoidTS = e

    while AvoidTS == true do
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

-- Items --
Items:NewButton("Get All Items","Buggy?",function()
    for i,v in workspace:GetChildren() do
        if v.ClassName == "Tool" and v:FindFirstChild("Handle") then
            v.Handle.Position = game:GetService("Players").LocalPlayer.Character.PrimaryPart.Position
        end
    end
end)

local LoopCollect = false
local ItemsToIgnore = {}
Items:NewLabel("AutoFarm")
Items:NewToggle("Arrow","Check to ignore",function(e)
    if table.find(ItemsToIgnore, "Arrow") then
        table.remove(ItemsToIgnore,table.find(ItemsToIgnore, "Arrow"))
    else
        table.insert(ItemsToIgnore,"Arrow")
    end
end)
Items:NewToggle("Rokakaka Fruit","Check to ignore",function(e)
    if table.find(ItemsToIgnore, "Rokakaka Fruit") then
        table.remove(ItemsToIgnore,table.find(ItemsToIgnore, "Rokakaka Fruit"))
    else
        table.insert(ItemsToIgnore,"Rokakaka Fruit")
    end
end)
Items:NewToggle("Toxic Chemicals","Check to ignore",function(e)
    if table.find(ItemsToIgnore, "Toxic Chemicals") then
        table.remove(ItemsToIgnore,table.find(ItemsToIgnore, "Toxic Chemicals"))
    else
        table.insert(ItemsToIgnore,"Toxic Chemicals")
    end
end)
Items:NewToggle("Banknote","Check to ignore",function(e)
    if table.find(ItemsToIgnore, "Banknote") then
        table.remove(ItemsToIgnore,table.find(ItemsToIgnore, "Banknote"))
    else
        table.insert(ItemsToIgnore,"Banknote")
    end
end)
Items:NewToggle("Frog","Check to ignore",function(e)
    if table.find(ItemsToIgnore, "Frog") then
        table.remove(ItemsToIgnore,table.find(ItemsToIgnore, "Frog"))
    else
        table.insert(ItemsToIgnore,"Frog")
    end
end)
Items:NewToggle("Aja Mask","Check to ignore",function(e)
    if table.find(ItemsToIgnore, "Aja Mask") then
        table.remove(ItemsToIgnore,table.find(ItemsToIgnore, "Aja Mask"))
    else
        table.insert(ItemsToIgnore,"Aja Mask")
    end
end)
Items:NewToggle("Vampire Mask","Check to ignore",function(e)
    if table.find(ItemsToIgnore, "Vampire Mask") then
        table.remove(ItemsToIgnore,table.find(ItemsToIgnore, "Vampire Mask"))
    else
        table.insert(ItemsToIgnore,"Vampire Mask")
    end
end)

Items:NewToggle("Loop Collect","Nice",function(e)
    LoopCollect = e

    while LoopCollect == true do
        for i,v in workspace:GetChildren() do
            if v.ClassName == "Tool" and v:FindFirstChild("Handle") and not table.find(ItemsToIgnore, v.Name) then
                v.Handle.Position = game:GetService("Players").LocalPlayer.Character.PrimaryPart.Position
            end
        end
        wait(.1)
    end
end)

-- Tps --

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
