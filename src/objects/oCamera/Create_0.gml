// VARIAVEIS
screenW = display_get_width(); screenH = display_get_height();
scale = 1.25
zoomMin = .19; zoomMax = .25
screenZoomW = screenW *zoomMin;	screenZoomH = screenH *zoomMin;

//DEFININDO TAMANHO DE TELA
window_set_size(screenW /scale, screenH /scale); window_center();

// DEFININDO ZOOM DA CAMERA
view_camera[0] = camera_create();
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




