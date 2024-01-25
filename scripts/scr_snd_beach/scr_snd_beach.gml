switch global.apariencia
{
    case 0:
        if (global.modo_noche == 0)
            return 0;
        else
            return 10;
        break
    case 1:
        if (global.modo_noche == 0)
            return 52;
        else
            return 53;
        break
    case 2:
        if (global.modo_noche == 0)
            return 109;
        else
            return 119;
        break
    case 3:
        if (global.modo_noche == 0)
            return 379;
        else
            return 380;
        break
}

