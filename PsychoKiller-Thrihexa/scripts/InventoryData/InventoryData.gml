

global.inventory = []

function addItem (itemID) {
	array_push(global.inventory, itemID)
}

function findItem (itemID){
	for (var i = 0; i < array_length(global.inventory); ++i) {
	    if(global.inventory[i] == itemID){
			return true	
		}
	} return false
}

function holdItem(itemID){
	if(findItem(itemID)){
		if(global.HoldItem != itemID){global.HoldItem = itemID}
	}else return;
}

