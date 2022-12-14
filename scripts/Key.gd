extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var PlayerData = get_node("/root/PlayerData")
	PlayerData.KEY_FOUND=false
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Key_area_entered(area):
	if(area.get_name() == "playerArea"):
		print('key picked!')
		get_parent().remove_child(self)
		PlayerData.KEY_FOUND=true
	pass # Replace with function body.
