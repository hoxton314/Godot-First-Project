extends Node




func _process(delta):
	if Input.is_action_pressed("GAME_EXIT"):
		get_tree().quit()
