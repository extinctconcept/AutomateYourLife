/// @description Insert description here
// You can write your code in this editor

x = spr_playerC.x;
y = spr_playerC.y-10;

//change the angle of the gun
var controllerH = gamepad_axis_value(0,gp_axislh);
var controllerV = gamepad_axis_value(0,gp_axislv);

if(abs(controllerH)> 0.2) || (abs(controllerV) > 0.2){
	controllerAngle = point_direction(0,0,controllerH,controllerV);
}
image_angle = controllerAngle;


fireDelay = fireDelay -1;
recoil = max(0,recoil -1);

if(gamepad_button_check_pressed(0,gp_shoulderrb)) && (fireDelay < 0){
	recoil=4;
	fireDelay = 5;
	with( instance_create_layer(x,y,"bullet", o_BulletC)){
		speed = 25;
		direction = other.image_angle + random_range(-3,3);
		image_angle	 = direction;
	}
}

x = x - lengthdir_x(recoil,image_angle);
y = y - lengthdir_y(recoil,image_angle);

if (image_angle > 90) && (image_angle < 270){
	image_yscale = -1;
}
else{
	image_yscale = 1;
}