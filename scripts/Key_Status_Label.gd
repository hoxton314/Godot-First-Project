extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var PlayerData = get_node("/root/PlayerData")
	pass # Replace with function body.

func _process(delta):
	var state
	if PlayerData.KEY_FOUND:
		state = "1"
	else:
		state = "0"
		
	$Label.set_text("×"+state)
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
