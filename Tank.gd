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
		"min_health":20,
		"max_health":100,
		"health":0,
		"health_value":0
	},
	"attack":{
		"min_attack":2,
		"max_attack":12,
		"attack":0,
		"attack_value":0
	},
	"defense":{
		"min_defense":5,
		"max_defense":25,
		"defense":0,
		"defense_value":0
	},
	"reload":{
		"min_reload":2.0,
		"max_reload":0.64,
		"reload":0,
		"reload_value":0
	},
	"shoot_speed":{
		"min_shoot_speed":1500,
		"max_shoot_speed":5000,
		"shoot_speed":0,
		"shoot_speed_value":0
	},
	"duration":{
		"min_duration":3,
		"max_duration":10,
		"duraton":0,
		"duration_value":0
	},
	"regen":{
		
	}
	
	
	
	
	
}





#health 
var max_health = 100
var min_health = 20
var health = 1
var pv_value

#attack
var max_attack = 35
var min_attack = 7
var attack = 1
var att_value

#defense
var max_defense = 30
var min_defense = 2
var defense = 1
var def_value

#reload 
var max_reload = 2.0
var min_reload = 0.64
var reload = 1
var reload_value

#shoot speed 
var max_sspeed = 5000
var min_sspeed = 1500
var sspeed = 1
var sspeed_value

#duration 
var max_duration = 35
var min_duration = 7
var duration = 1
var duration_value

#regen 
var max_regen = 12
var min_regen = 1
var regen = 1
var regen_value

#speed 
var max_speed = 1500
var min_speed = 1500
var speed = 1
var speed_value

#straf 
var max_straf = 100
var min_straf = 2
var straf = 1
var straf_value

#sida 
var max_sida = [15,15]
var min_sida = [2,2]
var sida = 1
var sida_value

#farmer 
var max_farmer = 400
var min_farmer = 00
var farmer = 1
var farmer_value

#luck 
var max_luck = 100
var min_luck = 0
var luck = 1
var luck_value

#penetration 
var max_penetration = 15
var min_penetration = 1
var penetration = 1
var penetration_value

#lifesteal 
var max_lifesteal = 50
var min_lifesteal = 0
var lifesteal = 15
var lifesteal_value

#fist 
var max_fist = 40
var min_fist = 5
var fist = 1
var fist_value

#godmod 
var max_godmod = 50
var min_godmod = 5
var godmod = 1
var godmod_value

#size 
var max_size = 100
var min_size = 2
var size = 1
var size_value

#camera range
var max_camera = 500
var min_camera = 0
var camera = 1
var camera_value

#degat_carre
var degat_carre = 1

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
	pass


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
				
				
func _set_stat(stat):
	pv_value = min_health + ((max_health - min_health) * health)
	att_value = min_attack + ((max_attack - min_attack) * attack)
	pv_value = min_health + ((max_health - min_health) * health)
	pv_value = min_health + ((max_health - min_health) * health)
	pv_value = min_health + ((max_health - min_health) * health)
	pv_value = min_health + ((max_health - min_health) * health)
	pv_value = min_health + ((max_health - min_health) * health)
	pv_value = min_health + ((max_health - min_health) * health)
	
	
	
	
	
			
	
	

