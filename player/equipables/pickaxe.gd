extends Area2D

@onready var shape = $CollisionShape2D

func enable():
	print("E")
	shape.disabled = false
	
func disable():
	print("D")
	shape.disabled = true
	
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
