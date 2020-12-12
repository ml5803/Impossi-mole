/// @description Insert description here
// You can write your code in this editor

curr_bgm = noone

function playBGM(bgm_to_play){
	audio_play_sound(bgm_to_play, 0, true);
	curr_bgm = bgm_to_play
}

function playSound(sound){
	audio_play_sound(sound, 1, false);
}

playBGM(bgm)