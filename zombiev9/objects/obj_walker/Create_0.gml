/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
//alert
alertStatus = false
maxAlert = 100
alert = maxAlert
alertRadius = 100
maxRad =200
minRad = 80
breathing = false

hurt = 0

mspd = .5
chaseTimer = 0
chaseTimerMax = random_range(0,60)
chaseSpd = .5
my_path = path_add()
path_x = 0
path_y = 0
mspd = random_range(.5,1.2)
follow_tgt = obj_player
startx = x
starty = y
prevx = floor(x/GRID_WIDTH)
prevy = floor(y/GRID_HEIGHT)

face = 1
state = wstates.sleep

damage =5

enum wstates{
	sleep,
	attack,
	walk
	
}