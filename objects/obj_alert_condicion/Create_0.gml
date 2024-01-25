image_speed = 0
image_index = 0
cond_count = global.condiciones_count
idioma = global.idioma
if global.idioma = 0{
texto[0] = "Llega a la meta sin recibir daño"
texto[1] = "Llega a la meta sin tocar el suelo una vez que #hayas separado los pies de él"
texto[2] = "Llega a la meta sin salir del agua"
texto[3] = "Llega a la meta sin recoger ninguna moneda"
}
else if global.idioma = 1{
texto[0] = "Reach the goal without taking damage"
texto[1] = "Reach the goal without landing after leaving the ground"
texto[2] = "Reach the goal without getting out of the water"
texto[3] = "Reach the goal without collecting any coin"
}
else if global.idioma = 2{
texto[0] = "Raggiungi l'obiettivo senza subire danni"
texto[1] = "Raggiungi l'obiettivo senza toccare terra dopo #aver separato i piedi da essi"
texto[2] = "Raggiungi l'obiettivo senza uscire dall'acqua"
texto[3] = "Raggiungi l'obiettivo senza prendere nessuna moneta"
}
else if global.idioma = 3{
texto[0] = "Alcance a meta sem sofrer danos"
texto[1] = "Alcance a meta sem tocar o chão depois de separar seus pés dela"
texto[2] = "Chegue à linha de chegada sem sair da água"
texto[3] = "Chegue à linha de chegada sem coletar nenhuma moeda"
}
ynp[0] = "La condición especial ya no puede cumplirse"
ynp[1] = "The special condition can no longer be met"
ynp[2] = "La condizione speciale non può più essere compiuta"
ynp[3] = "A condição especial não pode mais ser atendida"
alarm[0] = 180
start = 0
lose = 0

