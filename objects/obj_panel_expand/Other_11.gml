with(obj_button_card_expand)
instance_destroy()	

cardValues2 = [ 
obj_bobomb_ready_res,obj_bumper_res,obj_billbanzai_red_res,obj_bowser_res,obj_checkpoint_res,obj_cheepcheep2_res,obj_claw_res,obj_door_lock_res,obj_mechakoopa_res,obj_musicblock_res,obj_platform_blue_res,
obj_pblock_res,obj_pblock2_res,obj_skewer_res,obj_spike_res,obj_spike_ball_res,obj_rocky_res,obj_monty_res,obj_pipebase_res,obj_pink_coin_res,obj_key_res,obj_firebro_res,
obj_goomba_b_res,obj_goombrat_b_res,obj_koopa_b_res,obj_koopa_red_b_res,obj_chomp_b_res,obj_muncher_b_res,obj_thwomp_b_res,obj_podoboo_b_res,obj_buzzybeetle_b_res,obj_spike_ball_b_res,obj_boomboom_b_res
];
drawValues2 = [
27,34,4,32,37,39,163,147,185,140,112,
154,182,165,151,img_ballspike,98,97,221,148,146,222,
226,227,228,229,230,231,232,233,234,img_b_ballspike,237
];
var cardXPositions = [69, 93, 117, 141, 167, 191, 215, 241, 265, 289, 313];
var cardYPositions = [26,54,82];
var cardCounter = 0;
for (var yi = 0; yi < array_length_1d(cardYPositions); yi++) {
    for (var xi = 0; xi < array_length_1d(cardXPositions); xi++) {
        var card = instance_create_depth(
            camera_get_view_x(view_get_camera(0)) + cardXPositions[xi],
            camera_get_view_y(view_get_camera(0)) + cardYPositions[yi],
             -12, obj_card_expand
        );
        
        card.obj = cardValues2[cardCounter];
        card.value = cardCounter;
        card.obj_draw = drawValues2[cardCounter];
        
        cardCounter++;
    }
}

var cardCounter = 0;
var yOffset = 33;
var sa = 1
for (var iq = 7; iq <= 9; iq++) {
    var new_instance = instance_create_depth(x + 45, y + yOffset, -12, obj_button_card_expand);
    new_instance.text = string(iq);
	new_instance.value = sa - 1;
    new_instance.image_index = sa - 1;
    yOffset += 28;
	sa += 1;

}