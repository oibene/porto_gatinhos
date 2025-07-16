//VARIAVEIS
_X = 0; _Y = 0;
_speed = 1.5

// MOVIMENTAÇÃO
move = function(){
	_X = - keyboard_check(ord("A")) + keyboard_check(ord("D"));
	_Y = - keyboard_check(ord("W")) + keyboard_check(ord("S"));
	
	
	// COLISÃO
	if !place_meeting(x, y + _Y, oColisao) y += _Y *_speed;
	if !place_meeting(x + _X, y, oColisao) x += _X *_speed;
	
	// ANIMAÇÃO
	if (_X > 0) image_xscale = 1; if (_X < 0) image_xscale = -1;
	if (_X != 0 || _Y != 0) sprite_index = player_walk else sprite_index = player_idle;
	image_speed = 1;
}

