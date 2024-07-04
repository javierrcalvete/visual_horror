extends Node






func knife_found():
	var inventory: Control = get_node("../Level2/Inventory")
	var knife_item: Node2D = get_node("../Level2/KnifeItem")
	print(knife_item)
	knife_item.queue_free()
# hardcoded slot for testing
	inventory.show_item_slot(0)

func enemy_1_battle():
	var enemy: Node2D = get_node("../Level2/Enemy_1")
