extends Resource

class_name Inventory

signal updated

@export var slots: Array[InventorySlot]

func insert(item: InventoryItem):
	var itemslots = slots.filter(func(slot): return slot.item == item && slot.amount < item.maxAmountPrStack)
	if !itemslots.is_empty():
		itemslots[0].amount += 1
	else:
		var emptySlots = slots.filter(func(slot): return slot.item == null)
		if !emptySlots.is_empty():
			emptySlots[0].item = item
			emptySlots[0].amount = 1
	updated.emit()
