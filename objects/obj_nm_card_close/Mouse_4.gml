if (press == 1 && instance_exists(obj_nm_play) && obj_nm_play.image_index == 0)
{
    audio_play_sound(snd_item_deselect, 0, false)
    with (obj_nm_card_expand)
        instance_destroy()
    with (obj_nm_card)
        visible = true
    with (obj_nivelesmundiales)
        alarm[1] = 10
    if (instance_exists(obj_id_input) && instance_exists(obj_id_button))
    {
        with (obj_id_input)
        {
            anim = 2
            write = 1
        }
        with (obj_id_button)
        {
            anim = 2
            image_index = 0
        }
        with (obj_creator_input)
            anim = 2
        with (obj_creator_button)
        {
            anim = 2
            image_index = 0
        }
    }
}

