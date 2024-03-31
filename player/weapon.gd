extends Node2D

var weapon: Area2D

# Called when the node enters the scene tree for the first time.
func _ready():
	if get_children().is_empty(): return
	
	weapon = get_children()[0]
	
func enable():
	if !weapon: return
	
	visible = true
	weapon.enable()

func disable():
	if !weapon: return
	
	visible = false
	weapon.disable()
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
