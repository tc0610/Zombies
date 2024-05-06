get_damaged_create(20,true)

hasAccess = false
hasControl = false

//Movement
#region
hit = 0
maxhp = 20
hp = 20

startx = x
starty = y

moveDir = 0
moveSpd = 4
sneakSpd = .5
walkSpd = moveSpd

vspd = 0
hspd = 0

x_remainder = 0
y_remainder = 0

dyingtimer = 0
dyingmax = 120

state = pstates.walking

enum pstates {
	walking,
	slashing,
	sneaking,
	charging,
	dying,
}

sneak = 0
moving = false
attacking = false
#endregion

//Sprites
#region
face = 3


//sneak
snkwalk[0] = spr_sneakWRK
snkwalk[1] = spr_sneakWUK
snkwalk[2] = spr_sneakWLK
snkwalk[3] = spr_sneakWDK

snkidle[0] = spr_idleSR
snkidle[1] = spr_idleSB
snkidle[2] = spr_idleSL
snkidle[3] = spr_idleSF


walk[0] = spr_wR_knife
walk[1] = spr_wU_knife
walk[2] = spr_wL_knife
walk[3] = spr_wD_knife

walkidle[0] = spr_iR_knife
walkidle[1] = spr_iB_knife
walkidle[2] = spr_iL_knife
walkidle[3] = spr_iF_knife

slash[0] = spr_slashR
slash[1] = spr_slashB
slash[2] = spr_slashL
slash[3] = spr_slashF

charged[0] = spr_chargeR
charged[1] = spr_chargeB
charged[2] = spr_chargeL
charged[3] = spr_chargeF

uncharge[0] = spr_unchargeR
uncharge[1] = spr_unchargeB
uncharge[2] = spr_unchargeL
uncharge[3] = spr_unchargeF

dying[0] = spr_deadR
dying[1] = spr_deadB
dying[2] = spr_deadL
dying[3] = spr_deadF


centerYOffset = -20
centerY = y + centerYOffset

weaponOffset = -20
knifeOffset = -20
aimDir = 0

face = 0
#endregion

//Weapon
#region
shootTimer = 0
charge = 0
maxCharge = 60

//Weapon Inventory
array_push(global.PlayerWeapons,global.WeaponList.knife)
	
selectedWeapon = 0
	
weapon = global.PlayerWeapons[selectedWeapon]
#endregion
