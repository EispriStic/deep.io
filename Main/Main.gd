extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var nombre_props = 0 
var time_c = 0.0
var timer_c = 1.0

var time_t = 0.0
var timer_t = 2.0

var time_p = 0.0
var timer_p = 5.0

var time_h = 0.0
var timer_h = 5.0

func _ready():
	var string = "res://Player/"+Tank.class_up["0"]+".tscn"
	var tank_de_base = load(string).instance()
	$Tank_spawn.add_child(tank_de_base)
	Tank.spawn_tank = $Tank_spawn

func _process(delta):
	if nombre_props < 10000 :
		if time_c > timer_c:
			for i in range(10):
				var carre = load("res://Props/Carre.tscn").instance()
				$SpawnProps.add_child(carre)
			time_c = 0.0
		time_c += delta
		
		if time_t > timer_t:
			for i in range(10):
				var triangle = load("res://Props/Triangle.tscn").instance()
				$SpawnProps.add_child(triangle)
			time_t = 0.0
		time_t += delta
		
		if time_p > timer_p:
			for i in range(4):
				var pentagone = load("res://Props/Pentagone.tscn").instance()
				$SpawnProps.add_child(pentagone)
			time_p = 0.0
		time_p += delta
		
		if time_h > timer_h:
			var hexagone = load("res://Props/Hexagone.tscn").instance()
			$SpawnProps.add_child(hexagone)
			time_h = 0.0
		time_h += delta
	else:
		pass
	nombre_props += 1 

		
		
