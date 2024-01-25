
	    switch global.apariencia
	    {
	        case 0:
	            if (global.powerup == -85)
	                return snd_SMB_link_dead;
	            else
	                return snd_SMB_dead;
	            break
	        case 1:
	            return snd_SMB3_dead;
	        case 2:
	            return snd_dead;
	    
		}