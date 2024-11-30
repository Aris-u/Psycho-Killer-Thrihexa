enum alert {
	green,
	yellow,
	red
}

global.detection = alert.green
global.viewPlayer = true;
global.note_alert = 0
global.lastSawX = 0
global.lastSawY = 0

function update_alert (note){
	 global.note_alert += note
	 if(global.note_alert <= 30){global.detection = alert.green}
	 if(!global.viewPlayer){
	 if(global.note_alert >=  60){global.detection = alert.yellow}
	 if(global.note_alert >=  240){global.detection = alert.red}}
}