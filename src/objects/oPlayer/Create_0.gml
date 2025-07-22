//VARIAVEIS
_X = 0; _Y = 0;
_speed = 2;
_enter = false;

// MOVIMENTAÇÃO
move = function(){
	_x = - keyboard_check(ord("A")) + keyboard_check(ord("D"));
	_y = - keyboard_check(ord("W")) + keyboard_check(ord("S"));
	xspd = _x *_speed;  yspd = _y *_speed
	
	// COLISÃO
	if place_meeting(x, y + yspd, oColisao){
		while !place_meeting(x, y + yspd, oColisao){
			y += yspd
		}
		yspd = 0
	} y += yspd
	
	if place_meeting(x +xspd, y, oColisao){
		while !place_meeting(x +xspd, y, oColisao){
			x += xspd
		}
		xspd = 0
	} x += xspd
	
	// ANIMAÇÃO
	if (_x > 0) image_xscale = 1; if (_x < 0) image_xscale = -1;
	if (_x != 0 || _y != 0) sprite_index = player_walk else sprite_index = player_idle;
	image_speed = 1;
	
	// COLISAO DE CAMERA
	_enter = place_meeting(x, y, oZoom);
}

