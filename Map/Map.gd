extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



var timer = 0
var timer_limit = 1000

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	timer += delta
	if timer > timer_limit:
		timer -= timer_limit
		var coord_x = (randi() % 54000) - 27715
		var coord_y = (randi() % 54000) - 27715
		if -7500 < coord_x and coord_x < 7500 and -7500 < coord_y and coord_y < 7500 :
			var w_prop = (randi() % 10)
			if w_prop <= 8 :
				pass #Spawn pentagone
			else :
				pass #Spawn hexagone
		else:
			var w_prop = (randi() % 20)
			if w_prop <= 10 :
				pass #Spawn carre
			elif 11 <= w_prop and w_prop <=17 :
				pass #Spawn triangle
			else:
				pass #Spawn octogone
		
