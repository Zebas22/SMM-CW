if instance_exists(obj_panel_makers) && !instance_exists(obj_nm_card_expand2)
{
    with (obj_panel_makers)
        instance_destroy()
}
if instance_exists(obj_panel_makers) && instance_exists(obj_nm_card_expand2)
{
    with (obj_nm_card_expand2)
        instance_destroy()
	obj_makers.active = 1
    with (obj_nm_card_2)
        visible = true
}

