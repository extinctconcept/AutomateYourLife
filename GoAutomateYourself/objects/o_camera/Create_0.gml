/// @description Camera object

camera = camera_create();

var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
var pm = matrix_build_projection_ortho(960, 540, 1, 32000);

camera_set_view_mat(camera,vm);
camera_set_proj_mat(camera,pm);


// Set the camera to camera settings above
view_camera[0] = camera;

// variable to follow player obj
follow = o_Player;
xTo = x;
yTo = y;

// Screenshake
view_w_half = camera_get_view_width(camera) * 0.5;
view_h_half = camera_get_view_height(camera) * 0.5;

shake_length = 0;
shake_magnitude = 0;
shake_remain = 0;
buff = 32;