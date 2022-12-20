extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	print('init')
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

const playerMovement = 100 # player max velocity
func _physics_process(delta):
	if (Input.is_action_pressed("PLAYER_UP")):
		move_and_collide(Vector2(0, -playerMovement*delta))
		$AnimatedSprite.play("default")
	if (Input.is_action_pressed("PLAYER_DOWN")):
		move_and_collide(Vector2(0, playerMovement*delta))
		$AnimatedSprite.play("default")
	if (Input.is_action_pressed("PLAYER_RIGHT")):
		move_and_collide(Vector2(playerMovement*delta, 0))
		$AnimatedSprite.play("default")
		$AnimatedSprite.flip_h = false
	if (Input.is_action_pressed("PLAYER_LEFT")):
		move_and_collide(Vector2(-playerMovement*delta, 0))
		$AnimatedSprite.play("default")
		$AnimatedSprite.flip_h = true
	
	#const movement()
	if(not (Input.is_action_pressed("PLAYER_UP") or Input.is_action_pressed("PLAYER_DOWN") or Input.is_action_pressed("PLAYER_LEFT") or Input.is_action_pressed("PLAYER_RIGHT"))):
		$AnimatedSprite.stop()
		$AnimatedSprite.frame = 0
#func _physics_process(delta):
	
		
