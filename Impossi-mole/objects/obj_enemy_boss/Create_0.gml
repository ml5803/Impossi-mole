/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

damage = 1

life_max = 3000

life = 3000

life_disp = life

hp_draw_w = 600
hp_draw_h = 12

hp_draw_x = x - hp_draw_w/2
hp_draw_y = y + 40

dig_str = 50

go_to = irandom_range(0, 3)

recharge_mode = false
// the best time to attack
// the boss is when it is
// recharging

frame = 0

phase_1_frame = 0
switch_direction_time = 4 * room_speed

phase_2_frame = 0
spawn_delay_time = 10 * room_speed

phase_3_frame = 0
teleport_delay_time = 8 * room_speed
guard_1 = pointer_null
guard_2 = pointer_null

start_recharge = 5 * room_speed
recharge_duration = 1 * room_speed

boss_phase = 1
// phase 1
// the boss moves randomly around and destroys
// tiles as it does not yet view the mole as
// a threat, it still can damage the mole if it
// touches it though
// damage it enough to move onto the next phase
// before it ruins the map too much for navigation

// phase 2
// the boss is now annoyed by the mole
// it stops moving and calls a worm to spawn at
// its location every certain amount of time
// there is no cap on worm spawning so the player should
// destroy worms to avoid the map getting filled with them
// the boss lose health with every worm it spawns
// so this phase can either end by focusing on the worms
// or damaging the boss itself

// phase 3
// the boss now feels threathened by the mole so it wants
// to guard itself
// it places two invincible enemies at its location
// and teleports them back to it after every certain amount of time
// attack the boss when its guards are far away and it is recharging
// the guards are faster at moving left and right
// than the normal variant of the enemy

// phase 4
// the boss is now desparate and releases it guards from
// returning to it
// it will chase the mole and destroy every tile in its path
// attack the boss when it stops to recharge

