extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var time_c = 0.0
var timer_c = 1.0

var time_t = 0.0
var timer_t = 2.0

var time_p = 0.0
var timer_p = 5.0

var time_h = 0.0
var timer_h = 5.0

func _process(delta):
	if time_c > timer_c:
		var carre = load("res://Props/Carre.tscn").instance()
		$SpawnProps.add_child(carre)
		time_c = 0.0
	timer_c += delta
	
	if time_t > timer_t:
		var triangle = load("res://Props/Triangle.tscn").instance()
		$SpawnProps.add_child(triangle)
		time_t = 0.0
	timer_t += delta
	
	if time_p > timer_p:
		var pentagone = load("res://Props/Pentagone.tscn").instance()
		$SpawnProps.add_child(pentagone)
		time_p = 0.0
	timer_p += delta
	
	if time_h > timer_h:
		var hexagone = load("res://Props/Hexagone.tscn").instance()
		$SpawnProps.add_child(hexagone)
		time_h = 0.0
	timer_h += delta

