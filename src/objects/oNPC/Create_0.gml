//VARIAVEIS
interage = function() {
	
	if (place_meeting(x, y, oPlayer))
	{
		
		if (!instance_exists(oButtonE) and !instance_exists(oTextBox)){ 
			// gera botao flutuante e faz ele desaparecer
			instance_create_depth(x +16, y -8, -1, oButtonE);}
		
		if (keyboard_check(ord("E"))){
			// apaga botao flutuante ao ser utilizado
			if (instance_exists(oButtonE)) oButtonE.destroy()
			
			dialogue([
			{
				name: "Mae",
				msg: "Oiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii"
			},
			{
				name: "Mae",
				msg: "Hihi"
			}
			])
		}
		
	} else if (instance_exists(oButtonE)) oButtonE.destroy()
	// apaga ele quando sai da area
}