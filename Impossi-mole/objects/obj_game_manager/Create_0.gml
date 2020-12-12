/// @description Insert description here
// You can write your code in this editor

randomize()

enum directions {top, left, right, bottom, center}

//base stats
storage = 1
move_spd = 2
claw_power = 20
hp = 1

//upgrade increments
storage_inc = 1
move_spd_inc = 0.5
claw_power_inc = 20
hp_inc = 1

//current upgrades
storage_up = 1
move_spd_up = 1
claw_power_up = 1
hp_up = 1

//limits
storage_cap = 5
move_spd_cap = 5
claw_power_cap = 5
hp_cap = 5

//avaiable_sprites
poss_body = [spr_mole, spr_mole_up1,spr_mole_up2, spr_mole_up3, spr_mole_up4]
poss_claws = [spr_mole_claws, spr_mole_claws_up1, spr_mole_claws_up2, spr_mole_claws_up3, spr_mole_claws_up4]

//sprites
body_sprite = 0
claws_sprite = 0

//spare parts
spare_parts = 100

level_lst = [rm_level_1, rm_level_2, rm_level_3, rm_level_4, rm_level_5_final]
curr_lvl = 0