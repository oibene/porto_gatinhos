// VARIAVEIS
screenW = 1280; screenH = 720;
scale = 1.25;
zoomMax = .25; zoomMin = zoomMax /scale;
screenZoomW = screenW *zoomMin;	screenZoomH = screenH *zoomMin;

//DEFININDO TAMANHO DE TELA
window_set_size(screenW /scale, screenH /scale); window_center();
view_camera[0] = camera_create();

// FAZENDO CAMERA SEGUIR PLAYER
camera_set_view_target(view_camera[0], oPlayer)
camera_set_view_speed(view_camera[0], 1, 1)
camera_set_view_border(view_camera[0], screenW /2, screenH /2);

// DEFININDO ZOOM DA CAMERA
camera_set_view_size(view_camera[0], screenZoomW, screenZoomH)

_zoom = function (){
	if (oPlayer._enter){
		screenZoomW += ((screenW * zoomMin) - screenZoomW) /10
		screenZoomH += ((screenH * zoomMin) - screenZoomH) /10
	}
	if (!oPlayer._enter){
		screenZoomW += ((screenW * zoomMax) - screenZoomW) /10
		screenZoomH += ((screenH * zoomMax) - screenZoomH) /10
	}
	camera_set_view_size(view_camera[0], screenZoomW, screenZoomH)
}




