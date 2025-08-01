extends Node2D
#This component does not assume what the parent is — as long as it’s a Node2D (like CharacterBody2D or Area2D), it works.
class_name ProjectileMotionComponent2D

@export var speed: float = 400
@export var direction: Vector2 = Vector2.RIGHT  # This should be a unit vector
@export var lifetime: float = 5.0

var time_elapsed := 0.0

func _ready():
	direction = direction.normalized()

func _physics_process(delta):
	time_elapsed += delta

	# Move the parent node in the given direction
	var parent = get_parent()
	if parent is Node2D:
		parent.position += direction * speed * delta

	# Remove after lifetime expires
	if time_elapsed >= lifetime:
		parent.queue_free()
