global.scroll_perc = (button_y / bar_height)
if (instance_number(obj_nm_card) > 2 && obj_nivelesmundiales.active == 1)
{
    if (active == 0)
    {
        if mouse_wheel_up()
        {
            if (mouse_x < x)
                button_y -= scroll_amount
        }
        else if mouse_wheel_down()
        {
            if (mouse_x < x)
                button_y += scroll_amount
        }
    }
    else if (active == 1)
        button_y = (mouse_y - y)
}
button_y = clamp(button_y, 0, bar_height)

if instance_exists(obj_nm_course_theme)
	visible = 0
else
	visible = 1
