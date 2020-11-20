/// @description Insert description here
// You can write your code in this editor

x += xspd
y += yspd
image_angle += rot

//shrink
image_xscale -= size_decay
image_yscale -= size_decay

//decide if destroy
if (image_xscale <= 0 or image_yscale <= 0){
	instance_destroy()
}
