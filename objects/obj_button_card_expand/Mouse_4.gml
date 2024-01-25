var num_cards, start_i, end_i;
if (obj_levelmanager.editor == 1)
{
	with (obj_card_item)
    {
        if (value == 0)
            other.id_card_0 = id
        if (value == 1)
            other.id_card_1 = id
        if (value == 2)
            other.id_card_2 = id
        if (value == 3)
            other.id_card_3 = id
        if (value == 4)
            other.id_card_4 = id
        if (value == 5)
            other.id_card_5 = id
        if (value == 6)
            other.id_card_6 = id
        if (value == 7)
            other.id_card_7 = id
        if (value == 8)
            other.id_card_8 = id
        if (value == 9)
            other.id_card_9 = id
		if (value == 10)
            other.id_card_10 = id
    }
switch (value) {
    case 0:
        num_cards = 10;
        start_i = 0;
        end_i = num_cards;
        break;
    case 1:
        num_cards = 21;
        start_i = 11;
        end_i = num_cards;
        break;
    case 2:
        num_cards = 32;
        start_i = 22;
        end_i = num_cards;
        break;
    case 3:
        num_cards = 43;
        start_i = 33;
        end_i = num_cards;
        break;
    case 4:
        num_cards = 54;
        start_i = 44;
        end_i = num_cards;
        break;
    default:
        num_cards = 65;
        start_i = 55;
        end_i = num_cards;
        break;
}
var id_cards = array_create(11); // Crear un array de 11 elementos
id_cards[0] = id_card_0;
id_cards[1] = id_card_1;
id_cards[2] = id_card_2;
id_cards[3] = id_card_3;
id_cards[4] = id_card_4;
id_cards[5] = id_card_5;
id_cards[6] = id_card_6;
id_cards[7] = id_card_7;
id_cards[8] = id_card_8;
id_cards[9] = id_card_9;
id_cards[10] = id_card_10;
if(obj_panel_expand.value == 0){
	var news = obj_panel_expand.cardValues
	var news2 = obj_panel_expand.drawValues

}
else{
	var news = obj_panel_expand.cardValues2
	var news2 = obj_panel_expand.drawValues2
}
var ix = 0;
for (var i = start_i; i <= end_i; i++) {
    var current_id = id_cards[ix]; // Obtenemos el ID del array
    with (current_id) {
        obj = news[i];
        obj_draw = news2[i];
    }
    ix++;
}		
		with (obj_cursor)
        {
            alarm[0] = 15
        }
        audio_play_sound(snd_select_tile, 0, false)
        with (obj_cursor)
        {
            if (cont_panel_right == 3)
                cont_panel_right = 2
            if (cont_panel_left == 3)
                cont_panel_left = 2
            if (cont_panel_top == 3)
                cont_panel_top = 2
            cont_panel_creator = 2
        }
        if (obj_persistent.modo_android == 1)
            obj_creator_jugar_editar.visible = true
        obj_expand.visible = true
        with (obj_panel_expand)
            instance_destroy()
}
