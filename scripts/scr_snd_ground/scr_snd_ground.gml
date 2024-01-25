

	    switch global.apariencia
	    {
	        case 0:
	            if (global.modo_noche == 0)
	                return snd_SMB_music_ground;
	            break
	        case 1:
	            if (global.modo_noche == 0)
	                return snd_SMB3_music_ground;
	            break
	        case 2:
	            if (global.modo_noche == 0)
	                return snd_music_ground;
	            break
	    }





