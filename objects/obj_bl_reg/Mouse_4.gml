if (instance_exists(obj_lun_reg) && instance_exists(obj_lp_reg) && instance_exists(obj_lp2_reg) && obj_lun_reg.new_texto != "" && obj_lun_reg.new_texto != " " && obj_lp_reg.new_texto != "" && obj_lp_reg.new_texto != " " && obj_lp2_reg.new_texto != "" && obj_lp2_reg.new_texto != " " && obj_lp_reg.new_texto == obj_lp2_reg.new_texto && (!instance_exists(obj_toast)) && press == 0 && time == 0)
{
    if has_internet()
    {
        audio_play_sound(snd_aceptar, 0, false)
        image_index = 1
        press = 1
        mensaje = ""
        codigo = ""
        alarm[2] = 500
        alarm[1] = 10
		
    }
    else
    {
        mensaje = "There is no Internet conection"
    }
}
else
    audio_play_sound(snd_wrong, 0, false)
