
local gracz = {};
local nazwaSerwera = "serwerze"; 
local bodyModel = ["hum_body_Naked0", "Hum_Body_Babe0"];
local headModel =["Hum_Head_Psionic", "Hum_Head_Bald", "Hum_Head_Fighter", "Hum_Head_FatBald", "Hum_Head_Thief", "Hum_Head_Pony", "HUM_HEAD_LONGHAIR", "HUM_HEAD_MUSTACHE", "HUM_HEAD_SIDEBURNS", "HUM_HEAD_BEARD", "HUM_HEAD_BEARD2", "HUM_HEAD_LONG", "Hum_Head_Babe", "Hum_Head_Babe1", "Hum_Head_Babe2", "Hum_Head_Babe3", "Hum_Head_Babe4", "Hum_Head_Babe5", "Hum_Head_Babe6", "Hum_Head_Babe7", "Hum_Head_Babe8", "Hum_Head_BabeHair"];
local Dementor;
local stupidBot = {};
local Trenerso;
local Trenerwo;
local Kwatermistrz;
local Dozorca;


function onInit()
{
	for(local i = 0; i < 7; ++i)
	{
		stupidBot[i] <- {};
	}	
	stupidBot[0] = createBot("Stra¿nik");
	stupidBot[0].setPosition(-7098, -1224.23, 5419.4);
	stupidBot[0].setAngle(314.417);
	stupidBot[0].setAdditionalVisuals("hum_body_Naked0", 6, "Hum_Head_Bald", 1); //Babe with man's face. Attention! This function causes lag!
	stupidBot[0].wearArmor("GRD_L");
	stupidBot[0].playAnimation("S_HGUARD");
	stupidBot[0].m_Immortal = true;
	
	stupidBot[1] = createBot("Stra¿nik");
	stupidBot[1].setPosition(-7540.14, -1217.79, 5132.39);
	stupidBot[1].setAngle(349.435);
	stupidBot[1].setAdditionalVisuals("hum_body_Naked0", 6, "Hum_Head_Fighter", 2); //Babe with man's face. Attention! This function causes lag!
	stupidBot[1].wearArmor("GRD_L");
	stupidBot[1].playAnimation("S_HGUARD");
	stupidBot[1].m_Immortal = true;

	stupidBot[2] = createBot("Stra¿nik");
	stupidBot[2].setPosition(-3371.02, -437.654, 1949.22);
	stupidBot[2].setAngle(335.007);
	stupidBot[2].setAdditionalVisuals("hum_body_Naked0", 6, "Hum_Head_Thief", 10); //Babe with man's face. Attention! This function causes lag!
	stupidBot[2].wearArmor("GRD_H");
	stupidBot[2].playAnimation("S_HGUARD");
	stupidBot[2].m_Immortal = true;
	
	stupidBot[3] = createBot("Stra¿nik");
	stupidBot[3].setPosition(-2992.38, -445.721, 2153.53);
	stupidBot[3].setAngle(325.101);
	stupidBot[3].setAdditionalVisuals("hum_body_Naked0", 6, "Hum_Head_FatBald", 15); //Babe with man's face. Attention! This function causes lag!
	stupidBot[3].wearArmor("GRD_H");
	stupidBot[3].playAnimation("S_HGUARD");
	stupidBot[3].m_Immortal = true;
	
	stupidBot[4] = createBot("Stra¿nik");
	stupidBot[4].setPosition(-26880.2, 370.709, 27285.9);
	stupidBot[4].setAngle(248.638);
	stupidBot[4].setAdditionalVisuals("hum_body_Naked0", 6, "Hum_Head_Psionic", 9); //Babe with man's face. Attention! This function causes lag!
	stupidBot[4].wearArmor("GRD_L");
	stupidBot[4].playAnimation("S_HGUARD");
	stupidBot[4].m_Immortal = true;
	
	stupidBot[5] = createBot("Stra¿nik");
	stupidBot[5].setPosition(-2132.36, 211.106, -843.112);
	stupidBot[5].setAngle(359.486);
	stupidBot[5].setAdditionalVisuals("hum_body_Naked0", 6, "Hum_Head_Thief", 11); //Babe with man's face. Attention! This function causes lag!
	stupidBot[5].wearArmor("GRD_H");
	stupidBot[5].playAnimation("S_HGUARD");
	stupidBot[5].m_Immortal = true;
	
	stupidBot[6] = createBot("Stra¿nik");
	stupidBot[6].setPosition(-1882.84, 211.03, -820.448);
	stupidBot[6].setAngle(356.702);
	stupidBot[6].setAdditionalVisuals("hum_body_Naked0", 6, "HUM_HEAD_BEARD2", 41); //Babe with man's face. Attention! This function causes lag!
	stupidBot[6].wearArmor("GRD_H");
	stupidBot[6].playAnimation("S_HGUARD");
	stupidBot[6].m_Immortal = true;
	
	Trenerso = createBot("Trener");
	Trenerso.setPosition(3601.27, -1408.16, 1677.23);
	Trenerso.setAngle(17.427);
	Trenerso.setAdditionalVisuals("hum_body_Naked0", 6, "HUM_HEAD_MUSTACHE", 45); //Babe with man's face. Attention! This function causes lag!
	Trenerso.wearArmor("GRD_M");
	Trenerso.playAnimation("S_HGUARD");
	Trenerso.m_Immortal = true;
	
	Trenerwo = createBot("Trener");
	Trenerwo.setPosition(-8120.82, 4777.34, 30311.9);
	Trenerwo.setAngle(145);
	Trenerwo.setAdditionalVisuals("hum_body_Naked0", 6, "HUM_HEAD_LONGHAIR", 55); //Babe with man's face. Attention! This function causes lag!
	Trenerwo.wearArmor("WOL_SRED");
	Trenerwo.playAnimation("T_STAND_2_SIT");
	Trenerwo.m_Immortal = true;

	Kwatermistrz = createBot("Kwatermistrz");
	Kwatermistrz.setPosition(1979.78, 247.931, -1817.26);
	Kwatermistrz.setAngle(75);
	Kwatermistrz.setAdditionalVisuals("hum_body_Naked0", 6, "Hum_Head_Psionic", 52); //Babe with man's face. Attention! This function causes lag!
	Kwatermistrz.wearArmor("GRD_M");
	Kwatermistrz.playAnimation("S_HGUARD");
	Kwatermistrz.m_Immortal = true;

	Dozorca = createBot("Dozorca");
	Dozorca.setPosition(-7026.14, -1061.8, 3851.68);
	Dozorca.setAngle(45);
	Dozorca.setAdditionalVisuals("hum_body_Naked0", 6, "Hum_Head_FatBald", 12); //Babe with man's face. Attention! This function causes lag!
	Dozorca.wearArmor("GRD_M");
	Dozorca.playAnimation("S_HGUARD");
	Dozorca.m_Immortal = true;
}




