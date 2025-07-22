extends Area2D # Launch Object Upwards

var launchPad_userActive = false
var launchPad_objectPresent = false
var boxObject: RigidBody2D = null  # Will be assigned when body enters

#if the launch pad is activated/Area2D is entered, then allow for user input to launch the object then deactivate the launch pad after the launch
func _physics_process(delta):
	if Input.is_action_just_pressed("ui_accept") and launchPad_objectPresent:
		launchPad_userActive = true
		if boxObject:
			print("Launching object!")
			boxObject.linear_velocity = Vector2(0, -600)
			boxObject.sleeping = false
			# Deactivate launch pad
			launchPad_userActive = false
			launchPad_objectPresent = false
			boxObject = null

#when a object enters the Area2D/Launchpad Zone activate the launch pad
func _on_body_entered(body):
	if body is RigidBody2D:
		print("Object entered launch pad:", body.name)
		launchPad_objectPresent = true
		boxObject = body
