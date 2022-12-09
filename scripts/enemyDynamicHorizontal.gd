extends Area2D

var enemyMovement = 50 
const enemyMovementLong = 32 * 4
onready var enemyStartPositionX = self.position.x
func _physics_process(delta):
	move_local_x(enemyMovement * delta) 
	if (self.position.x < enemyStartPositionX):
		enemyMovement = - enemyMovement
	elif (self.position.x > enemyStartPositionX + enemyMovementLong):
		enemyMovement = - enemyMovement


func _on_enemyDynamic_area_entered(area):
	get_tree().reload_current_scene()
