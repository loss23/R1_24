local Verf = {}

local BanList = loadstring(game:HttpGet('https://raw.githubusercontent.com/loss23/R1_24/main/Functions/BanList.lua'))()
function Verf.CheckUser(Id)
	if table.find(BanList,Id) then
		return true
	else
		return false
	end
end

return Verf
