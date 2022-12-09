extends Area2D
	
func _on_enemyStatic_area_entered(_area):
	print("enter")
	get_tree().reload_current_scene()

