// VARIAVEIS
screenW = 1280; screenH = 640;
scale = 1.75;

//DEFININDO TAMANHO DE TELA
window_set_size(screenW /scale, screenH /scale); window_center();

// DEFININDO ZOOM DA CAMERA
view_camera[0] = camera_create();
camera_set_view_size(view_camera[0], screenW *.25, screenH *.25)