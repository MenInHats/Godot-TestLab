extends Node

var BoxScene = preload("res://TestLab_RigidBody2D/FallingBoxes/FallingBox.tscn")

func _input(event):
	if event.is_action_pressed("leftClick"):
		var instance = BoxScene.instantiate()
		instance.set_global_position(get_viewport().get_mouse_position())
		add_child(instance)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	pass
