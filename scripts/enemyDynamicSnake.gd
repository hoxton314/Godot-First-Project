extends Area2D

var enemyMovement = 50 
const enemyMovementLong = 32 * 4
onready var enemyStartPositionY = self.position.y

func _physics_process(delta):
	move(delta)
	
	

var WALL_WIDTH = 32
var distance = 0
var direction = "x"
var V = 0
var paths = [{"distance":WALL_WIDTH*3.1, "neg":1},{"distance":WALL_WIDTH*4, "neg":1}, {"distance":WALL_WIDTH*2.1, "neg":1}, {"distance":0, "neg":1}, {"distance":WALL_WIDTH*2.1, "neg":-1}, {"distance":WALL_WIDTH*4, "neg":-1}, {"distance":WALL_WIDTH*3.1, "neg":-1}]



func move(d):
	if(direction=="x" and paths[V].distance>0):
		move_local_x(enemyMovement * d * paths[V].neg) 
		distance+=enemyMovement * d 
	elif(paths[V].distance>0):
		move_local_y(enemyMovement * d * paths[V].neg) 
		distance+=enemyMovement * d

	if(distance>=paths[V].distance):
		distance=0
		
		V +=1

			
		if(direction=="x"):
			direction = "y"
		else:
			direction = "x"
		
		if(V==paths.size()):
			V=0
			direction = "x"
		
	
	#print(V)


func _on_enemyDynamic3_area_entered(area):
	get_tree().reload_current_scene()
