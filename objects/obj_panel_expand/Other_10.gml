with(obj_card_expand){
instance_destroy()	
}
with(obj_button_card_expand){
instance_destroy()	
}
cardValues = [
    obj_block_res, obj_qblock_res, obj_rock_res, obj_ground, obj_tuberia_res, obj_mushroom_res, obj_coin_res, obj_goomba_res, obj_koopa_res, obj_fireflower_res,
    obj_pplant_res, obj_cap_res, obj_spiny_res, obj_platform_res, obj_spring_res, obj_star_res, obj_1up_res, obj_bullebill_base_res, obj_blooper_res, obj_cheepcheep_res,
    obj_pinchos_res, obj_semisolid_platform1, obj_hammerbro_res, obj_buzzybeetle_res, obj_thwomp_res, obj_podoboo_res, obj_bowserjr_res, obj_noteblock_res, obj_lava_lift_res,
    obj_firebar_res, obj_bobomb_res, obj_donut_res, obj_pow_res, obj_nube_res, obj_cannon_res, obj_puente_res, obj_boo_res, obj_drybones_res, obj_magikoopa_res, obj_block_hidden_res,
    obj_vine_res, obj_pswitch_res, obj_door_res, obj_oneway_res, obj_muncher_res, obj_floruga_res, obj_mushroom_platform_res, obj_arrow_res, obj_grinder_res, obj_chomp_res,
    obj_ice_res, obj_spring_land_res, obj_goombrat_res, obj_koopa_red_res, obj_plant_fire_res, obj_billbanzai_res, obj_boomboom_res, obj_bullebill_base_red_res, obj_cannon_red_res,
    obj_coin10_res, obj_coin30_res, obj_coin50_res, obj_fast_lava_lift_res, obj_onoffblock_res, obj_onoffplatform_res, obj_onoffplatform_blue_res
];

drawValues = [
    img_block, 93, img_rock, img_ground, img_pipes, 96, 46, 69, 94, img_fireflower, 116, 113, 127, 111, 128, 130, 0, img_bullet, 23, 38,
    img_pinchos, 50, 86, 35, 132, 114, 33, 102, 168, 167, img_bobomb, img_donut, 115, img_cloud_block, 155, img_puente, 28, 56, 145, img_hidden_block,
    149, 117, 54, 105, img_muncher, 158, 90, 1, 71, img_chomp, 16, 129, 70, 95, 110, img_billbanzai, 30, 7, 157, 47, 48, 49, 169, 15, 13, 14
];

var cardXPositions = [69, 93, 117, 141, 167, 191, 215, 241, 265, 289, 313];
var cardYPositions = [26, 54, 82, 110, 138, 166];

var cardCounter = 0;

for (var yi = 0; yi < array_length_1d(cardYPositions); yi++) {
    for (var xi = 0; xi < array_length_1d(cardXPositions); xi++) {
        var card = instance_create_depth(
            camera_get_view_x(view_get_camera(0)) + cardXPositions[xi],
            camera_get_view_y(view_get_camera(0)) + cardYPositions[yi],
            -12, obj_card_expand
        );
        
        card.obj = cardValues[cardCounter];
        card.value = cardCounter;
        card.obj_draw = drawValues[cardCounter];
        
        cardCounter++;
    }
}
instance_create_depth(x + 45, y + 33, -12, obj_button_card_expand)
var yOffset = 61;
for (var iq = 2; iq <= 6; iq++) {
    var new_instance = instance_create_depth(x + 45, y + yOffset, -12, obj_button_card_expand);
    new_instance.text = string(iq);
	new_instance.value = iq - 1;
    new_instance.image_index = iq - 1;
    yOffset += 28;
}