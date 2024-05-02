
if !GAME_PAUSED{
	get_damaged(obj_damageEnemy)
	
	//Death
	if hp <= 0{
		instance_destroy()	
	}
}