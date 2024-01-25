image_speed = 0
ready = 0
omitir = 0
alarm[0] = 20
alarm[2] = 230
date = 0
alpha = 0
day[0] = "DOMINGO"
day[1] = "SUNDAY"
day[2] = "DOMINGO"
lingua = global.idioma
if (current_day == 31 && current_month == 10)
{
    day[0] = "¡Feliz Halloween!"
    day[1] = "Happy Halloween!"
    day[2] = "Feliz Halloween!"
}
else if (current_day == 24 && current_month == 12)
{
    day[0] = "¡Feliz Nochebuena!"
    day[1] = "Merry Christmas Eve!"
    day[2] = "Feliz véspera de Natal!"
}
else if (current_day == 25 && current_month == 12)
{
    day[0] = "¡Feliz Navidad!"
    day[1] = "Merry Christmas!"
    day[2] = "Feliz Natal!"
}
else if (current_day == 1 && current_month == 1)
{
    day[0] = "¡Feliz Año Nuevo!"
    day[1] = "Happy new year!"
    day[2] = "Feliz Ano Novo!"
}
else
{
    switch current_weekday
    {
        case 0:
            day[0] = "Ya es DOMINGO, ¡A hacer niveles se ha dicho!"
            day[1] = "It's already SUNDAY, Let's make levels!"
            day[2] = "Já é DOMINGO, vamos fazer níveis!"
            break
        case 1:
            day[0] = "LUNES"
            day[1] = "MONDAY"
            day[2] = "SEGUNDA-FEIRA'"
            break
        case 2:
            day[0] = "MARTES"
            day[1] = "TUESDAY"
            day[2] = "TERCA-FEIRA'"
            break
        case 3:
            day[0] = "MIERCOLES"
            day[1] = "WEDNESDAY"
            day[2] = "QUARTA-FEIRA'"
            break
        case 4:
            day[0] = "JUEVES"
            day[1] = "THURSDAY"
            day[2] = "QUINTA-FEIRA'"
            break
        case 5:
            day[0] = "VIERNES"
            day[1] = "FRIDAY"
            day[2] = "SEXTA-FEIRA'"
            break
        case 6:
            day[0] = "SABADO"
            day[1] = "SATURDAY"
            day[2] = "SABADO"
            break
    }

}