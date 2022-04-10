extends RigidBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var hexagone_pv = 50

# Called when the node enters the scene tree for the first time.
# Ne pas toucher // Fonction pour la génération random des cubes d'xp
func _ready():
	$ProgressBar.set_max(hexagone_pv)
	if rand_range(0,15) > 13:
		position.x += (randi() % 15000) - 7500 
		position.y += (randi() % 15000) - 7500
	$ProgressBar.hide() 



#func _on_Hexagone_body_entered(body):
#	if body.is_in_group("Hexagone"):
#		Tank.pv -= Tank.degat_hexagone
	
func _process(delta):
	$ProgressBar.value = hexagone_pv
	if hexagone_pv <= 0 :
		queue_free()


func _on_Hexagone_body_entered(body):
	if body.is_in_group("Balles"):
		hexagone_pv -= Tank.Stats["attack"]["attack_value"]
		if Tank.Stats["health"]["pv"] < Tank.Stats["health"]["health_value"]:
			Tank.Stats["health"]["pv"] += (Tank.Stats["attack"]["attack_value"] * Tank.Stats["lifesteal"]["lifesteal_value"])
			print(Tank.Stats["health"]["pv"])
		$ProgressBar.show()
