/// @description Insert description here
// You can write your code in this editor


//Activates sprite drawing
responseOn = false
// draws panel for control room
activate_main = false
//Stores interactables
interactables = [obj_terminal0, 
		obj_terminal1, obj_body1, obj_wrong, obj_terminal2, obj_correct]
//4 is main control	
totalNum = 6
current_trigger = noone



// Note, one word after useful passes the limit 
dialogue1[0] = "Hmm... an access card. Should be useful."
dialogue1[1] = "Wrong terminal. Does not have access to lobby."
			
dialogue2[0] = "Poor guy."
dialogue2[1] = "Lobby access granted."

access = false
