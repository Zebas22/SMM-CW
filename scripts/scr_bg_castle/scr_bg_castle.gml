
	switch global.apariencia
	{
	    case 0:
	        if (global.modo_noche == 0)
	            return bg_SMB_underground;
	        else
	            return bg_SMB_night_1;
	        break
	    case 1:
	        if (global.modo_noche == 0)
	            return bg_SMB3_castle;
	        else
	            return bg_SMB3_night_1;
	        break
	    case 2:
	        if (global.modo_noche == 0)
	            return bg_castle;
	        else
	            return bg_night_1;
	        break
	    default:
	        return bg_ground;
	
	}