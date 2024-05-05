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
rattle = 0

hurt = 0

chaseTimer = 0
chaseTimerMax = random_range(0,60)
chaseSpd = random_range(.5,.8)
my_path = path_add()
path_x = 0
path_y = 0
mspd = random_range(.5,.8)
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