/// @description Insert description here
// You can write your code in this editor

if(done == 0) {
	vsp = vsp  + grv;


	//Horizontal collision 
	if(place_meeting(x+hsp,y,o_Wall)){
	
		while(!place_meeting(x+sign(hsp),y,o_Wall)){
			x = x + sign(hsp);
		}
		hsp = 0;
	
	}
	x = x + hsp;

	//Vertical collision 
	if(place_meeting(x,y+vsp,o_Wall)){
		
		if(vsp > 0	){
			done = 1;
			image_index = 1;
		}
		while(!place_meeting(x,y+sign(vsp),o_Wall)){
			y = y + sign(vsp);
		}
		vsp =0;
	}
	y = y + vsp;
}