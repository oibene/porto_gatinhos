var dx = 0, dy = guiH * .7, boxW = guiW, boxH = guiH - dy;
var dxMargin = boxW - dx *2

draw_sprite_stretched(sprColisao, 0, dx, dy, boxW, boxH);

// desenha nome em cima do texto
dx += 16; dy += 16;
draw_set_font(fDialogo);

var _name = messages[cMsg].name;
draw_text(dx, dy, _name)

// desenha texto
dy += 40; 
draw_text_ext(dx, dy, drawMsg, -1, dxMargin)