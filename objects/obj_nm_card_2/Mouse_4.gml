if (obj_makers.active == 1 && obj_panel_makers.load == 0 && y > 40)
{
    audio_play_sound(snd_aceptar, 0, false)
    obj_makers.active = 0
    with (obj_nm_card_2)
        visible = false
    with (instance_create_depth(185, 56, -13, obj_nm_card_expand2))
    {
        name = other.name
        likes = other.likes
        downloads = other.downloads
        dislikes = other.dislikes
        intentos = other.intentos
        victorias = other.victorias
        muertes = other.muertes
        apariencia = other.apariencia
		entorno = other.entorno
        etiquetas = other.etiquetas
        date = other.date
        author = other.author
        _id = other._id
        featured = other.featured
        date = other.date
        porcentaje = other.porcentaje
        completed = other.completed
        liked = other.liked
        record_name = other.record_name
        record = other.record
        nrecord = other.nrecord
        archivo = other.archivo
        with (instance_create(235, 136, obj_nm_download))
            file = other.archivo
        
    }
}


