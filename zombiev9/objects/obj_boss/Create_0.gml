/// @description Insert description here
// You can write your code in this editor
event_inherited()
lockin = false

hp = 200
maxhp = hp
moveSpd = 0
accel = 3
acceltimer = 15
acceltimerMax = acceltimer
maxSpd = 20
hspd = 0
vspd = 0
face = 1
hurt = 0
idletimer = 60
idletimermax = idletimer
stuntimer =420
stuntimermax = stuntimer
damage = 5

idle[0] = spr_biL
idle[1] = spr_biR

roll[0] = spr_bRollL
roll[1] = spr_bRollR

enum states{
	idle,
	charge,
	stunned,
	shooting
}

state = states.idle