setServerDescription("<b>gothicroleplay.pl</b>");
    setServerWorld("GRP_COLONY.ZEN");
   		   
	for(local i = 0; i < getMaxSlots(); ++i)
	{
		gracz[i] <- {};
		gracz[i].haslo <- "NULL";
		gracz[i].posX <-  0;
		gracz[i].posY <- 0;
		gracz[i].posZ <- 0;
		
		gracz[i].zalogowany <- 0;
		gracz[i].itemInstance <- {[0] = "NULL", [1] = "NULL", [2] = "NULL", [3] = "NULL", [4] = "NULL", [5] = "NULL", [6] = "NULL", [7] = "NULL", [8] = "NULL", [9] = "NULL", [10] = "NULL", [11] = "NULL", [12] = "NULL", [13] = "NULL", [14] = "NULL", [15] = "NULL", [16] = "NULL",  [17] = "NULL",  [18] = "NULL",  [19] = "NULL"}; 
        gracz[i].itemAmount <- {[0] = 0, [1] = 0, [2] = 0, [3] = 0, [4] = 0, [5] = 0, [6] = 0, [7] = 0, [8] = 0, [9] = 0, [10] = 0, [11] = 0, [12] = 0, [13] = 0, [14] = 0, [15] = 0, [16] = 0, [17] = 0, [18] = 0, [19] = 0};
	    gracz[i].minuter <- 0;
		gracz[i].liczbaPN <- 0;
		gracz[i].run  <- 0;
		gracz[i].stamina  <- 100;
        gracz[i].pracuje <- false;
		gracz[i].HP <- 0;
		gracz[i].opis <- "brak";
	}
timers();
}

function timers() 
{ 
    local mainTimer = setTimer(function() 
    {  
        for(local i = 0; i<getMaxSlots(); i++)  
        {  
            if(isPlayerConnected(i))  
            { 
                gracz[i].minuter++;
                if(gracz[i].minuter==60)
                { 
                    sendMessage(i, 250, 250, 250, "Otrzyma³eœ jeden punkt nauki.");  
                    gracz[i].liczbaPN++; 
                    callClientFunc(i, "setLearnPoints", gracz[i].liczbaPN); 
                    gracz[i].minuter = 0;
                }

            } 
        }  
    }, 6000, true); 

	local mainTimer2 = setTimer(function() 
    {  
        for(local i = 0; i<getMaxSlots(); i++)  
        {  
            if(isPlayerConnected(i))  
            { 
                if(getPlayerAnimationID(i)==266 || getPlayerAnimationID(i)==1166 || getPlayerAnimationID(i)==1037 || getPlayerAnimationID(i)==1037 || getPlayerAnimationID(i)==1171 || getPlayerAnimationID(i)==1172 || getPlayerAnimationID(i)==826 || getPlayerAnimationID(i)==177 || getPlayerAnimationID(i)==716 || getPlayerAnimationID(i)==80 || getPlayerAnimationID(i)==378 || getPlayerAnimationID(i)==388 || getPlayerAnimationID(i)==389 || getPlayerAnimationID(i)==70 || getPlayerAnimationID(i)==322 || getPlayerAnimationID(i)==332 || getPlayerAnimationID(i)==333 || getPlayerAnimationID(i)==102 || getPlayerAnimationID(i)==458 || getPlayerAnimationID(i)==467 || getPlayerAnimationID(i)==468 || getPlayerAnimationID(i)==1092 || getPlayerAnimationID(i)==127 || getPlayerAnimationID(i)==543||getPlayerAnimationID(i)==552 || getPlayerAnimationID(i)==553 || getPlayerAnimationID(i)==551)
						{
							if(gracz[i].stamina>0)
							{
								gracz[i].run++;
								if(gracz[i].run>150)
								{
									gracz[i].run=0;
									gracz[i].stamina--;
									callClientFunc(i, "stamina", gracz[i].stamina);
									callClientFunc(i, "stamina", gracz[i].stamina);
									if(gracz[i].stamina==0) sendMessageToPlayer(i, 163, 162, 218, "Zmêczenie daje siê Tobie we znaki.");	
								}
							}	
							else
							{
								callClientFunc(i, "playAnimation", "S_RUN");
							}
						}

            } 
        }  
    }, 350, true); 
}

function onJoin(pid)
{    
    spawnPlayer(pid);
    setPlayerColor(pid, 250, 250, 250);
    sendMessage(pid,  45, 136, 45, "Witaj na " + nazwaSerwera + "!");
    sendMessage(pid, 250, 250, 250, "Twój nick to " + getPlayerName(pid) + ". Zaloguj siê na niego za pomoc¹ '/zaloguj (has³o)'.");
    sendMessage(pid, 250, 250, 250, "Je¿eli nie posiadasz konta mo¿esz je zarejestrowaæ u¿ywaj¹c '/zarejestruj (has³o)'.");
    sendMessage(pid, 170, 104, 57, " ");
    setPlayerInvisible(pid, false); 
    return 1;
}

