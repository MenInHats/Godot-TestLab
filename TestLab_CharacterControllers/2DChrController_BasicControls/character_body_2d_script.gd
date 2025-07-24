extends CharacterBody2D

@export var speed := 400         # Horizontal movement speed
@export var jump_velocity := -400 # Upward velocity for jumping
@export var gravity := 800       # Gravity force

func _physics_process(delta):
	# Apply gravity
	if not is_on_floor():
		velocity.y += gravity * delta
	else:
		velocity.y = 0  # Reset vertical velocity when grounded

	# Left/Right movement
	var direction = Input.get_action_strength("Chr_Right") - Input.get_action_strength("Chr_Left")
	velocity.x = direction * speed

	# Jump
	if Input.is_action_just_pressed("Chr_Jump") and is_on_floor():
		velocity.y = jump_velocity

	# Apply movement
	move_and_slide()
