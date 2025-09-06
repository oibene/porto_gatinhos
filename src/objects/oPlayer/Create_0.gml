//VARIAVEIS
_X = 0; _Y = 0;
_speed = 2;
_enter = false;

// MOVIMENTAÇÃO
move = function()
{
	_x = - keyboard_check(ord("A"))
			+ keyboard_check(ord("D"));
			
	_y = - keyboard_check(ord("W"))
			+ keyboard_check(ord("S"));
			
	xspd = _x *_speed; 
	yspd = _y *_speed
	
	// COLISÃO
	
	wall = layer_tilemap_get_id("walls")
	
	if place_meeting(x, y + yspd, wall)
	{
		while not place_meeting(x, y + yspd, wall)
		{
			y += yspd
		}
		yspd = 0
	} y += yspd
	
	
	if place_meeting(x +xspd, y, wall)
	{
		while not place_meeting(x +xspd, y, wall)
		{
			x += xspd
		}
		xspd = 0
	}
	x += xspd
	
	// ANIMAÇÃO
	if _x > 0
		image_xscale = 1; 
	if _x < 0
		image_xscale = -1;
	
	if  _x != 0 || _y != 0
		sprite_index = animPlayerWalk
	else
		sprite_index = animPlayerIdle;
		
	image_speed = 1;
	
	// COLISAO DE CAMERA
	_enter = place_meeting(x, y, oZoom);
	
	// COLISAO COM OBJETOS / NPCs
	if place_meeting(x, y, oCenario)
		oPlayer.depth = 200 // layer abaixo dos objetos	
	else
		oPlayer.depth = 0 // layer acima dos objetos
	
}

