extends Area2D

var enemyMovement = 50 
const enemyMovementLong = 32 * 4
onready var enemyStartPositionY = self.position.y
func _physics_process(delta):
	move_local_y(enemyMovement * delta) 
	if (self.position.y < enemyStartPositionY):
		enemyMovement = - enemyMovement
	elif (self.position.y > enemyStartPositionY + enemyMovementLong):
		enemyMovement = - enemyMovement


func _on_enemyDynamic2_area_entered(area):
	get_tree().reload_current_scene()
