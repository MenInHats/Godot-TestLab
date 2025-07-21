extends Area2D  # Launch upward

func _on_body_entered(body):
		if body is RigidBody2D:
			body.apply_central_impulse(Vector2(0, -1000))
