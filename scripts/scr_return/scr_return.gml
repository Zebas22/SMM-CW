
	if (global.lives22 == 0)
	    room_goto(rm_gameover)
	else
	{
	    global.coins = 0
	    score = 0
	    room_goto(rm_title)
	}



