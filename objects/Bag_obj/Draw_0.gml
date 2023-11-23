// Desenhando-se sem paper
if (!instance_exists(Paper01_obj)) draw_self();
// Desenhando com  a existência do obj paper
if (instance_exists(Paper01_obj) && Paper01_obj.showup == false) draw_self();