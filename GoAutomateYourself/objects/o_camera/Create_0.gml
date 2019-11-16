//Creating camera
camera = camera_create();

//Define where in 3D space our camera is located, where it looks at and what is up for it
var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);

//Create ortho projection (for 2D)
var pm = matrix_build_projection_ortho(1920,1080,1,10000);

//Applying these matrices to our camera
camera_set_view_mat(camera,vm);
camera_set_proj_mat(camera,pm);

//Assign a camera to a viewport (where to render camera's output)
view_camera[0] = camera;
    
//Assign to follow something
follow = o_Player;

//Enable smart follow affected by mouse
xTo = x;
yTo = y;