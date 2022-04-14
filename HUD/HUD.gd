extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$Panel/Health/ProgressBar.set_max(Tank.Stats["health"]["max_health"])
	$Panel/Health/ProgressBar.set_min(Tank.Stats["health"]["min_health"])
	$Panel/Attack/ProgressBar.set_max(Tank.Stats["attack"]["max_attack"])
	$Panel/Attack/ProgressBar.set_min(Tank.Stats["attack"]["min_attack"])
	$Panel/Defense/ProgressBar.set_min(Tank.Stats["defense"]["min_defense"])
	$Panel/Defense/ProgressBar.set_max(Tank.Stats["defense"]["max_defense"])
	$Panel/Reload/ProgressBar.set_max(Tank.Stats["reload"]["max_reload"])
	$Panel/Reload/ProgressBar.set_min(Tank.Stats["reload"]["min_reload"])
	$Panel/sspeed/ProgressBar.set_max(Tank.Stats["shoot_speed"]["max_shoot_speed"])
	$Panel/sspeed/ProgressBar.set_min(Tank.Stats["shoot_speed"]["min_shoot_speed"])
	$Panel/Duration/ProgressBar.set_max(Tank.Stats["duration"]["max_duration"])
	$Panel/Duration/ProgressBar.set_min(Tank.Stats["duration"]["min_duration"])
	$Panel/Regen/ProgressBar.set_max(Tank.Stats["regen"]["max_regen"])
	$Panel/Regen/ProgressBar.set_min(Tank.Stats["regen"]["min_regen"])
	$Panel/Speed/ProgressBar.set_max(Tank.Stats["speed"]["max_speed"])
	$Panel/Speed/ProgressBar.set_min(Tank.Stats["speed"]["min_speed"])
	$Panel/Straff/ProgressBar.set_max(Tank.Stats["straff"]["max_straff"])
	$Panel/Straff/ProgressBar.set_min(Tank.Stats["straff"]["min_straff"])
	$Panel/Sida/ProgressBar.set_max(Tank.Stats["sida"]["max_sida"])
	$Panel/Sida/ProgressBar.set_min(Tank.Stats["sida"]["min_sida"])
	$Panel/Farmer/ProgressBar.set_max(Tank.Stats["farmer"]["max_farmer"])
	$Panel/Farmer/ProgressBar.set_min(Tank.Stats["farmer"]["min_farmer"])
	$Panel/Luck/ProgressBar.set_max(Tank.Stats["luck"]["max_luck"])
	$Panel/Luck/ProgressBar.set_min(Tank.Stats["luck"]["min_luck"])
	$Panel/Penetration/ProgressBar.set_max(Tank.Stats["penetration"]["max_penetration"])
	$Panel/Penetration/ProgressBar.set_min(Tank.Stats["penetration"]["min_penetration"])
	$Panel/Fist/ProgressBar.set_max(Tank.Stats["fist"]["max_fist"])
	$Panel/Fist/ProgressBar.set_min(Tank.Stats["fist"]["min_fist"])
	$Panel/Godmod/ProgressBar.set_max(Tank.Stats["godmod"]["max_godmod"])
	$Panel/Godmod/ProgressBar.set_min(Tank.Stats["godmod"]["min_godmod"])
	$Panel/Size/ProgressBar.set_max(Tank.Stats["size"]["max_size"])
	$Panel/Size/ProgressBar.set_min(Tank.Stats["size"]["min_size"])
	$Panel/Camera/ProgressBar.set_max(Tank.Stats["camera"]["max_camera"])
	$Panel/Camera/ProgressBar.set_min(Tank.Stats["camera"]["min_camera"])
	$Panel/Lifesteal/ProgressBar.set_max(Tank.Stats["lifesteal"]["max_lifesteal"])
	$Panel/Lifesteal/ProgressBar.set_min(Tank.Stats["lifesteal"]["min_lifesteal"])


func _process(delta):
	$Panel/Health/ProgressBar.value = Tank.Stats["health"]["health_value"]
	$Panel/Attack/ProgressBar.value = Tank.Stats["attack"]["attack_value"]
	$Panel/Defense/ProgressBar.value = Tank.Stats["defense"]["defense_value"]
	$Panel/Reload/ProgressBar.value = Tank.Stats["reload"]["reload_value"]
	$Panel/sspeed/ProgressBar.value = Tank.Stats["shoot_speed"]["shoot_speed_value"]
	$Panel/Duration/ProgressBar.value = Tank.Stats["duration"]["duration_value"]
	$Panel/Regen/ProgressBar.value = Tank.Stats["regen"]["regen_value"]
	$Panel/Speed/ProgressBar.value = Tank.Stats["speed"]["speed_value"]
	$Panel/Straff/ProgressBar.value = Tank.Stats["straff"]["straff_value"]
	$Panel/Sida/ProgressBar.value = Tank.Stats["sida"]["sida_value"]
	$Panel/Farmer/ProgressBar.value = Tank.Stats["farmer"]["farmer_value"]
	$Panel/Luck/ProgressBar.value = Tank.Stats["luck"]["luck_value"]
	$Panel/Penetration/ProgressBar.value = Tank.Stats["penetration"]["penetration_value"]
	$Panel/Lifesteal/ProgressBar.value = Tank.Stats["lifesteal"]["lifesteal_value"]
	$Panel/Fist/ProgressBar.value = Tank.Stats["fist"]["fist_value"]
	$Panel/Godmod/ProgressBar.value = Tank.Stats["godmod"]["godmod_value"]
	$Panel/Size/ProgressBar.value = Tank.Stats["size"]["size_value"]
	$Panel/Camera/ProgressBar.value = Tank.Stats["camera"]["camera_value"]
	$Label.text = "Skill points : " + str(Tank.point)


func _add_stat(arg):
	if(Tank.Stats[arg][arg+"_value"] < Tank.Stats[arg]["max_"+arg] and Tank.point > 0  ):
		Tank.Stats[arg][arg] += 1 
		Tank._update_stat()
		Tank.point -= 1

func _on_Health_pressed():
	_add_stat("health")


func _on_Attack_pressed():
	_add_stat("attack")


func _on_Defense_pressed():
	_add_stat("defense")


func _on_Reload_pressed():
	_add_stat("reload")


func _on_sspeed_pressed():
	_add_stat("shoot_speed")


func _on_Duration_pressed():
	_add_stat("duration")


func _on_Regen_pressed():
	_add_stat("regen")


func _on_Speed_pressed():
	_add_stat("speed")


func _on_Straff_pressed():
	_add_stat("straff")


func _on_Sida_pressed():
	_add_stat("sida")


func _on_Farmer_pressed():
	_add_stat("farmer")


func _on_Luck_pressed():
	_add_stat("luck")

func _on_Pentration_pressed():
	_add_stat("penetration")


func _on_Lifesteal_pressed():
	_add_stat("lifesteal")


func _on_Godmod_pressed():
	_add_stat("godmod")

func _on_Size_pressed():
	_add_stat("size")


func _on_Camera_pressed():
	_add_stat("camera")

func _on_Fist_pressed():
	_add_stat("fist")

	
	

