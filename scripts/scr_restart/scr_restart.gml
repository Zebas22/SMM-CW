
	if (global.lives22 == 0 && room != rm_title && room != rm_guardabot and room != rm_niveles_mundiales and room != rm_course_world and global.dsm = 1)
	    room_goto(rm_gameover)
	else
	{
	    global.coins = 0
	    score = 0
	    global.powerup = 0
	    global.timer = 0
	    global.onoffblock = 0
	    if global.dsm != 1
			global.liveleves = 0
	    global.keys = 0
	    global.ms = 0
		room_restart()
	}