function onDisconnect(pid, reason) 
{ 
    if(gracz[pid].zalogowany==1)
    {
        gracz[pid].posX =   getPlayerPosition(pid).x; 
        gracz[pid].posY =  getPlayerPosition(pid).y; 
        gracz[pid].posZ =  getPlayerPosition(pid).z;
        gracz[pid].HP = getPlayerHealth(pid);
        zapiszKonto(pid);
        zapiszItemy(pid);    
    }
        gracz[pid].haslo = "NULL"; 

        gracz[pid].itemInstance = {[0] = "NULL", [1] = "NULL", [2] = "NULL", [3] = "NULL", [4] = "NULL", [5] = "NULL", [6] = "NULL", [7] = "NULL", [8] = "NULL", [9] = "NULL", [10] = "NULL", [11] = "NULL", [12] = "NULL", [13] = "NULL",    [14]         = "NULL", [15] = "NULL", [16] = "NULL",  [17] = "NULL",  [18] = "NULL",  [19] = "NULL"};  
        gracz[pid].itemAmount = {[0] = 0, [1] = 0, [2] = 0, [3] = 0, [4] = 0, [5] = 0, [6] = 0, [7] = 0, [8] = 0, [9] = 0, [10] = 0, [11] = 0, [12] = 0, [13] = 0, [14] = 0, [15] = 0, [16] = 0, [17] = 0, [18] = 0, [19] = 0}; 

        gracz[pid].zalogowany = 0; 
        gracz[pid].minuter = 0; 
        gracz[pid].liczbaPN = 0; 
        gracz[pid].run = 0;
        gracz[pid].stamina = 100;
        gracz[pid].pracuje = false;
		gracz[pid].opis = "brak";
} 
	

