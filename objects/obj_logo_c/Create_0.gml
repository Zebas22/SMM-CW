c_title = make_colour_rgb(229, 23, 42)
c_letter = c_white
ready = 0
x_pos = x
alarm[2] = 10
hspeed = 8
switch os_get_language()
{
    case "es":
        global.idioma = 0
        break
    case "pt":
        global.idioma = 2
        break
    default:
        global.idioma = 1
        break
}
idioma = global.idioma
lng[0] = "Este es un 'Fan Game' (De fans para fans)#por lo cual no está respaldado por Nintendo.#Todas las imagenes, músicas y recursos utilizados#en este son propiedad de Nintendo."
lng[1] = "This is a \"Fan Game\" (By fans for fans)#which is not endorsed by Nintendo.#All images, music and resources used#in this They are the property of Nintendo."
lng[2] = "Este é um \"Fan Game\" (De fãs para fãs)#portanto, não é endossado pela Nintendo.#Todas as imagens, músicas e recursos usados#neste São propriedade da Nintendo."
adv[0] = "¡ADVERTENCIA!"
adv[1] = "DISCLAIMER"
adv[2] = "AVISO!"