x += (xTo - x)/15;
y += (yTo - y)/15;

if(follow != noone) {
	xTo = follow.x;
	yTo = follow.y;
} 

var vm = matrix_build_lookat(x, y, -10, x, y, 0 , 0, 1, 0);


// Camera shake step event
x = clamp(x,view_w_half,room_width-view_w_half); 
y = clamp(y,view_h_half,room_width-view_h_half);

x += random_range(-shake_remain, shake_remain); 
y += random_range(-shake_remain, shake_remain);

shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));
camera_set_view_mat(camera, vm);

// parallax code below

var backdrop = layer_get_id("Background");
var background = layer_get_id("Background2");
//var foreground = layer_get_id("bkg_foreground");

layer_x(backdrop ,lerp(0, x, 0.75));
layer_x(background ,lerp(0, x, 0.4));
//layer_x(foreground ,lerp(0, x, 0.2));