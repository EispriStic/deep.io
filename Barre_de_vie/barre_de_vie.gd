extends TextureProgress


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	value = get_tree().root.get_node('Main').get_node('Tank_de_base').sante
