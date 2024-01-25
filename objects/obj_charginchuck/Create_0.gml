switch global.apariencia
{
    case 0:
        s_charginchuck = spr_SMB_charginchuck
        s_charginchuck_walk = spr_SMB_charginchuck_walk
        s_charginchuck_jump = spr_SMB_charginchuck_jump
        s_charginchuck_damage = spr_SMB_charginchuck_damage
		s_charginchuck_damage_recover = spr_SMB_charginchuck_damage
        sprite_index = spr_SMB_charginchuck
        sprite_wings = spr_SMB_wings
        break
    case 1:
        s_charginchuck = spr_SMB3_charginchuck
        s_charginchuck_walk = spr_SMB3_charginchuck_walk
        s_charginchuck_jump = spr_SMB3_charginchuck_jump
        s_charginchuck_damage = spr_SMB3_charginchuck_damage
		s_charginchuck_damage_recover = spr_SMB_charginchuck_damage
        sprite_index = spr_SMB3_charginchuck
        sprite_wings = spr_SMB3_wings
        break
    case 2:
        s_charginchuck = spr_charginchuck
        s_charginchuck_walk = spr_charginchuck_walk
        s_charginchuck_jump = spr_charginchuck_jump
        s_charginchuck_damage = spr_charginchuck_damage
		s_charginchuck_damage_recover = spr_SMB_charginchuck_damage
		sprite_index = spr_charginchuck
        sprite_wings = spr_wings
        break
}

hardness = 0
stomp = 0
edible = 2
direct = 1
hp = 3
firehp = 5
lookout = -1
swimming = 0
wings = 0
wings_anim = 0
paracaidas = 0
apilar = 0
dead_h = 0
innave = 0
image_speed = 0.15
alarm[0] = 6
alarm[10] = 60

