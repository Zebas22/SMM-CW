
	switch global.apariencia
	{
	    case 0:
	        if (global.modo_noche == 0)
	            return bg_SMB_underwater;
	        else
	            return bg_SMB_underwater_night_1;
	    case 1:
	        if (global.modo_noche == 0)
	            return bg_SMB3_underwater;
	        else
	            return bg_SMB3_underwater_night;
	    case 2:
	        if (global.modo_noche == 0)
	            return bg_underwater_1;
	        else
	            return bg_underwater_night_1;
	    default:
	        return bg_ground;
	}
