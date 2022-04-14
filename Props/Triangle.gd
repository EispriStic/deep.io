extends RigidBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var triangle_pv = 25
var triangle_xp = 300

# Called when the node enters the scene tree for the first time.
func _ready():
	$ProgressBar.set_max(triangle_pv)
	var coord_x = (randi() % 54000) - 27715
	var coord_y = (randi() % 54000) - 27715
	if -7500 < coord_x and coord_x < 0 :
		coord_x -= 7500
		if rand_range(0,10) > 6:
			position.x += coord_x 
			position.y += coord_y 
	elif 0 < coord_x and coord_x < 7500 :
		coord_x += 7500
		if rand_range(0,10) > 6:
			position.x += coord_x 
			position.y += coord_y 
	else:
		if rand_range(0,10) > 6:
			position.x += coord_x 
			position.y += coord_y
	$ProgressBar.hide()

func _process(delta):
	$ProgressBar.value = triangle_pv
	if triangle_pv <= 0 :
		Tank.xp += triangle_xp
		queue_free()



func _on_Triangle_body_entered(body):
	if body.is_in_group("Balles"):
		triangle_pv -= Tank.Stats["attack"]["attack_value"]
		if Tank.Stats["health"]["pv"] < Tank.Stats["health"]["health_value"]:
			Tank.Stats["health"]["pv"] += (Tank.Stats["attack"]["attack_value"] * Tank.Stats["lifesteal"]["lifesteal_value"])
			print(Tank.Stats["health"]["pv"])
		$ProgressBar.show()
