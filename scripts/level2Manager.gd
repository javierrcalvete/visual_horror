extends Node

@onready var inventory: Control = $"../Level2/Inventory"




func knife_found():
	var knife_item: Node2D = get_node("../Level2/KnifeItem")
	print(knife_item)
	knife_item.queue_free()
# hardcoded slot for testing
	inventory.show_item_slot(0)

