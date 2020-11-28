/// @description Insert description here
// You can write your code in this editor

randomize()

enum directions {top, left, right, bottom, center}

//base stats
storage_cap = 1
move_spd = 5
claw_power = 20
hp = 100

//upgrade increments
storage_inc = 1
move_spd_inc = 5
claw_power_inc = 20
hp_inc = 20

//current upgrades
storage_up = 2
move_spd_up = 2
claw_power_up = 1
hp_up = 1

//limits
storage_cap = 5
move_spd_cap = 25
claw_power_cap = 100
hp_cap = 300

//spare parts
spare_parts = 0

level_lst = [rm_level_1, rm_level_2, rm_level_3, rm_level_4, rm_level_5_final]
curr_lvl = -1