function onCommand(pid, command, params)
{	

	switch(command)
	{
	
	
	case "opis":
	{
		local args = sscanf("s", params);
		if(args)
		{
			if(args[0].len()>4 && args[0].len()<111)
			{
				gracz[pid].opis = args[0];
				sendMessage(pid, 250, 250, 250, "Ustawiono opis.");
			}
			else sendMessage(pid, 250, 250, 250, "Opis od 5 do 110 znakï¿½w.");
		}
		else sendMessage(pid, 250, 250, 250, "U¿yj: /opis (tekst)");
	}
	break;
			
	case "opisusun":
	{
		if(gracz[pid].opis!="brak")
		{
			gracz[pid].opis = "brak";
			sendMessage(pid, 250, 250, 250, "Usuni?to opis.");
		}
		else sendMessage(pid, 250, 250, 250, "Nie posiadasz opisu.");
	}
	break;
	
	case "pw":
    case "pm":
    case "w":
    {    
        local args = sscanf("ds", params);
        if(args)
        {

            if(isPlayerConnected(args[0]) && pid!=args[0])
            {
                sendW(pid, args[0], args[1]);
                log("w", format("(%s) %s: %s", getDate(), getPlayerName(pid), params));
				break;
            }
            else
            {
                sendMessage(pid, 160, 150, 157, "B³êdne ID");
				break;
            }
        }    
        else
        {
            sendMessage(pid, 160, 150, 157, "U¿yj: /w (id) (treœæ)");
        }

    }    
    break;
	
	case "spawn":
    {
    if(isRconLogged(pid))
    {
    callClientFunc(pid, "setPosition", 6204.57, 6538.55, 39235.5);
    }
    }
    break;
	
	case "wo":
    {
    if(isRconLogged(pid))
    {
    callClientFunc(pid, "setPosition", -10707.2, 5777.72, 30212.1);
    }
    }
    break;
	
	case "so":
    {
    if(isRconLogged(pid))
    {
    callClientFunc(pid, "setPosition", -6715.78, -954.833, 3469.57);
    }
    }
    break;
	
	case "sk":
    {
    if(isRconLogged(pid))
    {
    callClientFunc(pid, "setPosition", -29701, 572.739, 29206);
    }
    }
    break;
	
	case "zbierajryz":
{
   local ppos = getPlayerPosition(pid);
   if(ppos.x>=-46192 && ppos.x<=-43962 && ppos.y>=1130 && ppos.y<=1680 && ppos.z>=8659 && ppos.z<=11217)
{
  if(gracz[pid].pracuje==false)
    {
       if(checkItem(pid, "ITMW_1H_BAU_AXE")>0)
       {
            if(gracz[pid].stamina>5) 
            {
	            {
				   callClientFunc(pid, "setFreeze", true);
                   sendMessage(pid, 250, 250, 250, "Rozpoczynasz zbieraæ ry¿½.");
				   callClientFunc(pid, "playAnimation", "T_PLUNDER");
				   gracz[pid].pracuje = true;
				   local timer = setTimer(function()
                   {
				   sendMessage(pid, 250, 250, 250, "Zebra³eœ trochê ry¿u");
                   callClientFunc(pid, "giveItem", "ITFORICE", 1);
				   gracz[pid].pracuje = false;
				   callClientFunc(pid, "setFreeze", false);
				   callClientFunc(pid, "saveItems");
				   }, 10000, false);
				   gracz[pid].stamina = gracz[pid].stamina - 5;
				   callClientFunc(pid, "stamina", gracz[pid].stamina);
				   break;
                }
            }
			else
			{
			sendMessage(pid, 250, 250, 250, "Jesteœ zbyt zmêczony.");
            }         
	    } 
        else 
		{
		sendMessage(pid, 250, 250, 250, "Nie posiadasz sierpa");	
	    }
    }
	else 
	{
	sendMessage(pid, 250, 250, 250, "Zbierasz ju¿.");
	}
   }	
  }	
  break;
	
	case "smaz":
{
   local ppos = getPlayerPosition(pid);
   if(getDistance3D(ppos.x,ppos.y,ppos.z,19840.3, 1119.2, -24230.3) < 210
        ||getDistance3D(ppos.x,ppos.y,ppos.z,4383.2, -913.9, 4967.7) <210
		||getDistance3D(ppos.x,ppos.y,ppos.z,2829.7, -1290.6, -3505.1) < 210
		||getDistance3D(ppos.x,ppos.y,ppos.z,623, -398.9, -6158.5) < 210
		||getDistance3D(ppos.x,ppos.y,ppos.z,-6651.8, -274.9, -5204.9) < 210
		||getDistance3D(ppos.x,ppos.y,ppos.z,-7515.4, -410.5, 933.8) < 210 
		||getDistance3D(ppos.x,ppos.y,ppos.z,-4093.3, -644.1, 3053.7) < 210 
		||getDistance3D(ppos.x,ppos.y,ppos.z,-2801.2, -527.3, 4443.3) < 210
		||getDistance3D(ppos.x,ppos.y,ppos.z,1020.2, -721.1, 2768) < 210
		||getDistance3D(ppos.x,ppos.y,ppos.z,6261.1, -993.3, -2000.4) < 210 
		||getDistance3D(ppos.x,ppos.y,ppos.z,5306.5, -484.4, -3951.9) < 210
		||getDistance3D(ppos.x,ppos.y,ppos.z,-15338.1, -1238.1, 4107.1) < 210 
		||getDistance3D(ppos.x,ppos.y,ppos.z,-26664.5, -204.1, 2384.3) < 210 
		||getDistance3D(ppos.x,ppos.y,ppos.z,-37402.5, 45.4, -1862.1) < 210 
		||getDistance3D(ppos.x,ppos.y,ppos.z,-27892.8, -371.7, 17544.9) < 210 
		||getDistance3D(ppos.x,ppos.y,ppos.z,-28014.5, 574.6, 29839.5) < 210
		||getDistance3D(ppos.x,ppos.y,ppos.z,-20023.2, -26.7, 20190.3) < 210
		||getDistance3D(ppos.x,ppos.y,ppos.z,-8532.2, 4769.7, 29454.7) < 210 
		||getDistance3D(ppos.x,ppos.y,ppos.z,-5962.3, 4848.6, 31795) < 210
		||getDistance3D(ppos.x,ppos.y,ppos.z,7538.7, 5563.1, 35770.2) < 210
		||getDistance3D(ppos.x,ppos.y,ppos.z,2936.1, -1324.7, 17835.7) < 210
		||getDistance3D(ppos.x,ppos.y,ppos.z,12390.6, 2.2, 2448.2) < 210
		||getDistance3D(ppos.x,ppos.y,ppos.z,29410.4, 230.4, 13355.7) < 210
		||getDistance3D(ppos.x,ppos.y,ppos.z,29720.4, -396.7, 13211.3) < 210
		||getDistance3D(ppos.x,ppos.y,ppos.z,15055.3, 1204, -15740.6) < 210
		||getDistance3D(ppos.x,ppos.y,ppos.z,17461.1, 6378.6, -25738.2) < 210)
{
     if(gracz[pid].pracuje==false)
    {
       if(checkItem(pid, "ITFO_MUTTONRAW")>0)
       {
	            {
				   callClientFunc(pid, "setFreeze", true);
                   sendMessage(pid, 250, 250, 250, "Rozpoczynasz piec miêso");
				   callClientFunc(pid, "playAnimation", "S_PAN_S0");
				   gracz[pid].pracuje = true;
				   local timer = setTimer(function()
                   {
				   sendMessage(pid, 250, 250, 250, "Usma¿y³eœ miêso");
                   callClientFunc(pid, "removeItem", "ITFO_MUTTONRAW", 1);
				   callClientFunc(pid, "giveItem", "ITFO_MUTTON", 1);
				   gracz[pid].pracuje = false;
				   callClientFunc(pid, "setFreeze", false);
				   callClientFunc(pid, "saveItems");
				   }, 10000, false);
				   break;
                }
	    } 
        else 
		{
		sendMessage(pid, 250, 250, 250, "Nie posiadasz surowego miêsa.");	
	    }
    }
	else 
	{
	sendMessage(pid, 250, 250, 250, "Sma¿ysz ju¿.");
	}
   }	
  }	
  break;
	
  case "kop":
  {
   local ppos = getPlayerPosition(pid);
   if(getDistance3D(ppos.x,ppos.y,ppos.z,3271, -648, -12635) < 210
        || getDistance3D(ppos.x,ppos.y,ppos.z,2591, -730, -12768) < 210
        || getDistance3D(ppos.x,ppos.y,ppos.z,2447, -736, -12583) < 210
        ||getDistance3D(ppos.x,ppos.y,ppos.z,-19784, -386, 5529) < 210
        ||getDistance3D(ppos.x,ppos.y,ppos.z,-20983, -616, 6124) < 210
        ||getDistance3D(ppos.x,ppos.y,ppos.z,-21583, -666, 5696) < 210
        ||getDistance3D(ppos.x,ppos.y,ppos.z,-45189, 3458, -999) < 210
        ||getDistance3D(ppos.x,ppos.y,ppos.z,-45458, 2108, -954) < 210
        ||getDistance3D(ppos.x,ppos.y,ppos.z,-45509, 3543, -672) < 210
        ||getDistance3D(ppos.x,ppos.y,ppos.z,-45159, 3522, -647) < 210
        ||getDistance3D(ppos.x,ppos.y,ppos.z,-25000, 481, 28452) < 210
        ||getDistance3D(ppos.x,ppos.y,ppos.z,-24587, 473, 28573) < 210
        ||getDistance3D(ppos.x,ppos.y,ppos.z,-24585, 455, 26895) < 210
        ||getDistance3D(ppos.x,ppos.y,ppos.z,-22928, 301, 27721) < 210
        ||getDistance3D(ppos.x,ppos.y,ppos.z,-22659, 224, 28270) < 210
        ||getDistance3D(ppos.x,ppos.y,ppos.z,-22822, 208, 29134) < 210
        ||getDistance3D(ppos.x,ppos.y,ppos.z,-23252, 291, 28942) < 210
        ||getDistance3D(ppos.x,ppos.y,ppos.z,21199, 1240, -26616) < 210
        ||getDistance3D(ppos.x,ppos.y,ppos.z,19137, 1122, -27332) < 210
        ||getDistance3D(ppos.x,ppos.y,ppos.z,19143, 1117, -27789) < 210
        ||getDistance3D(ppos.x,ppos.y,ppos.z,18857, 1114, -28066) < 210
        ||getDistance3D(ppos.x,ppos.y,ppos.z,17889, 1060, -26712) < 210
        ||getDistance3D(ppos.x,ppos.y,ppos.z,17998, 1043, -26534) < 210)
   {
    if(gracz[pid].pracuje==false)
    {
       if(checkItem(pid, "ITMW_2H_AXE_L_01")>0)
       {
            if(gracz[pid].stamina>5) 
            {
	            {
				   callClientFunc(pid, "setFreeze", true);
                   sendMessage(pid, 250, 250, 250, "Rozpoczynasz kopaï¿½.");
				   callClientFunc(pid, "playAnimation", "S_ORE_S1");
				   gracz[pid].pracuje = true;
				   local timer = setTimer(function()
                   {
				   sendMessage(pid, 250, 250, 250, "Wydoby³eœ bry³kê rudy.");
                   callClientFunc(pid, "giveItem", "ITMI_NUGGET", 1);
				   gracz[pid].pracuje = false;
				   callClientFunc(pid, "setFreeze", false);
				   callClientFunc(pid, "saveItems");
				   }, 10000, false);
		           gracz[pid].stamina = gracz[pid].stamina - 5;
				   callClientFunc(pid, "stamina", gracz[pid].stamina);
				   break;
                }
            }
			else
			{
			sendMessage(pid, 250, 250, 250, "Jesteœ zbyt zmêczony.");
            }         
	    } 
        else 
		{
		sendMessage(pid, 250, 250, 250, "Nie posiadasz kilofa");	
	    }
    }
	else 
	{
	sendMessage(pid, 250, 250, 250, "Kopiesz ju¿.");
	}
   }	
  }	
  break;
	
	case "low":
  {
   local ppos = getPlayerPosition(pid);
   if(getDistance3D(ppos.x,ppos.y,ppos.z,6824.69, 5466.18, 36709.4) < 210
        ||getDistance3D(ppos.x,ppos.y,ppos.z,2652.13, -1197.02, 16826.5) < 210
		||getDistance3D(ppos.x,ppos.y,ppos.z,2100.36, -1188.58, 16278.2) < 210
		||getDistance3D(ppos.x,ppos.y,ppos.z,-4870.82, -1297.39, 10159.3) < 210
		||getDistance3D(ppos.x,ppos.y,ppos.z,-10595.2, -1088.89, 9444.33) < 210
		||getDistance3D(ppos.x,ppos.y,ppos.z,-19310.6, -1075.01, 7759.01) < 210 
		||getDistance3D(ppos.x,ppos.y,ppos.z,-25556.3, -796.474, 14425.8) < 210 
		||getDistance3D(ppos.x,ppos.y,ppos.z,-29184.4, -549.272, 14508.8) < 210
		||getDistance3D(ppos.x,ppos.y,ppos.z,-32127.3, 427.609, 12849.3) < 210
		||getDistance3D(ppos.x,ppos.y,ppos.z,-35105.1, 27.3846, -1773.91) < 210 
		||getDistance3D(ppos.x,ppos.y,ppos.z,-37137.5, 69.8348, -2841.74) < 210
		||getDistance3D(ppos.x,ppos.y,ppos.z,-39455.7, 65.1023, -5233.67) < 210 
		||getDistance3D(ppos.x,ppos.y,ppos.z,-35366, -46.0191, -5745.41) < 210 
		||getDistance3D(ppos.x,ppos.y,ppos.z,6593.71, -1427.78, 10100.8) < 210 
		||getDistance3D(ppos.x,ppos.y,ppos.z,19385.5, -849.504, 9372.3) < 210 
		||getDistance3D(ppos.x,ppos.y,ppos.z,10544.7, 437.891, -11403.8) < 210
		||getDistance3D(ppos.x,ppos.y,ppos.z,14620, 1098, -18232) < 210)
   {
    if(gracz[pid].pracuje==false)
    {
       if(checkItem(pid, "ITMI_ANGEL")>0)
       {
            if(gracz[pid].stamina>5) 
            {
	            {
				   callClientFunc(pid, "setFreeze", true);
                   sendMessage(pid, 250, 250, 250, "Rozpoczynasz ³owiæ.");
				   callClientFunc(pid, "playAnimation", "S_TREASURE_S0");
				   gracz[pid].pracuje = true;
				   local timer = setTimer(function()
                   {
				   sendMessage(pid, 250, 250, 250, "Z³apa³eœ rybê½.");
                   callClientFunc(pid, "giveItem", "ITFO_FISH", 1);
				   gracz[pid].pracuje = false;
				   callClientFunc(pid, "setFreeze", false);
				   callClientFunc(pid, "saveItems");
				   }, 10000, false);
		           gracz[pid].stamina = gracz[pid].stamina - 3;
				   callClientFunc(pid, "stamina", gracz[pid].stamina);
				   break;
                }
            }
			else
			{
			sendMessage(pid, 250, 250, 250, "Jesteœ zbyt zmêczony.");
            }         
	    } 
        else 
		{
		sendMessage(pid, 250, 250, 250, "Nie posiadasz wêdki.");	
	    }
    }
	else 
	{
	sendMessage(pid, 250, 250, 250, "£owisz ju¿½.");
	}
   }	
  }	
  break;
	
	case "piluj":
{
   local ppos = getPlayerPosition(pid);
   if(getDistance3D(ppos.x,ppos.y,ppos.z,-6243, 4933, 31631) < 210
        || getDistance3D(ppos.x,ppos.y,ppos.z,-19787, 110, 20539) < 210
        || getDistance3D(ppos.x,ppos.y,ppos.z,-27772, -241, 17241) < 210
        ||getDistance3D(ppos.x,ppos.y,ppos.z,-28028, -469, 18819) < 210
        ||getDistance3D(ppos.x,ppos.y,ppos.z,-38672, 192, -1229) < 210
        ||getDistance3D(ppos.x,ppos.y,ppos.z,-38125, 129, -2324) < 210
        ||getDistance3D(ppos.x,ppos.y,ppos.z,-14877, -1281, 3081) < 210
        ||getDistance3D(ppos.x,ppos.y,ppos.z,-9770, -1106, 7402) < 210
        ||getDistance3D(ppos.x,ppos.y,ppos.z,14857, 1276, -15425) < 210)
{
 if(gracz[pid].pracuje==false)
    {
       if(checkItem(pid, "ITMI_SAW")>0)
       {
            if(gracz[pid].stamina>5) 
            {
	            {
				   callClientFunc(pid, "setFreeze", true);
                   sendMessage(pid, 250, 250, 250, "Rozpoczynasz pi³owaæ.");
				   callClientFunc(pid, "playAnimation", "S_BAUMSAEGE_S1");
				   gracz[pid].pracuje = true;
				   local timer = setTimer(function()
                   {
				   sendMessage(pid, 250, 250, 250, "Zdoby³eœ kawa³ek drewna.");
                   callClientFunc(pid, "giveItem", "ITMI_WOOD", 1);
				   gracz[pid].pracuje = false;
				   callClientFunc(pid, "setFreeze", false);
				   callClientFunc(pid, "saveItems");
				   }, 10000, false);
		           gracz[pid].stamina = gracz[pid].stamina - 5;
				   callClientFunc(pid, "stamina", gracz[pid].stamina);
				   break;
                }
            }
			else
			{
			sendMessage(pid, 250, 250, 250, "Jesteœ zbyt zmêczony.");
            }         
	    } 
        else 
		{
		sendMessage(pid, 250, 250, 250, "Nie posiadasz pi³y");	
	    }
    }
	else 
	{
	sendMessage(pid, 250, 250, 250, "Pi³ujesz ju¿.");
	}
   }	
  }	
  break;
	
	case "stamina":
	{
     sendMessage(pid, 250, 250, 250, "Stamina: " + gracz[pid].stamina);
	}
	break;
	
	case "kick":
    {
    if(isRconLogged(pid))
    {
    local args = sscanf("d", params);
    if(args)
    {
    if(isPlayerConnected(args[0]))
    {
    kick(args[0]);
    }
    }
    }
    }
    break;
	
	case "ban":
    {
    if(isRconLogged(pid))
    {
    local args = sscanf("d", params);
    if(args)
    {
    if(isPlayerConnected(args[0]))
    {
    ban(args[0]);
    }
    }
    }
    }
    break;
	
	case "giveitem":
{
    if(isRconLogged(pid))
    {
        local args = sscanf("dds", params);
        if(args)
        {
            if(isPlayerConnected(args[0]))
            {
                callClientFunc(args[0], "giveItem", args[2].toupper(), args[1]);    
                callClientFunc(args[0], "saveItems");
            }
        }
    }
}
break;

	  case "wyglad":
    {
                local args = sscanf("dddd", params);
                if(args && args[0]>-2 && args[0]<2 && args[1]>-2 && args[1]<22 && args[2]>-2 && args[2]<22 && args[3]>-2 && args[3]<182)
                {
                        if(args[0]==-1) args[0] = getPlayerVisual(pid).bodyModel;
                        else args[0]=bodyModel[args[0]];
                        if(args[1]==-1) args[1] = getPlayerVisual(pid).headModel;
                        else args[1]=headModel[args[1]];
                        if(args[2]==-1) args[2] = getPlayerVisual(pid).bodyTexture;
                        if(args[3]==-1) args[3] = getPlayerVisual(pid).headTexture;
                        callClientFunc(pid, "setAdditionalVisual", args[0], args[2], args[1], args[3]);
						callClientFunc(pid, "sendVisual");
                        sendMessage(pid, 160, 52, 86, "Wygl¹d zosta³ zmieniony.");
                        break;
                }
                else
                {
                    sendMessage(pid, 160, 52, 86, "U¿yj: /wyglad (bodyModel: 0-1) (headModel 0-21) (bodyTexture 0-21) (headTexture 0-181)");
                    sendMessage(pid, 160, 52, 86, "Jeœli chcesz zachowaæ obecn¹ wartoœæ parametru, U¿yj -1.");
                }    
    }
    break;
		
		case "zarejestruj":
		{
			if(gracz[pid].zalogowany==0) 
			{
				local sdf = sscanf("s", params); 
				local haslo = sdf[0];
				if(sdf)
				{
					if(haslo.len() > 2 && haslo.len()<21)
					{
						if(fileExists("baza/konta/" + getPlayerName(pid) + ".txt") == false)
						{
							 sendMessage(pid, 45, 136, 45, "Zarejestrowano konto.");
							haslo = md5(haslo); 
							gracz[pid].haslo = haslo;
							setPlayerInvisible(pid, false); 
							callClientFunc(pid, "spawnujGracza", 25172, 3261, -21207, 0);
							gracz[pid].zalogowany=1;
							zapiszKonto(pid);			
						}
						else sendMessage(pid, 119, 127, 127, "Nick zajï¿½ty!");
					}
					else sendMessage(pid,119, 127, 127, "Has³o od 3 do 20 znaków.");
				
				}
				else sendMessage(pid, 119, 127, 127, "Tip: /zarejestruj (has³o)");
			}
		}
		break;
		
		 case "zaloguj":
        {
            if(gracz[pid].zalogowany==0) 
            {
                local sdf = sscanf("s", params); 
                local haslo = sdf[0];
                if(sdf)
                {
                        if(fileExists("baza/konta/" +  getPlayerName(pid)  + ".txt") == true)
                        {    
                            local buffer = "";
                            local buffer1 = "";
                            local file = fileOpen("baza/konta/" +  getPlayerName(pid)  + ".txt","r");
                            if( file )
                            {


                                buffer = "";
                                buffer = fileRead(file);
                                buffer = format("%s",buffer);
                                haslo = md5(haslo); 
                                if(buffer==haslo) 
                                {
                                    sendMessage(pid, 45, 136, 45, "Zosta³eœ poprawnie zalogowany. Mi³ej gry!");
                                    gracz[pid].haslo = haslo;
                                    gracz[pid].zalogowany=1;
                                    setPlayerInvisible(pid, false); 
                                }    
                                else 
                                {
                                     sendMessage(pid, 119, 127, 127, "B³êdne has³o.");
                                     fileClose(file);
                                     return 1;
                                }
                                buffer = "";
                                buffer = fileRead(file);
                                buffer = format("%s",buffer);
                                gracz[pid].posX = buffer.tointeger();

                                buffer = "";
                                buffer = fileRead(file);
                                buffer = format("%s",buffer);
                                gracz[pid].posY = buffer.tointeger();

                                buffer = "";
                                buffer = fileRead(file);
                                buffer = format("%s",buffer);
                                gracz[pid].posZ = buffer.tointeger();
								
								buffer = "";
                                buffer = fileRead(file);
                                buffer = format("%s",buffer);
                                gracz[pid].minuter = buffer.tointeger();
								
								buffer = "";
                                buffer = fileRead(file);
                                buffer = format("%s",buffer);
                                gracz[pid].liczbaPN = buffer.tointeger();
								
								buffer = "";
                                buffer = fileRead(file);
                                buffer = format("%s",buffer);
                                gracz[pid].stamina = buffer.tointeger();
								
								buffer = "";
                                buffer = fileRead(file);
                                buffer = format("%s",buffer);
                                gracz[pid].HP = buffer.tointeger();

								buffer = "";
                                buffer = fileRead(file);
                                buffer = format("%s",buffer);
                                gracz[pid].opis = buffer;

                                callClientFunc(pid, "spawnujGracza", gracz[pid].posX, gracz[pid].posY, gracz[pid].posZ, gracz[pid].liczbaPN);
                                fileClose(file);
								
								callClientFunc(pid, "stamina", gracz[pid].stamina);
                            }


                            local file1 = fileOpen("baza/itemy/" + getPlayerName(pid) + ".txt","r");
                            if(file1)
                            {
for(local i = 0; i < 20; ++i)
{
    buffer = "";
    buffer = fileRead(file1);
    buffer = format("%s",buffer);

    buffer1 = "";
    buffer1 = fileRead(file1);
    buffer1 = format("%s",buffer1);
    if(buffer1.tointeger()>0) callClientFunc(pid, "giveItem", buffer, buffer1.tointeger());
    print("daje item " + buffer + " w ilosci " + buffer1.tointeger());
}    
fileClose(file1);
callClientFunc(pid, "saveItems");
zapiszItemy(pid);
}
    else sendMessage(pid, 119, 127, 127, "blond");

                        }    
                        else sendMessage(pid, 119, 127, 127, "Konto nie istnieje.");
                }
                else sendMessage(pid, 119, 127, 127, "Tip: /zaloguj (hasï¿½o)");
            }
        }
        break;
	
	case "l":
	{
		if(gracz[pid].zalogowany!=1) return 1;
		local sdf = sscanf("s",params);
		if(sdf)
		{
			local playerPosition = getPlayerPosition(pid);
			for(local i = 0; i < getMaxSlots(); ++i)
			{
				if(isPlayerConnected(i)==true)
				{
					local recipientPosition = getPlayerPosition(i);
					if(getDistance3D(playerPosition.x,playerPosition.y,playerPosition.z,recipientPosition.x,recipientPosition.y,recipientPosition.z) < 500)
					{
						sendMessage(i,250, 250, 250,getPlayerName(pid) + " mï¿½wi: " + params);
					}	
					else if(getDistance3D(playerPosition.x,playerPosition.y,playerPosition.z,recipientPosition.x,recipientPosition.y,recipientPosition.z) < 1000)
					{
						sendMessage(i,118, 113, 113,getPlayerName(pid) + " mï¿½wi: " + message);
					}	
				}
			}
			break;
		}
		else
			sendMessage(pid, 160, 150, 157, "Tip: /l (treœæ)");
	}
	break; 
	
	case "k":
	{
		if(gracz[pid].zalogowany!=1) return 1;
		local sdf = sscanf("s",params);
		if(sdf)
		{
			local playerPosition = getPlayerPosition(pid);
			for(local i = 0; i < getMaxSlots(); ++i)
			{
				if(isPlayerConnected(i)==true)
				{
					local recipientPosition = getPlayerPosition(i);
					if(getDistance3D(playerPosition.x,playerPosition.y,playerPosition.z,recipientPosition.x,recipientPosition.y,recipientPosition.z) < 1000)
						sendMessage(i,250, 250, 250,getPlayerName(pid) + " krzyczy: " + params);
				}
			}	
			break;
		}
		else
			sendMessage(pid, 160, 150, 157, "Tip: /k (treœæ)");
	}
	log("k", format("(%s) %s: %s", getDate(), getPlayerName(pid), message));
	break;
	
	case "s":
	{
		if(gracz[pid].zalogowany!=1) return 1;
		local sdf = sscanf("s",params);
		if(sdf)
		{
			local playerPosition = getPlayerPosition(pid);
			for(local i = 0; i < getMaxSlots(); ++i)
			{
				if(isPlayerConnected(i)) 
				{
					local recipientPosition = getPlayerPosition(i);
					if(getDistance3D(playerPosition.x,playerPosition.y,playerPosition.z,recipientPosition.x,recipientPosition.y,recipientPosition.z) < 250)
					{
						sendMessage(i,250, 250, 250,getPlayerName(pid) + " szepcze: " + params);
					}	
				}
			}
			log("s", format("(%s) %s: %s", getDate(), getPlayerName(pid), params));
			break;
		}
		else
			sendMessage(pid, 160, 150, 157, "Tip: /s (treœæ)");
	}
	break;
	
	case "me":
	{
		if(gracz[pid].zalogowany!=1) return 1;
		local sdf = sscanf("s",params);
		if(sdf)
		{
			local playerPosition = getPlayerPosition(pid);
			for(local i = 0; i < getMaxSlots(); ++i)
			{
				if(isPlayerConnected(i)==true)
				{
					local recipientPosition = getPlayerPosition(i);
					if(getDistance3D(playerPosition.x,playerPosition.y,playerPosition.z,recipientPosition.x,recipientPosition.y,recipientPosition.z) < 1000)
						sendMessage(i,159, 54, 127,"" + getPlayerName(pid) + " " + params);
				}
			}		
			log("me", format("(%s) %s: %s", getDate(), getPlayerName(pid), params));
			break;
		}
		else
			sendMessage(pid, 160, 150, 157, "Tip: /me (treœæ)");
	
	}
	break;
	
	case "do":
	{
		if(gracz[pid].zalogowany!=1) return 1;
		local sdf = sscanf("s",params);
		if(sdf)
		{
			local playerPosition = getPlayerPosition(pid);
			for(local i = 0; i < getMaxSlots(); ++i)
			{
				if(isPlayerConnected(i)==true)
				{
					local recipientPosition = getPlayerPosition(i);
					if(getDistance3D(playerPosition.x,playerPosition.y,playerPosition.z,recipientPosition.x,recipientPosition.y,recipientPosition.z) < 1000)
						sendMessage(i,131, 81, 116,params + " (( (" + pid + ") " + getPlayerName(pid) + " ))");
				}
			}	
			log("do", format("(%s) %s: %s", getDate(), getPlayerName(pid), params));
			break;
		}
		else
			sendMessage(pid, 160, 150, 157, "Tip: /do (treœæ)");
	}
	break;
	
	case "b":
	{
		if(gracz[pid].zalogowany!=1) return 1;
		local sdf = sscanf("s",params);
		if(sdf)
		{
			local playerPosition = getPlayerPosition(pid);
			for(local i = 0; i < getMaxSlots(); ++i)
			{
				if(isPlayerConnected(i)==true)
				{
					local recipientPosition = getPlayerPosition(i);
					if(getDistance3D(playerPosition.x,playerPosition.y,playerPosition.z,recipientPosition.x,recipientPosition.y,recipientPosition.z) < 1000)
						sendMessage(i,160, 150, 157,"(( (" + pid + ") " + getPlayerName(pid) + ": " + params + " ))");
				}
			}	
			log("b", format("(%s) %s: %s", getDate(), getPlayerName(pid), params));
			break;
		}
		else
			sendMessage(pid, 160, 150, 157, "Tip: /b (treœæ)");
	}
	break;
	}
}	

