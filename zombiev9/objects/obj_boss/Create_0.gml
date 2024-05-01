/// @description Insert description here
// You can write your code in this editor
event_inherited()
lockin = false

hp = 20
maxhp = hp
moveSpd = 0
accel = 3
acceltimer = 15
acceltimerMax = acceltimer
maxSpd = 20
hspd = 0
vspd = 0

stuntimer = 300
stuntimermax = stuntimer

enum states{
	idle,
	charge,
	stunned,
	shooting
}

state = states.charge