if(!started) exit;

var _messageData = dialogue[messageIndex];
var _message = _messageData.message;

if (characters < string_length(_message)) {
	var _textSpeed = textSpeed
	
	var _char = string_char_at(_message, characters);
	
	if (_char == "." || _char == "!" || _char == "," || _char == "?"){
		_textSpeed /=  6;
	}
	
	characters += _textSpeed;	
}

else {
	if (keyboard_check_pressed(ord("E"))) {
		if ((messageIndex + 1 ) < array_length(dialogue)) {
			next_message()	
		}
		else {
			close_textbox()	
		}
	}
}