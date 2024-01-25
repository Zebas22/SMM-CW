if (pos_cal == 1 && other.id != id)
{
    with (other.id)
    {
        if (object_index == obj_ground)
        {
            event_user(2)
            instance_create(x, y, obj_tile_trigger)
        }
        else if (object_index != obj_platform_res && object_index != obj_platform_blue_res && object_index != obj_vine_res && object_index != obj_semisolid_platform1 && object_index != obj_mushroom_platform_res && object_index != obj_door_res && object_index != obj_door_exit_res && object_index != obj_door_switch_res && object_index != obj_door_switch_exit_res && object_index != obj_door_lock_exit_res && object_index != obj_door_lock_res)
            instance_destroy()
    }
}
else if (drag == 0 && other.drag == 0)
{
    if (other.object_index == obj_mushroom_res || other.object_index == obj_fireflower_res || other.object_index == obj_superflower_res || other.object_index == obj_hen_mushroom_res || other.object_index == obj_cap_res || other.object_index == obj_1up_res || other.object_index == obj_star_res || other.object_index == obj_egg_res || other.object_index == obj_egg_red_res || other.object_index == obj_buzzy_shell_res || other.object_index == obj_spiny_shell_res || other.object_index == obj_coin_res || other.object_index == obj_spring_res || other.object_index == obj_pswitch_res || other.object_index == obj_pow_res || other.object_index == obj_buzzy_shell_res || other.object_index == obj_spiny_shell_res || other.object_index == obj_koopa_res || other.object_index == obj_koopa_red_res || other.object_index == obj_buzzybeetle_res || other.object_index == obj_spiny_res || other.object_index == obj_cheepcheep_res || other.object_index == obj_cheepcheep2_res || other.object_index == obj_goomba_res || other.object_index == obj_goombrat_res || other.object_index == obj_bobomb_res || other.object_index == obj_bobomb_ready_res || other.object_index == obj_hammerbro_res || other.object_index == obj_monty_res || other.object_index == obj_pplant_res || other.object_index == obj_plant_fire_res || other.object_index == obj_drybones_res || other.object_index == obj_sledgebro)
    {
        audio_play_sound(snd_colocar_item_bloque, 0, false)
        color = scr_sprite_get_constant_res(other.sprite_index)
        with (other.id)
            instance_destroy()
    }
}

