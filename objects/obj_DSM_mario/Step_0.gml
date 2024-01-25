if (loading != 0)
    rot -= 8
if (x >= obj_DSM_level.x && ready == 0) {
    hspeed = 0;
    vspeed = 0;
	alarm[0] = 5
	ready = 1
}
else if ((global.DSM_level == 0 || global.DSM_level == 5) && x < obj_DSM_level.x) {
    hspeed = 1;
}
else if ((global.DSM_level == 1 || global.DSM_level == 3) && x < obj_DSM_level.x) {
    hspeed = 1;
    vspeed = -1;
}
else if ((global.DSM_level == 2 || global.DSM_level == 4) && x < obj_DSM_level.x) {
    hspeed = 1;
    vspeed = 1;
}