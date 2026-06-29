extends Area2D


## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	#pass

#Delets objects upon entering the body
func _on_body_entered(body):
	body.queue_free()
