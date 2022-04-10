extends RigidBody2D

var duration = 0


func _on_Balle_classic_body_entered(body):
	if !body.is_in_group("Tank"):
		if duration >= Tank.Stats["duration"]["duration_value"]:
			duration = 0
			queue_free()
		else:
			duration += 1



func _on_Timer_timeout():
	queue_free()
