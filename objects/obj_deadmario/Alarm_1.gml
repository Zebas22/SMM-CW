if instance_exists(obj_editormanager)
{
    with (obj_creator_jugar_editar)
        event_user(2)
}
else
{
    if (global.postnivel == 1)
    {
        global.checkpoint = -4
        global.checkpointroom = -4
        global.checkpoint_x = 0
        global.checkpoint_y = 0
    }
    scr_restart()
}

