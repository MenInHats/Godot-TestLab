extends CharacterBody2D

const speed = 50  # Movement speed
@export var player: Node2D  # Player reference (set in Inspector)
@onready var nav_agent := $NavigationAgent2D as NavigationAgent2D  # Navigation agent node

func _ready() -> void:
	makepath()  # Create path to player at start

func _physics_process(_delta: float) -> void:
	var dir = to_local(nav_agent.get_next_path_position()).normalized()  # Direction to next path point
	velocity = dir * speed  # Apply movement velocity
	move_and_slide()  # Move character with collision

func makepath() -> void:
	nav_agent.target_position = player.global_position  # Set path target to player's position

func _on_timer_timeout():
	makepath()  # Update path when timer triggers
