
	switch global.apariencia
	{
	    case 0:
	        if (global.modo_noche == 0)
	            return bg_SMB_beach;
	        else
	            return bg_SMB_night_1;
	    case 1:
	        if (global.modo_noche == 0)
	            return bg_SMB3_beach;
	        else
	            return bg_SMB3_night_1;
	    case 2:
	        if (global.modo_noche == 0)
	            return bg_beach;
	        else
	            return bg_night_1;
	    default:
	        return bg_ground;
	
	}