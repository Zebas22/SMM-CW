image_speed = 0
image_index = 0
type = 0
if global.idioma = 0{
text[0] = "Hoy"
text[1] = "Ultimos 2 dias"
text[2] = "Ultimos 3 dias"
text[3] = "Ultimos 4 dias"
text[4] = "Ultimos 5 dias"
text[5] = "Ultimos 6 dias"
text[6] = "Ultima semana"
text[7] = "Ultimo mes"
}
else if global.idioma = 1{
text[0] = "Today"
text[1] = "Last 2 days"
text[2] = "Last 3 days"
text[3] = "Last 4 days"
text[4] = "Last 5 days"
text[5] = "Last 6 days"
text[6] = "Last week"
text[7] = "Last month"	
}
else if global.idioma = 2{
text[0] = "Oggi"
text[1] = "Ultimi 2 giorni"
text[2] = "Ultimi 3 giorni"
text[3] = "Ultimi 4 giorni"
text[4] = "Ultimi 5 giorni"
text[5] = "Ultimi 6 giorni"
text[6] = "Ultima settimana"
text[7] = "Ultimo mese"	
}
text_data[0] = "1d"
text_data[1] = "2d"
text_data[2] = "3d"
text_data[3] = "4d"
text_data[4] = "5d"
text_data[5] = "6d"
text_data[6] = "7d"
text_data[7] = "30d"
data = ""
press = 0
alarm[0] = 5


