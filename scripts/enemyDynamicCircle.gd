extends Area2D

var enemyMovement = 50 
const enemyMovementLong = 32 * 4
onready var enemyStartPositionY = self.position.y

func _physics_process(delta):
	move(delta)
	
	

var WALL_WIDTH = 32
var distance = 0
var direction = "x"
var lengths = {"x": WALL_WIDTH*3.3, "y": WALL_WIDTH*2}
var neg = 1

func move(d):
	if(direction=="x"):
		move_local_x(enemyMovement * d * neg) 
		distance+=enemyMovement * d 
	else:
		move_local_y(enemyMovement * d * neg) 
		distance+=enemyMovement * d

	if(distance>=lengths[direction]):
		distance=0
		if(direction=="x"):
			direction = "y"
		else:
			direction = "x"
			neg=neg*-1



func _on_enemyDynamic_area_entered(area):
	get_tree().reload_current_scene()
