local prize = { 
	[1] = "your_weapon_prize",
	[2] = "your_weapon_prize",
	[3] = "your_weapon_prize",
	[4] = "your_weapon_prize",
	[5] = "your_weapon_prize",
	[6] = "your_weapon_prize",
	[7] = "your_weapon_prize",
	[8] = "your_weapon_prize",
	[9] = "your_weapon_prize",
	[10] = "your_weapon_prize",
	[11] = "your_weapon_prize",
	[12] = "your_weapon_prize",
	[13] = "your_weapon_prize",
	[14] = "your_weapon_prize",
	[15] = "your_weapon_prize",
	[16] = "your_weapon_prize",
}

util.AddNetworkString("giveprice")

net.Receive("giveprice", function(len, ply)
	local use = net.ReadUInt(16)
	
	if use < 3 then 
   	 ply:ChatPrint("You did not activate all the cases")
   	else
	  if ply:getDarkRPVar("money") < 15000 then -- change the price
	  ply:ChatPrint("You do not have enough money to play")
	  else
	  ply:addMoney(-15000) -- change the price
	  ply:Give(prize[math.random(1,16)])
	  ply:Give(prize[math.random(1,16)])
	  ply:Give(prize[math.random(1,16)])
	  ply:ChatPrint("You got your gift. Spent 15000$")
	  end
    end
end)
