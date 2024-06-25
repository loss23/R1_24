	local Sounds = {}
	for _,v in workspace:GetDescendants() do
		if v.ClassName == "Sound" then
			table.insert(Sounds,v)
		end
	end
	for _,v in game.SoundService:GetDescendants() do
		if v.ClassName == "Sound" then
			table.insert(Sounds,v)
		end
	end
	
	for _,v in Sounds do
		v.Volume = 0
	end
