extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var velocity = Vector2()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _physics_process(delta):
	velocity.x = (int(Input.is_action_pressed('right')) - int(Input.is_action_pressed('left'))) *Tank.Stats["speed"]["speed_value"]
	velocity.y = (int(Input.is_action_pressed('down')) - int(Input.is_action_pressed('up'))) *Tank.Stats["speed"]["speed_value"]
	velocity.normalized()
	var push = 100
	move_and_slide(velocity, Vector2(0,0),false, 1, 0, false)
	for index in get_slide_count():
		var collision = get_slide_collision(index)
		collision.collider.apply_central_impulse(-collision.normal * push)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