function onMessage(id, message)
{
    if(gracz[id].zalogowany!=1) return 1;
    local playerPosition = getPlayerPosition(id);
    for(local i = 0; i < getMaxSlots(); ++i)
    {
        if(isPlayerConnected(i)==true)
        {
            local recipientPosition = getPlayerPosition(i);
            if(getDistance3D(playerPosition.x,playerPosition.y,playerPosition.z,recipientPosition.x,recipientPosition.y,recipientPosition.z) < 500)
            {
                sendMessage(i,250, 250, 250,getPlayerName(id) + " mï¿½wi: " + message);
            }    
            else if(getDistance3D(playerPosition.x,playerPosition.y,playerPosition.z,recipientPosition.x,recipientPosition.y,recipientPosition.z) < 1000)
            {
                sendMessage(i,118, 113, 113,getPlayerName(id) + " mï¿½wi: " + message);
            }    
        }
    }
    log("l", format("(%s) %s: %s", getDate(), getPlayerName(id), message));
    return 1;
}

	
function zapiszKonto(pid)
{
    if(gracz[pid].zalogowany==1)
    {
        local file = fileOpen("baza/konta/" + getPlayerName(pid) + ".txt","w+");
        if( file )
        {
            fileWrite(file, format("%s",gracz[pid].haslo));
            fileWrite(file, format("%d",gracz[pid].posX));
            fileWrite(file, format("%d",gracz[pid].posY));
            fileWrite(file, format("%d",gracz[pid].posZ));
            fileWrite(file, format("%d",gracz[pid].minuter));
            fileWrite(file, format("%d",gracz[pid].liczbaPN));
            fileWrite(file, format("%d",gracz[pid].stamina));
            fileWrite(file, format("%d",gracz[pid].HP));
			fileWrite(file, format("%s",gracz[pid].opis));
            fileClose(file);
        }
        return 1;
    }    
}

