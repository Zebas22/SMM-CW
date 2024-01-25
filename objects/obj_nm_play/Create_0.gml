event_inherited()
image_xscale = 0.3334
image_yscale = 0.3334
if(room == rm_makers){
depth = -14	
}
canpress = 0
c_text = make_color_rgb(0,153,141)
text = "Play"
switch global.idioma
{
	case 0:
		text = "Jugar"
	break
	case 2:
		text = "Jogar"
	break
	default:
		text = "Play"
	break
}
anim = 0
rot = 0
url = ""
dont = 0
time = 0
alarm[2] = 15


