direct = 0
press = 1
alarm[0] = 15
image_speed = 0
image_index = 0
image_xscale = 0.3335
image_yscale = 0.3335
effect_hover = 0
anim = 0
disabled = 0
c_color = c_dkgray
sprite_index = spr_buttons_plays
s_plays = spr_buttons_plays
s_press = spr_buttons_plays_press
switch os_get_language()
{
    case "es":
        t_crear = "Crear un nivel"
		t_desafio = "Desafio 10 marios"
		t_nm = "Niveles mundiales"
		t_guarda = "Guardabot"
        break
    case "pt":
        t_crear = "Criar um nível"
		t_desafio = "Desafio 10 marios"
		t_nm = "Níveis mundiais"
		t_guarda = "Guardarobô"
        break
    default:
		t_crear = "Create a course"
		t_desafio = "10 Mario Challenge"
		t_nm = "Course world"
		t_guarda = "Coursebot"
        break
}
text = ""