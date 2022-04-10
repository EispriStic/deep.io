extends Control


# Called when the node enters the scene tree for the first time.
onready var vie = $Vie

func _ready():
	pass

func _physics_process(delta):
	vie.set_max(Tank.Stats["health"]["health_value"])
	vie.value = Tank.Stats["health"]["pv"]
	print(Tank.Stats["health"]["health_value"])
