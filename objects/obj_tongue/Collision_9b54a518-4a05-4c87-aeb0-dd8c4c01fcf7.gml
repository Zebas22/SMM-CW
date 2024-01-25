if (hunger == 0 && ready == 0 && other.object_index != obj_thwomp && other.object_index != obj_grinder && other.object_index != obj_banzaibill && other.object_index != obj_bowserjr_shell && other.object_index != obj_grrrol)
{
    if (other.edible == 2)
    {
        ready = 1
        alarm[0] = 8
    }
    else
    {
        hunger = 1
        ready = 1
        alarm[0] = 8
        if (!hunger)
        {
            hunger = 1
            ready = 1
            alarm[0] = 8
            obj_yoshi2.mouthholder = 239
            obj_yoshi2.mouthsprite = other.sprite_index
            foodsprite = other.sprite_index
            foodindex = other.image_index
            foodoffset = 0
            with (other.id)
                instance_destroy()
        }
        if ((other.object_index == obj_cheepcheep || other.object_index == obj_cheepcheep2) && other.lava == 1 && global.bg_level == "castle")
            obj_yoshi2.mouthholder = 237
        else if ((other.object_index == obj_cheepcheep || other.object_index == obj_cheepcheep2) && other.lava == 1 && global.bg_level == "forest")
            obj_yoshi2.mouthholder = 238
        else if (other.object_index == obj_drybones)
        {
            obj_yoshi2.mouthholder = 268
            obj_yoshi2.mouthsprite = other.sprite_index
        }
        else if (other.object_index == obj_shell_held)
        {
            obj_yoshi2.mouthholder = 302
            obj_yoshi2.mouthsprite = other.sprite_index
        }
        else if (other.object_index == obj_koopa)
        {
            obj_yoshi2.mouthholder = 302
            obj_yoshi2.mouthsprite = 1869
        }
        else if (other.object_index == obj_koopa_red)
        {
            obj_yoshi2.mouthholder = 302
            obj_yoshi2.mouthsprite = 1871
        }
        else if (other.object_index == obj_spiny || other.object_index == obj_spiny_ball)
        {
            obj_yoshi2.mouthholder = 302
            obj_yoshi2.mouthsprite = 1894
        }
        else if (other.object_index == obj_buzzybeetle)
        {
            obj_yoshi2.mouthholder = 302
            obj_yoshi2.mouthsprite = 1889
        }
        else if (other.object_index == obj_snow_ball_held)
        {
            obj_yoshi2.mouthholder = 54
            obj_yoshi2.mouthsprite = other.sprite_index
        }
        else if (other.object_index == obj_podoboo || other.object_index == obj_podoboo_b)
        {
            obj_yoshi2.mouthholder = 237
            obj_yoshi2.mouthsprite = other.sprite_index
        }
        if (other.object_index == obj_snow_ball_held)
            foodsprite = 1913
        else
            foodsprite = other.sprite_index
        direct_sprite = other.direct
        foodindex = other.image_index
        with (other.id)
            other.foodoffset = (((bbox_left + bbox_right) / 2) - x)
        with (other.id)
            instance_destroy()
    }
}

