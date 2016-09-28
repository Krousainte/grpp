local draw1 = createDraw("HP: 100", "Font_Old_20_White_Hi.TGA", 1, 7700, 250, 250, 250, true);	
local draw2 = createDraw("ST: 100", "Font_Old_20_White_Hi.TGA", 1, 7900, 250, 250, 250, true);		
local stex0 = createTexture(5, 7680, 700, 1400, "DLG_CONVERSATION.TGA");
local hp = 0;
			
function onInit()
{
	setFreeze(true);
	setPosition(6204.57, 6538.55, 39235.5);
	setScale(0, 0, 0);
	setAngle(186);
	enableDebugMode(true);
	enableMarvin(true);
	enableInterface(HEALTH_BAR, false);
	setDrawVisible(draw1 , true);
	setDrawVisible(draw2 , true);
	setTextureVisible(stex0, true);
	setMaxHealth(100);
	setHealth(100);
	setMaxMana(0);
	setStrength(10);
	setDexterity(10);
}

addEvent("onCommand", function(cmd, params)
{
	switch (cmd)
	{
	
	case "position":
	{
	 local pos = getPosition();   
     addMessage(250, 250, 250, pos.x+ " : " +pos.y + " " + pos.z);  
	}
	break;
	
	case "help":
	{
	addMessage(250, 250, 250, "Lista animacji: /anims");
	addMessage(250, 250, 250, "Dost�pne style poruszania si� postaci: /style");
	}
	break;
	
	case "style":
	{
	addMessage(250, 250, 250, "Dost�pne style: /mag, /wyluzowany, /zmeczony, /arogancki, /straznik");
	}
	break;
	
	case "mag":
	{
	applyOverlay("HUMANS_MAGE.MDS");
	}
	break;
	
	case "wyluzowany":
	{
	applyOverlay("HUMANS_RELAXED.MDS");
	}
	break;
	
	case "zmeczony":
	{
	applyOverlay("HUMANS_TIRED.MDS");
	}
	break;
	
	case "arogancki":
	{
	applyOverlay("HUMANS_ARROGANCE.MDS");
	}
	break;
	
	case "straznik":
	{
	applyOverlay("HUMANS_MILITIA.MDS");
	}
	break;
	
	case "anims":
	{
	addMessage(250, 250, 250, "Lista animacji: /wolaj, /pulpit, /klekaj, /spij, /krzeslo, /siadaj, /kopnij, /smierc, /smierc2, /drapjaja");
	addMessage(250, 250, 250, "/tak, /zabierz, /rozgladaj, /zbierz, /nie, /stoj, /super, /wygon, /zapomnij, /rolex, /drapramie");
	addMessage(250, 250, 250, "/niewiem, /tancz, /tancz2, /kibicuj, /myj, /sikaj, /mapa, /recewgore, /straz, /rozciagaj");
	addMessage(250, 250, 250, "/straz2, /wez, /modl2, /modl, /rog, /pchaj, /rece, /pobity, /zamiataj, /drapglowe");
	}
	break;
	
	case "wolaj":
	{
	playAnimation("T_COMEOVERHERE");
	}
	break;
	
	case "pulpit":
	{
	playAnimation("S_BOOK_S1");
	}
	break;
	
	case "klekaj":
	{
	playAnimation("S_CHESTSMALL_S1");
	}
	break;
	
	case "spij":
	{
	playAnimation("T_STAND_2_SLEEPGROUND");
	}
	break;
	
	case "krzeslo":
	{
	playAnimation("S_CHAIR_S1");
	}
	break;
	
	case "siadaj":
	{
	playAnimation("T_STAND_2_SIT");
	}
	break;
	
	case "kopnij":
	{
	playAnimation("T_BORINGKICK");
	}
	break;
	
	case "tak":
	{
	playAnimation("T_YES");
	}
	break;
	
	case "zabierz":
	{
	playAnimation("T_TRADEITEM");
	}
	break;
	
	case "rozgladaj":
	{
	playAnimation("T_SEARCH");
	}
	break;
	
	case "zbierz":
	{
	playAnimation("T_PLUNDER");
	}
	break;
	
	case "nie":
	{
	playAnimation("T_NO");
	}
	break;
	
	case "stoj":
	{
	playAnimation("T_HGUARD_NOENTRY");
	}
	break;
	
	case "super":
	{
	playAnimation("T_GREETCOOL");
	}
	break;
	
	case "wygon":
	{
	playAnimation("T_GETLOST");
	}
	break;
	
	case "zapomnij":
	{
	playAnimation("T_FORGETIT");
	}
	break;
	
	case "niewiem":
	{
	playAnimation("T_DONTKNOW");
	}
	break;
	
	case "tancz2":
	{
	playAnimation("T_DANCE_04");
	}
	break;
	
	case "tancz":
	{
	playAnimation("T_DANCE_01");
	}
	break;
	
	case "kibicuj":
	{
	playAnimation("S_WATCHFIGHT");
	}
	break;
	
	case "myj":
	{
	playAnimation("S_WASH");
	}
	break;
	
	case "sikaj":
	{
	playAnimation("S_PEE");
	}
	break;
	
	case "mapa":
	{
	playAnimation("S_MAP_S0");
	}
	break;
	
	case "recewgore":
	{
	playAnimation("S_MAG");
	}
	break;
	
	case "straz2":
	{
	playAnimation("S_LGUARD");
	}
	break;
	
	case "straz":
	{
	playAnimation("S_HGUARD");
	}
	break;
	
	case "wez":
	{
	playAnimation("S_IGET");
	}
	break;
	
	case "modl2":
	{
	playAnimation("S_IDOL_S1");
	}
	break;
	
	case "modl":
	{
	playAnimation("S_INNOS_S1");
	}
	break;
	
	case "rog":
	{
	playAnimation("S_HORN_S1");
	}
	break;
	
	case "pchaj":
	{
	playAnimation("S_GRAVE_S0");
	}
	break;
	
	case "rece":
	{
	playAnimation("S_FEASHOOT");
	}
	break;
	
	case "smierc2":
	{
	playAnimation("S_DEADB");
	}
	break;
	
	case "smierc":
	{
	playAnimation("S_DEAD");
	}
	break;
	
	case "zamiataj":
	{
	playAnimation("S_BROOM_S1");
	}
	break;
	
	case "rolex":
	{
	playAnimation("S_BARBQ_S1");
	}
	break;
	
	case "drapglowe":
	{
	playAnimation("R_SCRATCHHEAD");
	}
	break;
	
	case "drapramie":
	{
	playAnimation("R_SCRATCHLSHOULDER");
	}
	break;
	
	case "pobity":
	{
	playAnimation("T_STAND_2_WOUNDEDB");
	}
	break;
	      
		case "getangle":
		{
			addMessage(250, 250, 250, "Angle: " + getAngle());
		}
		return 1;				
		case "pomoc":
		{
			addMessage(45, 136, 45, "Czaty");
			addMessage(45, 136, 45, "- /l, /s, /k, /me, /do, /b");
		}
		break;
		return 1;						
	}
});	
	
function onRespawn()
{

}

function spawnujGracza(x, y, z, lp) 
{ 
    setFreeze(false); 
    setScale(1, 1, 1); 
    setAngle(246); 
    setPosition(x, y, z);
    setLearnPoints(lp); 
}

function saveItems() 
{ 
    local eqItems = getEq(); 
    local i = 0; 
    foreach (item in eqItems) 
    { 
        if(i<20) 
        { 
            callServerFunc("sendItems", getID(), i, item.instance, item.amount); 
            i++; 
        } 
        else return 0; 
    } 
    return 1; 
}

function stamina(value){
    setDrawText(draw2, "ST: " + value);
}

local mainTimer = setTimer(function()
{
if(getHealth()!=hp)
{
hp = getHealth();
setDrawText(draw1, "HP: " + hp);
}
}
,
1000, true);

function onKey(key, letter)
{
    if (!isChatInputOpen())
    {
        if(key == KEY_O)
        {
            if(getFocusID()>=0) callServerFunc("pokazOpis", getID(), getFocusID());
        }    
    }
}
