extends CharacterBody2D

@export var bullet_scene: PackedScene
@export var shoot_speed := 0.5
@export var bullet_spawn_distance := 48.0

var shoot_cooldown := 0.0

func _process(delta):
	look_at(get_global_mouse_position())
	shoot_cooldown -= delta
	if Input.is_action_pressed("shoot") and shoot_cooldown <= 0:
		shoot()
		shoot_cooldown = shoot_speed

func shoot():
	var bullet = bullet_scene.instantiate()

	var direction = Vector2.RIGHT.rotated(rotation)
	var spawn_offset = direction * bullet_spawn_distance

	bullet.global_position = global_position + spawn_offset
	bullet.rotation = rotation

	if bullet.has_method("set_direction"):
		bullet.set_direction(direction)
	else:
		bullet.get_node("2DProjectileMotionComponent").direction = direction

	get_tree().current_scene.add_child(bullet)
