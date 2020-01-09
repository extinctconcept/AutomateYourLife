/// @description Insert description here
// You can write your code in this editor

vsp = vsp  + grv;


//Horizontal collision 
if(place_meeting(x+hsp,y,o_Wall)){
	
	while(!place_meeting(x+sign(hsp),y,o_Wall)){
		x = x + sign(hsp);
	}
	hsp = -hsp;
	vsp = -15	
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

sprite_index = spr_badGuy1;
image_speed = 0;
if(sign(vsp) > 0){ image_index = 0; }
else{ image_index = 1;}


//change directions when moving
if (hsp !=0){
	image_xscale = sign(hsp);
}
