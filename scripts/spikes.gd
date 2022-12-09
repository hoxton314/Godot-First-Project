extends Area2D

onready var _animation_player = $AnimationPlayer

func _process(_delta):
	#if Input.is_action_pressed("ui_right"):
		_animation_player.play("SpikeAnim")
	#else:
	 #   _animation_player.stop()

var testFlag = false

func _on_Spikes_area_entered(area):
	testFlag=true
	while(testFlag):
		if(area.get_name() == "playerArea" && $sprite.frame != 0 && $sprite.frame !=1):
			get_tree().reload_current_scene()
		print('loop')
		var t = Timer.new()
		t.set_wait_time(0.1)
		t.set_one_shot(true)
		self.add_child(t)
		t.start()
		yield(t, "timeout")
	pass # Replace with function body.
	





func _on_Spikes_area_exited(area):
	testFlag=false
	pass # Replace with function body.
