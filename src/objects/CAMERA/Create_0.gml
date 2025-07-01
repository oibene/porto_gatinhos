camera_destroy(view_camera[0]);
camera = camera_create_view(0, 0,CAMERA_width, CAMERA_height, 0, player_chara.id, 5, 5, -1, -1);
view_set_camera(0 ,camera)