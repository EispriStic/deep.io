extends RigidBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var pentagone_pv = 50 

# Called when the node enters the scene tree for the first time.
func _ready():
	var coord_x = (randi() % 15000) - 7500
	var coord_y = (randi() % 15000) - 7500
	if -7500 < coord_x and coord_x < 7500 and -7500 < coord_y and coord_y < 7500 :
		if rand_range(0,10) > 4:
			position.x += coord_x 
			position.y += coord_y 
	else:
		if rand_range(0,15) > 12:
			position.x += coord_x 
			position.y += coord_y

func _process(delta):
	if pentagone_pv >= 50 :
		$ProgressBar.hide()
	else : 
		$ProgressBar.show()
	$ProgressBar.value = pentagone_pv
	if pentagone_pv <= 0 :
		queue_free()


func _on_Pentagone_body_entered(body):
	if body.is_in_group("Balles"):
		pentagone_pv -= Tank.min_attack

