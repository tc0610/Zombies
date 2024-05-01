get_damaged_create(20,true)

hasAccess = false
hasControl = false

//Movement
#region
maxhp = 20
hp = 20

startx = x
starty = y

moveDir = 0
moveSpd = 3
sneakSpd = .5
walkSpd = moveSpd

vspd = 0
hspd = 0

x_remainder = 0
y_remainder = 0

sneak = 0
moving = false
attacking = false
#endregion

//Sprites
#region
face = 3


//walk
sprite[0] = spr_sneakWRK
sprite[1] = spr_sneakWUK
sprite[2] = spr_sneakWLK
sprite[3] = spr_sneakWDK

sprite[4] = spr_wR_knife
sprite[5] = spr_wU_knife
sprite[6] = spr_wL_knife
sprite[7] = spr_wD_knife





centerYOffset = -15
centerY = y + centerYOffset

weaponOffset = 20
knifeOffset = -5
pistolOffset = 20
aimDir = 0

face = 0
#endregion

//Weapon
#region
shootTimer = 0
charge = 0
maxCharge = 100

//Weapon Inventory
array_push(global.PlayerWeapons,global.WeaponList.pistol)
array_push(global.PlayerWeapons,global.WeaponList.knife)
	
selectedWeapon = 1
	
weapon = global.PlayerWeapons[selectedWeapon]
#endregion
