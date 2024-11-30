textSpeed = 0.5;
started = false
extra = global.grabbed_item
dialogue = -1;
messageIndex = 0;
characters = 0;
timer = 45;
start = function (_dialogueArray) {
	dialogue = _dialogueArray
	started = true;
}

next_message = function () {
	messageIndex ++;
	characters = 0;
}