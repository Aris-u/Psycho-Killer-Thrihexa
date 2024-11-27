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

global.dialogue.get_gun = [
	{
		speaker: _speakers.GM_,
		message: "...You've take the gun"
	}
]