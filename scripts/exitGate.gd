extends Area2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var PlayerData = get_node("/root/PlayerData")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_exitGate_area_entered(area):
	print(PlayerData.KEY_FOUND)
	if(PlayerData.KEY_FOUND):
		get_tree().change_scene(str("level", 2, ".tscn"))
