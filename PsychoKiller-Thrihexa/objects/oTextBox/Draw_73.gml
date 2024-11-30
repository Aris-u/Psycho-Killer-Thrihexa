/// @description Insert description here
// You can write your code in this editor
if (!instance_exists(oBoxName) || !started) exit;

draw_set_font(ftTextBox);

var _messageData = dialogue[messageIndex];
var _name = _messageData.speaker.name;
var _message = _messageData.message;
_message = _message + extra
var _image = _messageData.speaker.image

_message = string_copy(_message, 0, characters);

draw_text(oBoxName.x, oBoxName.y, _name);

var _width = oBoxMessage.sprite_width;
draw_set_halign(fa_middle);
draw_text_ext(oBoxMessage.x, oBoxMessage.y, _message, -1,  _width)
var _centerX = oBoxImage.x;
var _centerY = oBoxImage.y;
var _scaleX = oBoxImage.sprite_width / sprite_get_width(_image);
var _scaleY = oBoxImage.sprite_height / sprite_get_height(_image);

draw_sprite_ext(_image, 0 , _centerX, _centerY, _scaleX, _scaleY, 0, -1, 1);