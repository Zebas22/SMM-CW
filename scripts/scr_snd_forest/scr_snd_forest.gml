switch global.apariencia
{
    case 0:
        if (global.modo_noche == 0)
            return 6;
        else
            return 16;
        break
    case 1:
        if (global.modo_noche == 0)
            return 44;
        else
            return 53;
        break
    case 2:
        if (global.modo_noche == 0)
            return 115;
        else
            return 125;
        break
    case 3:
        if (global.modo_noche == 0)
            return 374;
        else
            return 386;
        break
}

