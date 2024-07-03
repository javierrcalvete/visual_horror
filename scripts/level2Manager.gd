extends Node





func knife_found():
	var knife_item: Node2D = get_node("/root/Level2/KnifeItem")
	#print(knife_item)
	knife_item.queue_free()
	Inventory.show_item_slot(0)

