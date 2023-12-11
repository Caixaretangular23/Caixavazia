// Tremindo

Ax = irandom_range(-For,For);
Ay = irandom_range(-For, For);

camera_set_view_pos(view_camera[0], Camx + Ax, Camy + Ay);

For -= .5;

// Terminando

if (For <= 0) instance_destroy();


