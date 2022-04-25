extends RigidBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var pentagone_pv = 80
var pentagone_xp = Tank.level*25 + 8500

# Called when the node enters the scene tree for the first time.
func _ready():
	$ProgressBar.set_max(pentagone_pv)
	var coord_x = (randi() % 7000) 
	var coord_y = (randi() % 7000) 
	var neg_x =  (randi() % 2)
	var neg_y =  (randi() % 2)
	if neg_x <1:
		coord_x = coord_x
	else:
		coord_x = -coord_x
		
	if neg_y <1:
		coord_y = coord_y
	else:
		coord_y = -coord_y
	
	print([coord_x, coord_y, Tank.nombre_pentagone])
	if -7500 < coord_x and coord_x < 7500 and -7500 < coord_y and coord_y < 7500 :
		if rand_range(0,10) > 6:
			position.x += coord_x 
			position.y += coord_y 
	else:
		if rand_range(0,15) > 6:
			position.x += coord_x 
			position.y += coord_y
	$ProgressBar.hide()


func _process(delta):
	Tank.level*25 + 8500
	$ProgressBar.value = pentagone_pv
	if pentagone_pv <= 0 :
		Tank._add_xp(pentagone_xp)
		queue_free()
		Tank.nombre_pentagone -= 1



func _on_Pentagone_body_entered(body):
	if body.is_in_group("Balles"):
		pentagone_pv -= Tank.Stats["attack"]["attack_value"]
		Tank._get_lifesteal()
	elif body.is_in_group("Tank"):
		pentagone_pv -= Tank._fist_damage()
	$ProgressBar.show()
