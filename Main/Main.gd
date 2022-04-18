extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var time_c = 0.0
var timer_c = 0.0

var time_t = 0.0
var timer_t = 0.0

var time_p = 0.0
var timer_p = 4.0

var time_h = 0.0
var timer_h = 50.0

func _ready():
	var string = "res://Player/"+Tank.class_up["0"]+".tscn"
	var tank_de_base = load(string).instance()
	$Tank_spawn.add_child(tank_de_base)
	Tank.spawn_tank = $Tank_spawn

func _process(delta):

	if Tank.nombre_carre < 1100 :
		if time_c > timer_c:
			for i in range(9):
				var carre = load("res://Props/Carre.tscn").instance()
				$SpawnProps.add_child(carre)
				Tank.nombre_carre += 1 
			time_c = 0.0
			
		time_c += delta
		
		
	if Tank.nombre_triangle < 350 :
		if time_t > timer_t:
			for i in range(6):
				var triangle = load("res://Props/Triangle.tscn").instance()
				$SpawnProps.add_child(triangle)
				Tank.nombre_triangle += 1 
			time_t = 0.0
			
		time_t += delta
		
		
	if Tank.nombre_pentagone < 25 :
		if time_p > timer_p:
			for i in range(2):
				var pentagone = load("res://Props/Pentagone.tscn").instance()
				$SpawnProps.add_child(pentagone)
				Tank.nombre_pentagone += 1 
			time_p = 0.0
			
		time_p += delta
		
		
	if Tank.nombre_hexagone < 3 :
		if time_h > timer_h:
			var hexagone = load("res://Props/Hexagone.tscn").instance()
			$SpawnProps.add_child(hexagone)
			time_h = 0.0
			Tank.nombre_hexagone += 1 
		time_h += delta
		
	else:
		pass
		

		
		
