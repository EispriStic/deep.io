extends RigidBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var pentagone_pv = 80
var pentagone_xp = 2500

# Called when the node enters the scene tree for the first time.
func _ready():
	$ProgressBar.set_max(pentagone_pv)
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
	$ProgressBar.hide()


func _process(delta):
	$ProgressBar.value = pentagone_pv
	if pentagone_pv <= 0 :
		Tank.xp += pentagone_xp
		queue_free()



func _on_Pentagone_body_entered(body):
	if body.is_in_group("Balles"):
		pentagone_pv -= Tank.Stats["attack"]["attack_value"]
		if Tank.Stats["health"]["pv"] < Tank.Stats["health"]["health_value"]:
			Tank.Stats["health"]["pv"] += (Tank.Stats["attack"]["attack_value"] * Tank.Stats["lifesteal"]["lifesteal_value"])
			print(Tank.Stats["health"]["pv"])
		$ProgressBar.show()
