extends Node2D

var weapon: Area2D
var weapon2: Area2D

# Called when the node enters the scene tree for the first time.
func _ready():
	if get_children().is_empty(): return
	
	weapon = get_children()[1]
	weapon2 = get_children()[0]
func enable():
	if !weapon: return
	weapon2.visible = false
	weapon.visible = true
	weapon.enable()

func disable():
	if !weapon: return
	weapon2.visible = false 
	weapon.visible = false
	weapon.disable()
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
