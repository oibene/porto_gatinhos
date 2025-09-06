// VARIAVEIS

//cria um array de mensagens e localiza qual mensagem sera escrita na tela
messages = [];
cMsg = -1; cChar = 0; // c = current
drawMsg = "";

charspd = .5;
guiH = oCamera.screenH; guiW = oCamera.screenW

dialogo = function()
{
	if cMsg < 0 exit; //se n tem dialogo
	
	_str = messages[ cMsg ].msg
	
	if cChar < string_length(_str)
	{
		if keyboard_check_pressed(vk_space)
			cChar = string_length(_str) //pula dialogo
		
		cChar += charspd
		drawMsg = string_copy(_str, 0, cChar) //desenha letra por letra
	}
	else {
		if keyboard_check_pressed(vk_space)
		{
			cMsg++; //pula pra proximo dialogo
			 //se chegou no fim do array se n reseta char
			if cMsg >= array_length(messages)
				instance_destroy()
			else
				cChar = 0; 
		}
	}
}