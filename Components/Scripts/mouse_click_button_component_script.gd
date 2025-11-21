extends Node2D
# Optional sound call, when button press
@export var sfx_button_press = Node2D
@export var particle_button_press = Node2D

func _input_event(viewport: Viewport, event: 	InputEvent, shape_idx: int):
	if event is InputEventMouseButton and event.pressed:
		print("Sound Played!")
		sfx_button_press.play() 
