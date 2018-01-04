concommand.Add("randombox", function()
	local use = 0
	
	local main = vgui.Create("DFrame")
	main:SetSize(ScrW() / 4, ScrH() / 4)
	main:Center()
	main:SetTitle("Random Box")
	main:MakePopup()
	
	local button = vgui.Create("DButton", main)
	button:Dock(BOTTOM)
	button:SetText("To receive a prize")
	button.DoClick = function()
		net.Start("giveprice")
		 net.WriteUInt(use, 16)
		net.SendToServer()
		main:Remove()
	end
	
	
	local window = vgui.Create("Button", main)
	window:Dock(LEFT)
	window:DockMargin(5, 30, 0, 30)
	window:SetWide(150)
	window:SetText("")
	
	local window2 = vgui.Create("Button", main)
	window2:Dock(LEFT)
	window2:DockMargin(5, 30, 0, 30)
	window2:SetWide(150)
	window2:SetText("")
	
	local window3 = vgui.Create("Button", main)
	window3:Dock(LEFT)
	window3:DockMargin(5, 30, 0, 30)
	window3:SetWide(150)
	window3:SetText("")
	
	local image = vgui.Create("DImage", window)
	image:Dock(FILL)
	image:SetImage("icon16/box.png")
	
	local image2 = vgui.Create("DImage", window2)
	image2:Dock(FILL)
	image2:SetImage("icon16/box.png")
	
	local image3 = vgui.Create("DImage", window3)
	image3:Dock(FILL)
	image3:SetImage("icon16/box.png")
	
	function window:DoClick()
	   image:SetImage("icon16/briefcase.png")
	   window:SetDisabled(true)
	   use = use + 1
	end
	
	function window2:DoClick()
	   image2:SetImage("icon16/briefcase.png")
	   window2:SetDisabled(true)
	   use = use + 1
	end
	
	function window3:DoClick()
	   image3:SetImage("icon16/briefcase.png")
	   window3:SetDisabled(true)
	   use = use + 1
	end
end)
