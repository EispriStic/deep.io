extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
# Ne pas toucher // Fonction pour la génération random des cubes d'xp
func _ready():
	if rand_range(0,15) > 13:
		position.x += (randi() % 15000) - 7500 
		position.y += (randi() % 15000) - 7500 

