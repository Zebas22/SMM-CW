
    if (global.apariencia == 0)
    {
        switch global.jugador
        {
            case 0:
                return spr_SMB_mario_dead;
            case 1:
                return spr_SMB_luigi_dead;
            case 2:
                return spr_SMB_toad_dead;
            case 3:
                return spr_SMB_toadette_dead;
        }

    }
    else if (global.apariencia == 1)
    {
        switch global.jugador
        {
            case 0:
                return spr_SMB3_mario_dead;
            case 1:
                return spr_SMB3_luigi_dead;
            case 2:
                return spr_SMB3_toad_dead;
            case 3:
                return spr_SMB3_toadette_dead;
        }

    }
    else if (global.apariencia == 2)
    {
        switch global.jugador
        {
            case 0:
                return spr_mario_dead;
            case 1:
                return spr_luigi_dead;
            case 2:
                return spr_toad_dead;
            case 3:
                return spr_toadette_dead;
        }
	}