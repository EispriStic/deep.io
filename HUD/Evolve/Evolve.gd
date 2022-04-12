extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func stop():
	$Panel.hide()
	$Panel/Button.disabled = true
	$Panel/Button2.disabled = true
	$Panel/Button3.disabled = true
	$Panel/Button4.disabled = true

func start():
	$Panel.show()
	$Panel/Button.disabled = false
	$Panel/Button/Sprite.texture = load(("res://Asset/Player/"+Tank.class_up[Tank.up_tree + "1"]+".png"))
	print("res://Asset/Player/"+Tank.class_up[Tank.up_tree + "1"][0]+".png")
	$Panel/Button2.disabled = false
	$Panel/Button3.disabled = false
	$Panel/Button4.disabled = false
	
# Called when the node enters the scene tree for the first time.
func _ready():
	
	stop()
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Tank.current_select:
		start()


func _on_Button_pressed():
	stop()
	Tank.up_tree += "1"
	Tank.current_select = false
	print(Tank.up_tree)
	Tank.change_tank(Tank.spawn_tank, 0)


func _on_Button2_pressed():
	stop()
	Tank.up_tree += "2"
	print(Tank.up_tree)


func _on_Button3_pressed():
	stop()
	Tank.up_tree += "3"
	print(Tank.up_tree)


func _on_Button4_pressed():
	stop()
	Tank.up_tree += "4"
	print(Tank.up_tree)
