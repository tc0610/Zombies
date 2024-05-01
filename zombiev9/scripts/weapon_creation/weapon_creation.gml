function create_weapon(_sprite,_weaponLength,_bulletObj, _cooldown, _bulletNum = 1,_spread = 0)constructor{
	sprite = _sprite;
	length = _weaponLength;
	bulletObj = _bulletObj;
	cooldown = _cooldown;
	bulletNum = _bulletNum
	spread = _spread
}

//Inventory
global.PlayerWeapons = array_create(0)

//weapons
global.WeaponList = {
	pistol : new create_weapon(
		spr_pistol,
		sprite_get_bbox_right(spr_pistol) - sprite_get_xoffset(spr_pistol),
		obj_bullet,
		9,
		1,
		0
	),
	knife : new create_weapon(
		spr_knife,
		sprite_get_bbox_right(spr_knife) - sprite_get_xoffset(spr_knife),
		obj_stab,
		60,
		1,
		0
	),
}
