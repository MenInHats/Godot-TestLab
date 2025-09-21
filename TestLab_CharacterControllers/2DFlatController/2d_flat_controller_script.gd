extends CharacterBody2D

const speed = 10000
var dir : Vector2

func _physics_process(delta: float):
	velocity = dir * speed * delta
	move_and_slide()

func _unhandled_input(_event: InputEvent):
	dir.x = Input.get_axis("Flat2D_Left", "Flat2D_Right")
	dir.y = Input.get_axis("Flat2D_Up", "Flat2D_Down")
	dir = dir.normalized()
