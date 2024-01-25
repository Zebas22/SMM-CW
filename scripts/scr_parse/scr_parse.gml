var longitud = string_length(argument0);
    var mitad = longitud / 2;
    
    if (argument1 == 0) {
        mitad = string_copy(argument0, 1, mitad);
    } else {
        mitad = string_copy(argument0, mitad + 1, longitud - mitad);
    }
    return mitad;