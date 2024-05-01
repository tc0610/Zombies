/// @description Insert description here
// You can write your code in this editor
globalvar CELL_SIZE; 
CELL_SIZE=16
globalvar GRID_WIDTH; 
GRID_WIDTH= room_width/CELL_SIZE
globalvar GRID_HEIGHT; 
GRID_HEIGHT= room_height/CELL_SIZE

globalvar PATH_GRID; 
PATH_GRID= mp_grid_create(0,0,GRID_WIDTH,GRID_HEIGHT,CELL_SIZE,CELL_SIZE)

globalvar GAME_PAUSED;
GAME_PAUSED =  false

globalvar HALL_POS;
//position in hallway after leaving rooms 
HALL_POS = [[127, 719], 
			[609, 150],
			[116, 135],
			[1238, 135],
			[1235, 737]
			]


alarm[0] = 1

// Stores player position when entering rooms
//main
global.rm_arr[0] = [691, 136];  
// electric
global.rm_arr[1] = [81, 411];  
// research
global.rm_arr[2] = [672, 704];  
//control
global.rm_arr[3] = [701, 710];  
//lobby
global.rm_arr[4] = [697, 136]; 


global.RM_ENTERED = [0, 0, 0, 0, 0];