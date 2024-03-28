extends Control


signal opened
signal closed
var isOpen: bool = false

@onready var inventory: Inventory = preload("res://inventory/playerInventory.tres")
@onready var slots: Array = $NinePatchRect/GridContainer.get_children()

func _ready():
	inventory.updated.connect(update)
	update()

func update():
	for i in range(min(inventory.items.size(), slots.size())):
		print_debug(slots)
		slots[i].update(inventory.items[i])

func open():
	isOpen = true
	visible = true
	opened.emit()
	
func close():
	isOpen = false
	visible = false
	closed.emit()
