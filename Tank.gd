extends Node2D

#Stat, tel que

#vie : max_health, min_health, health
#attack : max_attack, min attack, attack 
#defense : min_def, max_def, def  
#reload : max_reload, min_reload, reload 
#shoot speed : max_sspeed, min_sspeed, sspeed 
#duration : max_duration, min_duration, duration 
#regen : max_regen, min_regen, regen 
#speed : max_speed, min_speed, speed 
#straf : min_straf, max_straf, straf 
#sida : min_sida, max_sida, sida
#farmer : min_farmer, max_farmer, farmer 
#luck : min_luck, max_luck, luck 
#penetration : min_penetration, max_penetration, penetration
#lifesteal : lifsteal_min, life_steal_max, lifesteal
#fist : min_fist, max_fist, fist 
#godmod : min_godmod, max_godmod, godmod 
#size : min_size, max_size, size 
#range : min_range, max_range, range 

# Création de variables pour le démarrage de la partie 


var Stats = {
	
	"health":{
		"min_health":35.0,
		"max_health":150.0,
		"health":0,
		"health_value":0.0,
		"pv":0.0
	},
	"attack":{
		"min_attack":4.0,
		"max_attack":16.0,
		"attack":0,
		"attack_value":00
	},
	"defense":{
		"min_defense":5.0,
		"max_defense":25.0,
		"defense":0,
		"defense_value":0.0
	},
	"reload":{
		"min_reload":2.0,
		"max_reload":40.0,
		"reload":0,
		"reload_value":0.0
	},
	"shoot_speed":{
		"min_shoot_speed":1800.0,
		"max_shoot_speed":7500.0,
		"shoot_speed":0,
		"shoot_speed_value":0.0
	},
	"duration":{
		"min_duration":0.5,
		"max_duration":10.0,
		"duration":0,
		"duration_value":0.0
	},
	"regen":{
		"min_regen":2.0,
		"max_regen":15.0,
		"regen":0,
		"regen_value":0.0
	},
	"speed":{
		"min_speed":850.0,
		"max_speed":3500.0,
		"speed":0,
		"speed_value":0.0
	},
	"straff":{
		"min_straff":0.0,
		"max_straff":100.0,
		"straff":0,
		"straff_value":0.0
	},
	"sida":{
		"min_sida":0.0,
		"max_sida":4.0,
		"sida":0,
		"sida_value":0.0
	},
	"farmer":{
		"min_farmer":0.0,
		"max_farmer":150.0,
		"farmer":0,
		"farmer_value":0.0
	},
	"luck":{
		"min_luck":0.0,
		"max_luck":100.0,
		"luck":0,
		"luck_value":0.0
	},
	"penetration":{
		"min_penetration":1.0,
		"max_penetration":20.0,
		"penetration":0,
		"penetration_value":0.0
	},
	"lifesteal":{
		"min_lifesteal":0.0,
		"max_lifesteal":0.15,
		"lifesteal":0,
		"lifesteal_value":0.0
	},
	"fist":{
		"min_fist":1.0,
		"max_fist":23.0,
		"fist":0,
		"fist_value":0.0
	},
	"godmod":{
		"min_godmod":0.0,
		"max_godmod":15.0,
		"godmod":0,
		"godmod_value":0.0
	},
	"size":{
		"min_size":100.0,
		"max_size":500.0,
		"size":0,
		"size_value":0.0
	},
	"camera":{
		"min_camera":100.0,
		"max_camera":300.0,
		"camera":0,
		"camera_value":0.0
	}
	

}

var degat_carre = 2
var degat_triangle = 5
var degat_pentagone = 15
var degat_hexagone = 25

#xp : xp
#level: max_level, level
onready var xp = 0
onready var level = 1
onready var xp_need = 25+level*(1+level)

var class_up = {"0":"Tank_de_base", "01":"Tank_test", "02":"Autre_tank"}
var up_tree = "0"
var level_up_refer = [15,30,45,60,85,100]
var befor_evolve = []
var current_select = false

var spawn_tank
var pos = Vector2(0,0)
var point = 0
var nombre_carre = 0
var nombre_triangle = 0
var nombre_pentagone = 0
var nombre_hexagone = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	_set_stat()
	Stats["health"]["pv"] = Stats["health"]["health_value"]



func _process(delta):
	xp_need = 25*(level+1)*(1+level+1)
	_is_level_up()
	_update_tank()


	


		
func _is_level_up():
	xp_need = 25*(level+1)*(1+(level+1))
	if xp >= xp_need:
		var gain = 0
		while xp >= xp_need:
			level += 1
			point += 1
			xp_need = 25*(level+1)*(1+(level+1))
			xp -= xp_need
	
		xp = xp
	return level
		
				
func _update_stat():
	for stat in Stats:
		for attribut in Stats[stat]:
			if attribut.ends_with("value"):
				Stats[stat][attribut] = Stats[stat]["min_"+stat] + (((Stats[stat]["max_"+stat] - Stats[stat]["min_"+stat]) /15) * Stats[stat][stat])
		
func _set_stat():
	for stat in Stats:
		for attribut in Stats[stat]:
			if attribut == stat:
				Stats[stat][attribut] = 0
	_update_stat()
	
func _update_tank():
	if level >= level_up_refer[len(up_tree) - 1]:
		if len(befor_evolve) < len(up_tree):
			befor_evolve.append(up_tree[len(up_tree) - 1])
		if befor_evolve[len(befor_evolve)-1] == up_tree:
			current_select = true


func _tank_choice(node):
	node.hide()
	
func change_tank(node, arg):
	var new_tank = load("res://Player/"+class_up[up_tree]+".tscn").instance()
	for i in node.get_children():
		node.remove_child(i)
	node.add_child(new_tank)
	
		
		
				
	


	
	

	
	
			
	
	


