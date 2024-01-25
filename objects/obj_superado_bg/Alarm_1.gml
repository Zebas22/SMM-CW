    var levelname = string_copy(global.levelguardabot, 1, (string_length(global.levelguardabot) - 3))
    var leveldescription = "Sin Descripcion"
    var level = scr_verify_pub((global.directorio + global.levelguardabot))
    var apa = string(global.apariencia)
    switch global.bg_level
    {
        case "underground":
            var entorno = "1"
            break
        case "castle":
            entorno = "2"
            break
        case "underwater":
            entorno = "3"
            break
        case "ghost":
            entorno = "4"
            break
        case "airship":
            entorno = "5"
            break
        case "desert":
            entorno = "6"
            break
        case "snow":
            entorno = "7"
            break
        default:
            entorno = "0"
    }
	var _str = ("token=" + global.token + "&discord_id=" + hash_encode(global.my2) + "&author=" + hash_encode(global.my1) + "&auth_code=" + global.my5 + "&name=" + hash_encode(levelname) + "&desc=" + leveldescription + "&aparience=" + apa + "&entorno=" + entorno + "&cw=" + level)
    url = http_post_string((global.api_url + "/stages/upload"), _str)
    alarm[2] = 2400