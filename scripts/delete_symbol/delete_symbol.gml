var datos_codificados = argument0;
var longitud = string_length(datos_codificados);
if (string_char_at(datos_codificados, longitud) == "=") {
    datos_codificados = string_copy(datos_codificados, 1, longitud - 1);
}
var longitud = string_length(datos_codificados);
if (string_char_at(datos_codificados, longitud) == "=") {
    datos_codificados = string_copy(datos_codificados, 1, longitud - 1);
}
return datos_codificados