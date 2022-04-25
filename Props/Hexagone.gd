extends RigidBody2D


# Declare member variables here. Examples:
# var a = 2z
# var b = "text"
var hexagone_pv = 1500
var hexagone_xp = Tank.level*150 + 50000


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
	hexagone_xp = Tank.level*25 + 25000
	$ProgressBar.value = hexagone_pv
	if hexagone_pv <= 0 :
		Tank._add_xp(hexagone_xp)
		queue_free()
		Tank.nombre_hexagone -= 1


func _on_Hexagone_body_entered(body):
	if body.is_in_group("Balles"):
		hexagone_pv -= Tank.Stats["attack"]["attack_value"]
		Tank._get_lifesteal()
	elif body.is_in_group("Tank"):
		hexagone_pv -= Tank._fist_damage()
	$ProgressBar.show()
