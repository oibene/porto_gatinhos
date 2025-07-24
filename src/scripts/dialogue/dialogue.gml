function dialogue(_messages){
	if (instance_exists(oTextBox)) return;
	
	//cria textbox quando for apagada tambem
	var _inst = instance_create_depth(0, 0, 0, oTextBox);
	
	_inst.messages = _messages;
	_inst.cMsg = 0;
}