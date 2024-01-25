
	if (global.apariencia == 0)
	{
	    switch global.bg_level
	    {
	        case "snow":
	            if (global.modo_noche == 1)
	                return spr_SMB_mp3_snow_night;
	            else
	                return spr_SMB_mp3_snow;
	        case "underwater":
	            return spr_SMB_mp3_underwater;
	        case "beach":
	            return spr_SMB_mp3_underwater;
	        case "airship":
	            return spr_SMB_mp3_airship;
	        case "castle":
	            return spr_SMB_mp3_dark;
	        case "underground":
	            return spr_SMB_mp3_dark;
	        case "ghost":
	            return spr_SMB_mp3_dark;
	        default:
	            return spr_SMB_mp3;
	    }

	}
	else if (global.apariencia == 1)
	{
	    if (global.modo_noche == 1)
	    {
	        switch global.bg_level
	        {
	            case "snow":
	                if (global.modo_noche == 1)
	                    return spr_SMB3_mp3_snow_night;
	                else
	                    return spr_SMB3_mp3_snow;
	            case "underwater":
	                return spr_SMB3_mp3_underwater;
	            case "beach":
	                return spr_SMB3_mp3_underwater;
	            case "airship":
	                return spr_SMB3_mp3_airship;
	            case "castle":
	                return spr_SMB3_mp3_dark;
	            default:
	                return spr_SMB3_mp3_night;
	        }

	    }
	    else
	    {
	        switch global.bg_level
	        {
	            case "snow":
	                if (global.modo_noche == 1)
	                    return spr_SMB3_mp3_snow_night;
	                else
	                    return spr_SMB3_mp3_snow;
	            case "underwater":
	                return spr_SMB3_mp3_underwater;
	            case "beach":
	                return spr_SMB3_mp3_underwater;
	            case "airship":
	                return spr_SMB3_mp3_airship;
	            case "castle":
	                return spr_SMB3_mp3_dark;
	            case "underground":
	                return spr_SMB3_mp3_night;
	            case "ghost":
	                return spr_SMB3_mp3_night;
	            default:
	                return spr_SMB3_mp3;
	        }

	    }
	}
	else if (global.apariencia == 2)
	{
	    switch global.bg_level
	    {
	        case "snow":
	            if (global.modo_noche == 1)
	                return spr_mp3_snow_night;
	            else
	                return spr_mp3_snow;
	        case "underwater":
	            return spr_mp3_underwater;
	        case "beach":
	            return spr_mp3_underwater;
	        case "airship":
	            return spr_mp3_airship;
	        default:
	            return spr_mp3;
	    }

	}
	else if (global.apariencia == 2)
	{
	    switch global.bg_level
	    {
	        case "snow":
	            if (global.modo_noche == 1)
	                return spr_mp1_snow_night;
	            else
	                return spr_mp1_snow;
	        case "underwater":
	            return spr_mp1_underwater;
	        case "beach":
	            return spr_mp1_underwater;
	        case "airship":
	            return spr_mp1_airship;
	        default:
	            return spr_mp1;
	    }

	
	}