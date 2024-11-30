enum alert {
	green,
	yellow,
	red
}

global.detection = alert.green
global.leveldflt = alert.green
global.NpcArraySaw = []
global.NpcArraySus = []
global.viewPlayer = true;
global.lastSawX = 0
global.lastSawY = 0

function update_alert (id = noone, code = 0){
	 var lenght_npc = array_length(global.NpcArraySaw)
	 var lenght_sus = array_length(global.NpcArraySus)
	 if(id != noone){
		  switch(code){
			  case 2:
					for (var i = 0; i < lenght_npc; ++i) {
						   if(global.NpcArraySaw[i] = id){return}
					 }
					array_push(global.NpcArraySaw, id)
			 case 1:
					for (var i = 0; i <  lenght_sus; ++i) {
						   if(global.NpcArraySus[i] = id){return}
					 }
					array_push(global.NpcArraySus, id)
		  }
	 }else{
		 if(lenght_npc = 0){global.detection = alert.green}
		 if(lenght_sus < 3){global.leveldflt = alert.green}
		 if(lenght_npc = 1){global.detection = alert.yellow}
		 if(lenght_sus >= 5 and lenght_sus < 7){global.leveldflt = alert.yellow}
		 if(lenght_npc > 1){global.detection = alert.red}
		 if(lenght_sus >= 7){global.leveldflt = alert.red}
	 }
}