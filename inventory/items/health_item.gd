class_name HealthItem extends InventoryItem

@export var health_increase: int = 1

func use(player: Player) -> void:
	player.increase_health(health_increase)
