/// @description Insert description here
// You can write your code in this editor

x = spr_player.x;
y = spr_player.y-10;

//change the angle of the gun
image_angle = point_direction(x,y,mouse_x,mouse_y);

fireDelay = fireDelay -1;

if(mouse_check_button(mb_left)) && (fireDelay < 0){
	fireDelay = 5;
	with( instance_create_layer(x,y,"bullet", o_Bullet)){
		speed = 25;
		direction = other.image_angle;
		image_angle	 = direction;
	}
}