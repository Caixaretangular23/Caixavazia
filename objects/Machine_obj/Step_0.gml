// Controles
left = keyboard_check_pressed(vk_left);
right = keyboard_check_pressed(vk_right);

// Movimento

if (right) sprite_index = DR_spr;
if (left) sprite_index = DL_spr;

// Cotrolando a Animação

if (image_index >= 3) sprite_index = Default_spr;
