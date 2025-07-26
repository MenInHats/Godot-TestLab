extends Area2D

@onready var sfx_game_start = $sfx_gameStart


func _input_event(viewport: Viewport, event: 	InputEvent, shape_idx: int):
	if event is InputEventMouseButton and event.pressed:
		print("Sound Played!")
		sfx_game_start.play()
