local prize = {
	[1] = "csgo_bayonet",
	[2] = "weapon_vape_hallucinogenic",
	[3] = "guitar_stalker",
	[4] = "weapon_vape_medicinal",
	[5] = "weapon_vape_juicy",
	[6] = "ptp_cs_glock",
	[7] = "ptp_cs_p228",
	[8] = "weapon_vape",
	[9] = "ptp_cs_scout",
	[10] = "guitar",
	[11] = "ptp_cs_deagle",
	[12] = "weapon_357",
	[13] = "csgo_bayonet",
	[14] = "weapon_357",
	[15] = "csgo_bayonet",
	[16] = "ptp_cs_p90",
}

util.AddNetworkString("giveprice")

net.Receive("giveprice", function(len, ply)
	local use = net.ReadUInt(16)
	
	if use < 3 then 
   	 ply:ChatPrint("You did not activate all the cases")
   	else
	  if ply:getDarkRPVar("money") < 15000 then
	  ply:ChatPrint("You do not have enough money to play")
	  else
	  ply:addMoney(-15000)
	  ply:Give(prize[math.random(1,16)])
	  ply:Give(prize[math.random(1,16)])
	  ply:Give(prize[math.random(1,16)])
	  ply:ChatPrint("You got your gift. Spent 15000$")
	  end
    end
end)
