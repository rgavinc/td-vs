surface_set_target(surf);
gpu_set_blendmode(bm_add); 
//draw_sprite_ext(sBlackPixel, 0, 0, 0, room_width, room_height, 0, c_white, 0.2);
gpu_set_blendmode(bm_normal);
surface_reset_target();

#region
	surface_set_target(surf);
	with (oBasicSoldier){
		gpu_set_blendmode(bm_subtract); 
		draw_sprite_ext(sLightEffect, 0, x, y, 6, 6, 0, c_white,1);
		gpu_set_blendmode(bm_normal);
	}
	surface_reset_target();
#endregion


draw_surface(surf, 0, 0);