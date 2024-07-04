extends Node



@onready var inventory: Control = get_node("../Level2/Inventory")


var knife_was_found :bool = false

#hides the knife when found
func knife_found():
	var knife_item: Node2D = get_node("../Level2/KnifeItem")
	print(knife_item)
	knife_item.hide()
# hardcoded slot for testing
	#inventory.show_item_slot(0)
	knife_was_found = true

#call for animation of the enemy and shows the inventory
func enemy_1_battle():
	inventory.show_item_slot(0)
	var enemy: Node2D = get_node("../Level2/Enemy_1")
	enemy.show()
	var animation_player: AnimationPlayer = get_node("../Level2/Enemy_1/Sprite2D/AnimationPlayer")
	animation_player.play("fade_in")

