image_speed = 1.3
value = 0
header = 0
draw_circles_1 = 0
draw_circles_2 = 0
circle_1 = 0
circle_2 = 0
img_1up = 0
img_pipes = 134
img_mushroom_platform = 90
img_semisolid_platform = 50
img_puente = 118
img_cloud_block = 103
img_fireflower = 61
img_cap = 113
img_donut = 53
img_hidden_block = 11
img_buzzy = 35
img_buzzy_shell = 87
img_muncher = 100
img_bobomb = 25
img_billbanzai = 2
img_chomp = 141
img_bullet = 5
img_cannon = 155
img_mazo = 164
img_pokey = 152
img_ballspike = 210
img_b_ballspike = 235
switch global.bg_level
{
    case "snow":
        if (global.modo_noche == 1)
        {
            img_ground = 85
            img_pendiente1 = 208
            img_pinchos = 109
            img_block = 68
            img_rock = 22
            img_cloud_block = 177
            img_donut = 181
        }
        else
        {
            img_ground = 84
            img_pendiente1 = 207
            img_pinchos = 108
            img_block = 67
            img_rock = 21
            img_cloud_block = 176
            img_donut = 180

        }
		img_ballspike = 211
		img_b_ballspike = 236
        img_pokey = 153
        break
    case "desert":
        img_ground = 83
        img_pendiente1 = 206
        img_pinchos = 106
        img_block = 64
        img_rock = 17
        break
    case "sky":
        img_ground = 82
        img_pendiente1 = 205
        img_pinchos = 106
        img_block = 64
        if (global.apariencia == 0)
            img_rock = 19
        else
            img_rock = 21
        break
    case "forest":
        img_ground = 81
        img_pendiente1 = 204
        img_pinchos = 106
        img_block = 64
        img_rock = 17
        img_hidden_block = 10
        break
    case "airship":
        if (global.modo_noche == 1)
        {
            img_ground = 80
            img_pendiente1 = 203
        }
        else
        {
            img_ground = 79
            img_pendiente1 = 202
        }
        img_pinchos = 106
        img_block = 66
        if (global.apariencia == 0)
            img_rock = 19
        else
            img_rock = 21
        break
    case "ghost":
        img_ground = 78
        img_pendiente1 = 201
        img_pinchos = 106
        img_block = 65
        img_rock = 18
        img_hidden_block = 12
        break
    case "underwater":
        if (global.modo_noche == 1)
        {
            img_ground = 77
            img_pendiente1 = 200
        }
        else
        {
            img_ground = 76
            img_pendiente1 = 199
        }
        img_pinchos = 107
        img_block = 64
        img_rock = 20
        img_hidden_block = 8
        img_cloud_block = 104
        break
    case "castle":
        if (global.modo_noche == 1)
        {
            img_ground = 75
            img_pendiente1 = 198
        }
        else
        {
            img_ground = 74
            img_pendiente1 = 197
        }
        img_pinchos = 106
        img_block = 66
        img_rock = 19
        img_cloud_block = 175
        img_donut = 179
        break
    case "underground":
        img_ground = 73
        img_pendiente1 = 196
        img_pinchos = 106
        img_block = 65
        img_rock = 18
        img_hidden_block = 12
        break
    case "ground":
        img_ground = 72
        img_pendiente1 = 195
        img_pinchos = 106
        img_block = 64
        img_rock = 17
        break
    case "fall":
        img_ground = 227
        img_pendiente1 = 195
        img_pinchos = 106
        img_block = 64
        img_rock = 17
        break
    case "beach":
        img_ground = 226
        img_pendiente1 = 195
        img_pinchos = 106
        img_block = 64
        img_rock = 17
        break
}

if (global.bg_level == "castle" || global.bg_level == "ghost" || global.bg_level == "underground" || global.modo_noche == 1)
{
    img_buzzy = 36
    img_buzzy_shell = 88
    img_muncher = 101
    img_billbanzai = 3
    img_chomp = 142
    img_bobomb = 26
    img_bullet = 6
    img_cannon = 156
    img_mazo = 165
}
if (global.bg_level == "ghost" || global.bg_level == "underground" || (global.modo_noche == 1 && global.bg_level != "snow" && global.bg_level != "castle"))
{
    img_cloud_block = 174
    img_donut = 178
}
if (global.modo_noche == 1 && global.bg_level != "underwater")
    img_hidden_block = 12
if (global.modo_noche == 1 && global.bg_level == "ground")
    img_1up = 123