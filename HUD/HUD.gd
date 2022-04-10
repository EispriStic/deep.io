extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Health_pressed():
	Tank.Stats["health"]["health"] += 1 
	Tank._update_stat()


func _on_Attack_pressed():
	Tank.Stats["attack"]["attack"] += 1 
	Tank._update_stat()


func _on_Defense_pressed():
	Tank.Stats["defense"]["defense"] += 1 
	Tank._update_stat()


func _on_Reload_pressed():
	Tank.Stats["reload"]["reload"] += 1 
	Tank._update_stat()


func _on_sspeed_pressed():
	Tank.Stats["shoot_speed"]["shoot_speed"] += 1 
	Tank._update_stat()


func _on_Duration_pressed():
	Tank.Stats["duration"]["duration"] += 1 
	Tank._update_stat()


func _on_Regen_pressed():
	Tank.Stats["regen"]["regen"] += 1 
	Tank._update_stat()


func _on_Speed_pressed():
	Tank.Stats["speed"]["speed"] += 1 
	Tank._update_stat()


func _on_Straff_pressed():
	Tank.Stats["straf"]["straf"] += 1 
	Tank._update_stat()


func _on_Sida_pressed():
	Tank.Stats["sida"]["sida"] += 1 
	Tank._update_stat()


func _on_Farmer_pressed():
	Tank.Stats["farmer"]["farmer"] += 1 
	Tank._update_stat()


func _on_Luck_pressed():
	Tank.Stats["luck"]["luck"] += 1 
	Tank._update_stat()


func _on_Pentration_pressed():
	Tank.Stats["penetration"]["penetration"] += 1 
	Tank._update_stat()


func _on_Lifesteal_pressed():
	Tank.Stats["lifesteal"]["lifesteal"] += 1 
	Tank._update_stat()


func _on_Godmod_pressed():
	Tank.Stats["godmod"]["godmod"] += 1 
	Tank._update_stat()


func _on_Size_pressed():
	Tank.Stats["size"]["size"] += 1 
	Tank._update_stat()


func _on_Camera_pressed():
	Tank.Stats["camera"]["camera"] += 1 
	Tank._update_stat()



