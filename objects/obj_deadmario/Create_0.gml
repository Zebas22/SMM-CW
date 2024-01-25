sprite_index = scr_mariodead()
image_speed = 0
dead_lava = 0
audio_play_sound(scr_snd_dead(), 1, false)
global.dead_type = 0
if (global.powerup == -50)
{
    audio_stop_sound(obj_levelmanager.levelmusic)
    with (obj_levelmanager)
    {
        levelmusic = levelmusic_temp
        levelmusic_temp = 0
    }
}
with (obj_levelmanager)
{
    event_user(3)
    alarm[2] = 0
    alarm[10] = 1
    speed = 0
}
audio_stop_sound(scr_snd_starman())
audio_stop_sound(scr_music_link())
audio_stop_sound(snd_n64)
audio_stop_sound(scr_snd_skid())
audio_stop_sound(snd_pmeter)
audio_stop_sound(snd_clown_damage)
audio_stop_sound(snd_SMB3_clown_damage)
audio_stop_sound(snd_SMB3_clown_fire_charge)
audio_stop_sound(snd_clown_fire_charge)
if (global.checkpointroom == -4)
{
    global.pinkcoins_count = 0
    global.pink_coins = 0
    global.pink_coin1_x = 0
    global.pink_coin1_y = 0
    global.pink_coin2_x = 0
    global.pink_coin2_y = 0
    global.pink_coin3_x = 0
    global.pink_coin3_y = 0
    global.pink_coin4_x = 0
    global.pink_coin4_y = 0
    global.pink_coin5_x = 0
    global.pink_coin5_y = 0
    global.pink_coin6_x = 0
    global.pink_coin6_y = 0
    global.pink_coin7_x = 0
    global.pink_coin7_y = 0
    global.pink_coin8_x = 0
    global.pink_coin8_y = 0
    global.pink_coin9_x = 0
    global.pink_coin9_y = 0
    global.pink_coin10_x = 0
    global.pink_coin10_y = 0
}
if (global.checkpointroom != -4 && instance_exists(obj_checkpoint))
{
    with (obj_checkpoint)
        global.pink_coins = pink_coins
}
if (global.lives22 > 0)
    global.lives22--
if (global.nm_play != 0 && global.dsm != 1)
{
    var _str = ("token=" + global.token + "&discord_id=" + hash_encode(global.my2) + "&auth_code=" + global.my5 + "&id=" + hash_encode(global.level_id) + "&stats="+ hash_encode("muertes"))
    url = http_post_string(global.api_url + "/stages/stats", _str)
}else
if (global.nm_play != 0 && global.dsm == 1)
{
    var _str = ("token=" + global.token + "&discord_id=" + hash_encode(global.my2) + "&auth_code=" + global.my5 + "&id=" + hash_encode(global.level_id) + "&dificultad=" + string(global.DSM_dificultad)+"&vidas="+string(global.lives22))
    url = http_post_string(global.api_url + "/DSM/stats_m", _str)
}	
global.n64_music = 0
global.boss_music = 0
global.bowser_obj = 0
global.bonus_music = 0
global.bonus_obj = 0
global.ef_repeat = 0
timeup = 0
direct = 1
anim_dead2 = 0
global.powerup = 0
if (global.apariencia == 3)
{
    image_speed = 1
    alarm[0] = 40
}
else
{
    image_speed = 0
    alarm[0] = 30
}

