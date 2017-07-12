new Text:Textdraw3;//םמגûי דמה
new Text:Textdraw4;//םמגûי דמה
new novigod1,novigod2,novigod3;//םמגûי דמה

	Textdraw3 = TextDrawCreate(462.000091, 86.099990, "2017"); //םמגûי דמה
	TextDrawLetterSize(Textdraw3, 0.289499, 0.847500);
	TextDrawAlignment(Textdraw3, 1);
	TextDrawColor(Textdraw3, -65281);
	TextDrawSetShadow(Textdraw3, 0);
	TextDrawSetOutline(Textdraw3, 0);
	TextDrawBackgroundColor(Textdraw3, 255);
	TextDrawFont(Textdraw3, 1);
	TextDrawSetProportional(Textdraw3, 1);
	TextDrawSetShadow(Textdraw3, 0);

	Textdraw4 = TextDrawCreate(429.000000, 9.875000, ""); //םמגûי דמה
	TextDrawLetterSize(Textdraw4, 0.000000, 0.000000);
	TextDrawTextSize(Textdraw4, 89.500000, 90.000000);
	TextDrawAlignment(Textdraw4, 1);
	TextDrawFont(Textdraw4, 5);
	TextDrawBackgroundColor(Textdraw4, 0xFFFFFF00);
	TextDrawBoxColor(Textdraw4, 0xFFFFFF00);
	TextDrawSetProportional(Textdraw4, 1);
	TextDrawSetPreviewModel(Textdraw4, 19076);
	TextDrawSetPreviewRot(Textdraw4, 0.000000, 0.000000, 0.000000, 1.000000);
	
	novigod1 = CreatePickup(1559,23,1697.4602,1448.1234,10.7641); //םמגûי דמה
	novigod2 = CreatePickup(1559,23,1690.8042,-2286.0320,-1.2340); //םמגûי דמה
	novigod3 = CreatePickup(1559,23,-1418.2070,-297.9287,14.1484); //םמגûי דמה
	
	
	    //םמגûי דמה
    CreateDynamicObject(19076, 1698.87646, 1449.72266, 9.67690,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19057, 1697.46375, 1449.54395, 10.42300,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19058, 1698.84961, 1448.31873, 10.42520,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19056, 1698.83765, 1450.88989, 10.43530,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19055, 1700.18445, 1449.55725, 10.44370,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19076, 1692.71399, -2286.46631, -2.24452,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19058, 1693.31238, -2287.23120, -1.58840,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19057, 1693.53833, -2285.62158, -1.59700,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19056, 1691.76404, -2287.00024, -1.59630,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19055, 1692.08386, -2285.74487, -1.60090,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19076, -1416.64294, -298.98190, 13.13892,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19058, -1415.60583, -298.88593, 13.77860,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19055, -1417.70630, -299.21826, 13.78690,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19056, -1416.28735, -300.10663, 13.78820,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19057, -1416.90088, -297.76218, 13.78840,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19076,1719.0529785,-2083.7141113,12.5469999,0.0000000,0.0000000,0.0000000); //object(xmastree1) (1) ÀÖÒÝÊÈ
	CreateDynamicObject(19055,1719.8830566,-2084.6210938,13.2030001,0.0000000,0.0000000,357.7500000); //object(xmasbox2) (1)
	CreateDynamicObject(19054,1718.1770020,-2082.8830566,13.1990004,0.0000000,0.0000000,0.0000000); //object(xmasbox1) (1)
	CreateDynamicObject(19057,1720.1130371,-2082.7309570,13.2030001,0.0000000,0.0000000,8.2500000); //object(xmasbox4) (1)
	CreateDynamicObject(19055,1718.3170166,-2084.7800293,13.2030001,0.0000000,0.0000000,21.2671814); //object(xmasbox2) (2) ÀÖÒÝÊÈ
	CreateDynamicObject(19076,2660.6999512,-1078.6619873,68.5550003,0.0000000,0.0000000,0.0000000); //object(xmastree1) (1) ÂÀÃÎÑ
	CreateDynamicObject(19057,2659.8640137,-1077.6379395,69.2330017,0.0000000,0.0000000,317.0510254); //object(xmasbox4) (1)
	CreateDynamicObject(19055,2659.4541016,-1079.3420410,69.2310028,0.0000000,0.0000000,8.2500000); //object(xmasbox2) (1)
	CreateDynamicObject(19054,2661.4890137,-1079.4870605,69.1920013,0.0000000,0.0000000,342.7500000); //object(xmasbox1) (1)
	CreateDynamicObject(19056,2661.7839355,-1078.0340576,69.1910019,0.0000000,0.0000000,0.0000000); //object(xmasbox3) (1) ÂÀÃÎÑ
	CreateDynamicObject(19076,2677.8100586,-2016.5209961,12.5459995,0.0000000,0.0000000,256.9224243); //object(xmastree1) (1) RIFA
	CreateDynamicObject(19056,2677.5239258,-2017.3750000,13.1990004,0.0000000,0.0000000,0.0000000); //object(xmasbox3) (1)
	CreateDynamicObject(19058,2676.4121094,-2015.9940186,13.2060003,0.0000000,0.0000000,42.9489746); //object(xmasbox5) (1)
	CreateDynamicObject(19057,2678.8300781,-2015.7910156,13.2069998,0.0000000,0.0000000,17.2500000); //object(xmasbox4) (1)
	CreateDynamicObject(19056,2678.9489746,-2017.1920166,13.1969995,0.0000000,358.5000000,344.9999695); //object(xmasbox3) (2) RIFA
	CreateDynamicObject(19076,2055.1499023,-1149.1030273,22.8050003,0.0000000,0.0000000,0.0000000); //object(xmastree1) (1) BALLAS
	CreateDynamicObject(19055,2055.9050293,-1148.2440186,23.4939995,0.0000000,0.0000000,40.3591919); //object(xmasbox2) (1)
	CreateDynamicObject(19056,2055.5559082,-1149.9050293,23.4270000,0.0000000,0.0000000,0.0000000); //object(xmasbox3) (1)
	CreateDynamicObject(19057,2054.2600098,-1148.1180420,23.5000000,0.0000000,0.0000000,343.4999695); //object(xmasbox4) (1)
	CreateDynamicObject(19058,2053.7219238,-1149.5739746,23.4850006,0.0000000,0.0000000,15.7500305); //object(xmasbox5) (1) BALLAS
	CreateDynamicObject(19054,2458.3000488,-1672.6510010,13.1540003,0.0000000,0.0000000,39.6091919); //object(xmasbox1) (1) GROOVE
	CreateDynamicObject(19076,2457.2980957,-1673.0350342,12.5039997,0.0000000,0.0000000,0.0000000); //object(xmastree1) (1)
	CreateDynamicObject(19055,2456.7580566,-1671.9339600,13.1569996,0.0000000,0.0000000,0.0000000); //object(xmasbox2) (1)
	CreateDynamicObject(19054,2456.1020508,-1673.1390381,13.1520004,0.0000000,0.0000000,344.2499695); //object(xmasbox1) (2)
	CreateDynamicObject(19056,2457.9270020,-1674.2929688,13.1580000,0.0000000,0.0000000,0.0000000); //object(xmasbox3) (1) GROOVE
	
	TextDrawShowForPlayer (playerid, Textdraw3); //םמגûי דמה
	TextDrawShowForPlayer (playerid, Textdraw4); //םמגûי דמה
	
	
	
		//Íמגûי דמה
    if(pickupid == novigod1 || pickupid == novigod2 || pickupid == novigod3)
    {
		SetPlayerAttachedObject(playerid, 5, 19066, 2, 0.13, 0.0, 0.0, 0.0, 80.0, 80.0);
		return true;
    }
    
    
	
	
