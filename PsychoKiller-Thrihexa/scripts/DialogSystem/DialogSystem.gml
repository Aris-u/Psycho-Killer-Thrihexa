// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DialogSystem(text__) constructor{
	depth = 0
	
	accept_key = keyboard_check_pressed(ord("E"))
	
	textbox_width = 200;
	textbox_height = 64
	border = 8;
	line_step = 12
	line_widh = textbox_width - border*2;
	
	page = 0;
	page_number = 0;
	text = text__
	text_lenght[0] = string_length(text[0])
	draw_char = 0;
	text_spd = 1
	
	setup = false;
	textbox_x = camera_get_view_x(view_camera[0])
	textbox_y = camera_get_view_y(view_camera[0])
	
	text_img = 0;
	text_img_spd = 6/60;
	
	static work = function(){
		
		if !setup {
			setup = true
			draw_set_font(AgencyFB)
			draw_set_valign(fa_top)
			draw_set_halign(fa_left)
			
			page_number = array_length(text);
			for (var i = 0; i < page_number; ++i) {
			    
				text_lenght[i] = string_length(text[i])
				
				text_x_offset[i] = 44;
				
			}
			
		}
		
		if draw_char < text_lenght[page] {
			draw_char += text_spd
			draw_char = clamp(draw_char, 0, text_lenght[page])
		}
		
		if accept_key {
			if draw_char = text_lenght[page] 
			{
				if page < page_number-1
				{
					page++
					draw_char = 0
				} else { 
					//end 
				}
				
			} else {
			
				draw_char = text_lenght[page]
				
			}
		}
		
		
	}
	static draw = function(){
		text_img += text_img_spd
		txtb_spr_w = sprite_get_width(txtb_spr)
		txtb_spr_h = sprite_get_height(txtb_spr)
		
		draw_sprite_ext(txtb_spr, txtb_img, text_box_x + text_x_offset[page], textbox_y, textbox_width/txtb_spr_w, textbox_height/txtb_spr_h,0,c_white,1)
		
		var _drawtext = string_copy(text[page], 1 , draw_char)
		draw_text_ext(text_box_x + text_x_offset[page] + border, textbox_y + border, _drawtext, line_step, line_widh)
	}
}

function InvokeTextBox() {
	
	
}