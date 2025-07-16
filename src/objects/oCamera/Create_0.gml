// VARIAVEIS
screenW = display_get_width(); screenH = display_get_height();
scale = 1.25

//DEFININDO TAMANHO DE TELA
window_set_size(screenW /scale, screenH /scale); window_center();

// DEFININDO ZOOM DA CAMERA
view_camera[0] = camera_create();
camera_set_view_size(view_camera[0], screenW *.25, screenH *.25)