	local Tools = {}
	for _,v in game.ReplicatedStorage:GetDescendants() do
		if v.ClassName == "Tool" then
			table.insert(Tools,v)
		end
	end
	for _,v in game.Lighting:GetDescendants() do
		if v.ClassName == "Tool" then
			table.insert(Tools,v)
		end
	end
	for _,v in game.ReplicatedFirst:GetDescendants() do
		if v.ClassName == "Tool" then
			table.insert(Tools,v)
		end
	end
	for _,v in game.Players:GetDescendants() do
		if v.ClassName == "Tool" and not table.find(Tools,v) then
			table.insert(Tools,v)
		end
	end
	for _,v in game.Workspace:GetDescendants() do
		if v.ClassName == "Tool" and not table.find(Tools,v) then
			table.insert(Tools,v)
		end
	end
	
	for _,v in Tools do
		v:Clone().Parent = game.Players.LocalPlayer.Backpack
	end
