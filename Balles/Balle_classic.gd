extends RigidBody2D




 




func _on_Balle_classic_body_entered(body):
	if !body.is_in_group("Tank"):
		queue_free()




func _on_Timer_timeout():
	queue_free()
