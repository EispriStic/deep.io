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
		"min_health":20.0,
		"max_health":100.0,
		"health":0,
		"health_value":0.0,
		"pv":0.0
	},
	"attack":{
		"min_attack":2.0,
		"max_attack":12.0,
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
		"min_reload":1.35,
		"max_reload":0.02,
		"reload":0,
		"reload_value":0.0
	},
	"shoot_speed":{
		"min_shoot_speed":1500.0,
		"max_shoot_speed":5000.0,
		"shoot_speed":0,
		"shoot_speed_value":0.0
	},
	"duration":{
		"min_duration":3.0,
		"max_duration":10.0,
		"duration":0,
		"duration_value":0.0
	},
	"regen":{
		"min_regen":1.0,
		"max_regen":6.0,
		"regen":0,
		"regen_value":0.0
	},
	"speed":{
		"min_speed":500.0,
		"max_speed":1500.0,
		"speed":0,
		"speed_value":0.0
	},
	"straf":{
		"min_straf":0.0,
		"max_straf":100.0,
		"straf":0,
		"straf_value":0.0
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
		"max_lifesteal":55.0,
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


#degat_carre
var degat_carre = 10

#degat_triangle
var degat_triangle = 2

#degat_pentagone
var degat_pentagone = 5

#degat_hexagone
var degat_hexagone = 8


#xp : xp
#level: max_level, level
var xp = 0
var level = 0
var up_tree = "1"

var class_up = {"1":["classe1","classe2","classe3"]} #Tableau de propostition de classe

# Called when the node enters the scene tree for the first time.
func _ready():
	_set_stat()
	Stats["health"]["pv"] = Stats["health"]["health_value"]


func _process(delta):
	var xp_require = 0

	if xp > xp_require :
		level += 1
		xp = 0
		_is_level_up(level)
		
func _is_level_up(level):
	var level_up_refer = [20,30,40,50] 
	if level in level_up_refer: 
		var possible_evolution = class_up[up_tree]
		var select_tank 
		for i in len(class_up[up_tree]):
			if select_tank == i:
				up_tree += str(i)
		
				
func _update_stat():
	for stat in Stats:
		for attribut in Stats[stat]:
			if attribut.ends_with("value"):
				Stats[stat][attribut] = Stats[stat]["min_"+stat] + (((Stats[stat]["max_"+stat] - Stats[stat]["min_"+stat]) /15) * Stats[stat][stat])
	print(Stats)
		
func _set_stat():
	for stat in Stats:
		for attribut in Stats[stat]:
			if attribut == stat:
				Stats[stat][attribut] = 10
	_update_stat()
	
				
	


	
	

	
	
			
	
	

