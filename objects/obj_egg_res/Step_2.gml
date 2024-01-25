if (obj_levelmanager.editor == 1)
{
    switch global.apariencia
    {
        case 0:
            sprite_index = spr_SMB_shoe_res
           w_sprite = spr_wings_editor
            wings_x = 20
            wings_y = 20
			wings = 0
            break
        case 1:
            sprite_index = spr_shoe_res
           w_sprite = spr_wings_editor
            wings_x = 20
            wings_y = 20
			wings = 0
            break
        case 2:
			sprite_index = spr_egg
            w_sprite = spr_wings_editor_16x16
            wings_x = 0
            wings_y = 0
            break
    }

}
