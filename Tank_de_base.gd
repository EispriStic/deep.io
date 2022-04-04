extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

export var speed = 1000
export var bullet_speed = 1000
export var fire_rate = 0.5

var velocity = Vector2()
var can_fire = true

var bullet = preload("res://Balles/Balle_classic.tscn")


func _process(delta):
	look_at(get_global_mouse_position())
	if Input.is_action_pressed("fire") and can_fire:
		var bullet_instance = bullet.instance()
		bullet_instance.position = $Bullet_point.get_global_position()
		bullet_instance.rotation_degrees = rotation_degrees
		bullet_instance.apply_impulse(Vector2(), Vector2(bullet_speed, 0 ).rotated(rotation))
		get_tree().get_root().add_child(bullet_instance)
		can_fire = false
		yield(get_tree().create_timer(fire_rate),"timeout")
		can_fire = true
		
		
		
func _physics_process(delta):
	velocity.x = (int(Input.is_action_pressed('right')) - int(Input.is_action_pressed('left'))) *speed
	velocity.y = (int(Input.is_action_pressed('down')) - int(Input.is_action_pressed('up'))) *speed
	move_and_slide(velocity)
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
