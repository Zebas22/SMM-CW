var _cal;
if instance_exists(obj_editormanager)
{
    _cal = (sprite_get_yoffset(sprite_index) - sprite_get_bbox_top(sprite_index))
    if (bbox_bottom > room_height)
    {
        y = (room_height - 16)
        if (vspeed > 0)
            vspeed = 0
    }
    else if ((y + _cal) <= 0)
    {
        y += _cal
        if (vspeed < 0)
            vspeed = 0
    }
    if (bbox_right > room_width)
    {
        x = (room_width - 16)
        if (hspeed > 0)
            hspeed = 0
    }
    else if (bbox_left <= 0)
    {
        x = 0
        if (hspeed < 0)
            hspeed = 0
    }
}