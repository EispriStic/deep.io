extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"





var velocity = Vector2()
var can_fire = true

var bullet = preload("res://Balles/Balle_classic.tscn")


func _process(delta):
	var sante = Tank.pv
	if Tank.pv <= 0 :
		get_tree().change_scene("res://Menu/Menu.tscn")
	look_at(get_global_mouse_position())
	if Input.is_action_pressed("fire") and can_fire:
		var bullet_instance = bullet.instance()
		bullet_instance.position = $Bullet_point.get_global_position()
		bullet_instance.rotation_degrees = rotation_degrees
		bullet_instance.apply_impulse(Vector2(), Vector2(Tank.min_sspeed, 0 ).rotated(rotation))
		get_tree().get_root().add_child(bullet_instance)
		can_fire = false
		yield(get_tree().create_timer(Tank.reload),"timeout")
		can_fire = true
		Tank.pv -= 10
		
		
		
		
func _physics_process(delta):
	velocity.x = (int(Input.is_action_pressed('right')) - int(Input.is_action_pressed('left'))) *Tank.min_speed
	velocity.y = (int(Input.is_action_pressed('down')) - int(Input.is_action_pressed('up'))) *Tank.min_speed
	velocity.normalized()
	var push = 100
	move_and_slide(velocity, Vector2.UP, false, 1, PI/4, false)
	for index in get_slide_count():
		var collision = get_slide_collision(index)
		collision.collider.apply_central_impulse(-collision.normal * push)
#	var direction = Vector2()
#	if Input.is_action_pressed('right') :
#		direction += Vector2(1,0)
#	if Input.is_action_pressed("left") :
#		direction += Vector2(-1,0)
#	if Input.is_action_pressed('up') :
#		direction += Vector2(0,-1)
#	if Input.is_action_pressed('down') :
#		direction += Vector2(0,1)
#	move_and_slide(direction * speed)
