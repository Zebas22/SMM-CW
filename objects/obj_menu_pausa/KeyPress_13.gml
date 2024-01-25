if ((!instance_exists(obj_settings_panel)) && ((!instance_exists(obj_nm_like_heart)) && (!instance_exists(obj_nm_dislike_heart)) || (instance_exists(obj_nm_like_heart) && obj_nm_like_heart.loading == 0 || (instance_exists(obj_nm_dislike_heart) && obj_nm_dislike_heart.loading == 0))))
    event_user(0)

