
	switch global.apariencia
	{
	    case 0:
	        if (global.modo_noche == 0)
	            return bg_SMB_airship;
	        else
	            return bg_SMB_night_1;
	        break
	    case 1:
	        if (global.modo_noche == 0)
	            return bg_SMB3_airship;
	        else
	            return bg_SMB3_sky_night_1;
	        break
	    case 2:
	        if (global.modo_noche == 0)
	            return bg_airship;
	        else
	            return bg_sky_night_1;
	        break
	    default:
	        return bg_ground;
	
	}