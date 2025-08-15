anchorY = 120;
frequency = 0.075;
amplitude = 4;
timer = 0;

destroy = function(){
	instance_destroy()
}

animate = function(){
	// codigo roubadinho
	
	y = anchorY + sin(timer*frequency)*amplitude;
	timer++;
}