/// @description Insert description here
// You can write your code in this editor

key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);

var move = key_right - key_left;

hsp = move * walksp;
vsp = vsp  + grv;

 if(place_meeting(x, y + 1, o_Wall)) {
	jumpCurr = jumpNum;
 }
 
 if (key_jump && jumpCurr > 0) {
	jumpCurr -= 1;
	vsp = -8;
 }


//Horizontal collision 
if(place_meeting(x+hsp,y,o_Wall)){
	
	while(!place_meeting(x+sign(hsp),y,o_Wall)){
		x = x + sign(hsp);
	}
	hsp =0;
}
x = x + hsp;

//Vertical collision 
if(place_meeting(x,y+vsp,o_Wall)){
	
	while(!place_meeting(x,y+sign(vsp),o_Wall)){
		y = y + sign(vsp);
	}
	vsp =0;
}
y = y + vsp;

//Animation 
//if(!place_meeting(x,y+1,o_Wall)){
	sprite_index = spr_player;
	image_speed = 0;
	if(sign(vsp) > 0){ image_index = 0; }
	else{ image_index = 1;}
	
//}
//else {
//	image_speed = 1
//	if (hsp == 0){
		//sprite_index = spr_player;
//	}
//	else {
//		sprite_index = spr_playerUp;
//	}
//}

//change directions when moving
if (hsp !=0){
	image_xscale = sign(hsp);
}
