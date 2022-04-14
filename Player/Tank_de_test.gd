extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"




var velocity = Vector2()
var can_fire = true
var can_regen = true
var timer = 0

var bullet = preload("res://Balles/Balle_classic.tscn")

func _ready():
	Tank._update_stat()
	position = Tank.pos

func _process(delta):
	#var sante = Tank.pv
#	if Tank.pv <= 0 :
#		get_tree().change_scene("res://Menu/Menu.tscn")
	$Sprite.look_at(get_global_mouse_position())
	
	if Input.is_action_pressed("fire") and timer >= (Tank.Stats["reload"]["max_reload"] + 6.0) - (Tank.Stats["reload"]["reload_value"]):
		var bullet_instance = bullet.instance()
		bullet_instance.position = $Sprite/Bullet_point.get_global_position()
		bullet_instance.rotation_degrees = $Sprite.rotation_degrees
		bullet_instance.apply_impulse(Vector2(), Vector2(Tank.Stats["shoot_speed"]["shoot_speed_value"], 0 ).rotated($Sprite.rotation))
		get_tree().get_root().add_child(bullet_instance)
		timer = 0.0
	
	if Tank.Stats["health"]["pv"] < Tank.Stats["health"]["health_value"] and can_regen:
		Tank.Stats["health"]["pv"] += Tank.Stats["regen"]["regen_value"]
		can_regen = false
		yield(get_tree().create_timer(6),"timeout")
		can_regen = true
	
	if Tank.Stats["health"]["pv"]<=0:
		get_tree().change_scene("res://Menu/Menu.tscn")
		
	timer += 1
	Tank.pos = position
		
		
		
		
func _physics_process(delta):
	velocity.x = (int(Input.is_action_pressed('right')) - int(Input.is_action_pressed('left'))) *Tank.Stats["speed"]["speed_value"]
	velocity.y = (int(Input.is_action_pressed('down')) - int(Input.is_action_pressed('up'))) *Tank.Stats["speed"]["speed_value"]
	velocity.normalized()
	var push = 100
	move_and_slide(velocity, Vector2(0,0),false, 1, 0, false)
	for index in get_slide_count():
		var collision = get_slide_collision(index)
		collision.collider.apply_central_impulse(-collision.normal * push)
		
func _on_Hitbox_body_entered(body):
	if body.is_in_group("Hexagone"):
		Tank.Stats["health"]["pv"] -= Tank.degat_hexagone
	if body.is_in_group("Carre"):
		Tank.Stats["health"]["pv"]  -= Tank.degat_carre
	if body.is_in_group("Triangle"):
		Tank.Stats["health"]["pv"]  -= Tank.degat_triangle
	if body.is_in_group("Pentagone"):
		Tank.Stats["health"]["pv"]  -= Tank.degat_pentagone

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

