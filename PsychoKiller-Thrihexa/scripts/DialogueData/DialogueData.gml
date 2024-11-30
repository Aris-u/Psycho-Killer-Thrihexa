var _speakers = {
	player: {
		name: "Player",
		image: sPlayer_Idle_Down
	},
	bob: {
		name: "Bob",
		image: sNPC_Idle_Down
	},
	GM_: {
		name: "",
		image: sGM_
	}
}

global.dialogue = {}
global.grabbed_item =  ""
global.ignore_input = false;
global.HoldItem = noone;

global.dialogue.bob_meet = [
	{
		speaker: _speakers.player,
		message: "Hey there, who are you?"
	},
	{
		speaker: _speakers.bob,
		message: "Oh hi! I'm Bob... And I know who your are."
	},
	{
		speaker: _speakers.player,
		message: "...Oh, how?"
	},
	{
		speaker: _speakers.bob,
		message: "You will find out. You. Will."
	},
	{
		speaker: _speakers.player,	
		message: "*shivers*"
	},
]

global.dialogue.get_item = [
	{
		speaker: _speakers.GM_,
		message: "...You've take the " 
	}
]

global.dialogue.bob_kill = [
	{
		speaker: _speakers.bob,
		message: "Wait.....what are you doing with that gun ?"
	},{
		speaker: _speakers.player,
		message:"Nothing personal buddy..... just bussines ya'know ?"
	}
]

global.dialogue.hand_item= [
	{
		speaker: _speakers.GM_,
		message: "Using: " 
	}
]

global.dialogue.handoff_item = [
	{
		speaker: _speakers.GM_,
		message: "HandedOff: "
	}
]