function zapiszItemy(pid)  
{         
    local file =  fileOpen("baza/itemy/" + getPlayerName(pid) + ".txt","w+"); 
    if( file ) 
    {     
        for(local i = 0; i < 20; ++i) 
        { 
			fileWrite(file, format("%s",gracz[pid].itemInstance[i]));
			fileWrite(file, format("%d",gracz[pid].itemAmount[i]));
        }     
        fileClose(file); 
    } 
    return 1; 
}    

function sendItems(pid, i, instance, amount) 
{ 
    gracz[pid].itemInstance[i] = instance; 
    gracz[pid].itemAmount[i] = amount; 
    return 1; 
} 
	
function dajItem(pid, instance, amount)
{
    callClientFunc(pid, "giveItem", instance.toupper(), amount);
    print("DAJITEM: " + instance + " amount : " + amount);
    return 1;
}

function checkItem(pid, inst)
{
    foreach(i, value in gracz[pid].itemInstance)
    {
        if(gracz[pid].itemInstance[i]==inst) return gracz[pid].itemAmount[i];
    }
    return 0;
}

function sendW(pid, cid, str)
{
    sendMessage(pid, 255, 244, 0, ">> Wiadomoï¿½ï¿½ do (" + cid + ") " + getPlayerName(cid) + ": " + str);
    sendMessage(cid, 255, 133, 0, "<< Wiadomoï¿½ï¿½ od (" + pid + ") " + getPlayerName(pid) + ": " + str);
    return 1;
}

function pokazOpis(pid, focusid)
{
    sendMessage(pid, 131, 81, 116, format("(%d) %s", focusid, getPlayerName(focusid)));
	sendMessage(pid, 131, 81, 116, format("- %s", gracz[focusid].opis));
}

