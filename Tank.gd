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

#health 
var max_health = 100
var min_health = 20
var health = 1

#attack
var max_attack = 35
var min_attack = 7
var attack = 1

#defense
var max_defense = 30
var min_defense = 2
var defense = 1

#reload 
var max_reload = 2.0
var min_reload = 0.64
var reload = 1

#shoot speed 
var max_sspeed = 5000
var min_sspeed = 1500
var sspeed = 1

#duration 
var max_duration = 35
var min_duration = 7
var duration = 1

#regen 
var max_regen = 12
var min_regen = 1
var regen = 1

#speed 
var max_speed = 1500
var min_speed = 500
var speed = 1

#straf 
var max_straf = 100
var min_straf = 2
var straf = 1

#sida 
var max_sida = [15,15]
var min_sida = [2,2]
var sida = 1

#farmer 
var max_farmer = 400
var min_farmer = 00
var farmer = 1

#luck 
var max_luck = 100
var min_luck = 0
var luck = 1

#penetration 
var max_penetration = 15
var min_penetration = 1
var penetration = 1

#lifesteal 
var max_lifesteal = 50
var min_lifesteal = 0
var lifesteal = 15

#fist 
var max_fist = 40
var min_fist = 5
var fist = 1

#godmod 
var max_godmod = 50
var min_godmod = 5
var godmod = 1

#size 
var max_size = 100
var min_size = 2
var size = 1

#camera range
var max_camera = 500
var min_camera = 0
var camera = 1




#xp : xp
#level: max_level, level
var xp = 0
var level = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.

