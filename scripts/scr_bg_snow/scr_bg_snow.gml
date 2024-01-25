
	switch global.apariencia
	{
	    case 0:
	        if (global.modo_noche == 0)
	            return bg_SMB_snow;
	        else
	            return bg_SMB_snow_night_1;
	        break
	    case 1:
	        if (global.modo_noche == 0)
	            return bg_SMB3_snow;
	        else
	            return bg_SMB3_snow_night_1;
	        break
	    case 2:
	        if (global.modo_noche == 0)
	            return bg_snow;
	        else
	            return bg_night_1;
	        break
	    default:
	        return bg_ground;
	
	}