with (instance_create((x + 8), (y + 9), obj_ventana))
{
    id_object = other
    if (global.bg_level == "castle" || global.bg_level == "ghost" || global.bg_level == "underground" || global.modo_noche == 1)
    {
        index_object1 = 36
        index_object2 = 88
    }
    else
    {
        index_object1 = 35
        index_object2 = 87
    }
    selected_1 = 1
    selected_2 = 0
    s_contorno_1 = other.wings
    s_paracaidas = other.paracaidas
}
