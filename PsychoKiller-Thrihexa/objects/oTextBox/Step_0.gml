if(!started) exit;

var _messageData = dialogue[messageIndex];
var _message = _messageData.message;
var highlight = string_length(_message)
_message = _message + extra
 

if (characters < string_length(_message)) {
	var _textSpeed = textSpeed
	
	var _char = string_char_at(_message, characters);
	if (_char == "." || _char == "!" || _char == "," || _char == "?"){
		_textSpeed /=  6;
	}
	
	if (characters >=  highlight){draw_set_color(c_yellow)}
	characters += _textSpeed;	
}

else {
	if(!global.ignore_input){
			if (keyboard_check_pressed(ord("E"))) {
				if ((messageIndex + 1 ) < array_length(dialogue)) {
					next_message()	
				}
				else {
					close_textbox()
				}
			}
	}else {
		timer--
		if(timer<0){close_textbox()}
		}
}