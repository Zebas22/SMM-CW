if (global.apariencia == 3)
        {
        audio_play_sound(snd_break, 0, false)
        }
        else if (global.apariencia == 2)
        {
        audio_play_sound(snd_break, 0, false)
        }
        else if (global.apariencia == 1)
        {
        audio_play_sound(snd_SMB3_break, 0, false)
        }
        else if (global.apariencia == 0)
        {
        audio_play_sound(snd_SMB3_break, 0, false)
        }
with (instance_create((other.x + 8), (other.y + 8), obj_shard))
    {
        if (global.apariencia == 2)
        {
        sprite_index = spr_SMB_meteorite_shard_big
        }
        else if (global.apariencia == 1)
        {
        sprite_index = spr_SMB_meteorite_shard_big
        }
        else if (global.apariencia == 0)
        {
        sprite_index = spr_SMB_meteorite_shard_big
        }
        motion_set(45, 6)
    }
    with (instance_create((other.x + 8), (other.y + 8), obj_shard))
    {
        if (global.apariencia == 2)
        {
        sprite_index = spr_SMB_meteorite_shard_big
        }
        else if (global.apariencia == 1)
        {
        sprite_index = spr_SMB_meteorite_shard_big
        }
        else if (global.apariencia == 0)
        {
        sprite_index = spr_SMB_meteorite_shard_big
        }
        motion_set(60, 6)
    }
    with (instance_create((other.x + 8), (other.y + 8), obj_shard))
    {   
        if (global.apariencia == 2)
        {
        sprite_index = spr_SMB_meteorite_shard_big
        }
        else if (global.apariencia == 1)
        {
        sprite_index = spr_SMB_meteorite_shard_big
        }
        else if (global.apariencia == 0)
        {
        sprite_index = spr_SMB_meteorite_shard_big
        }
        motion_set(120, 6)
    }
    with (instance_create((other.x + 8), (other.y + 8), obj_shard))
    {
        if (global.apariencia == 2)
        {
        sprite_index = spr_SMB_meteorite_shard_big
        }
        else if (global.apariencia == 1)
        {
        sprite_index = spr_SMB_meteorite_shard_big
        }
        else if (global.apariencia == 0)
        {
        sprite_index = spr_SMB_meteorite_shard_big
        }
        motion_set(135, 6)
    }
if ((object_index != obj_blockparent) && (object_index != obj_rockparent))
{
instance_destroy(other.id)
}
obj_meteorites_maker.meteorites_big_count = 0
