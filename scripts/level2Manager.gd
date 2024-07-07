extends Node



@onready var inventory: Control = get_node("../Level2/Inventory")
@onready var knife_item: Node2D = get_node("../Level2/KnifeItem")
@onready var enemy: Node2D

var animation_player: AnimationPlayer
var knife_was_found :bool = false
var player_action:bool = false
#hides the knife when found
func knife_found():
	
	print(knife_item)
	knife_item.hide()
# hardcoded slot for testing
	#inventory.show_item_slot(0)
	knife_was_found = true

#call for animation of the enemy and shows the inventory
func enemy_1_enter():
	inventory.show_item_slot(0)
	enemy = get_node("../Level2/Enemy_1")
	enemy.show()
	animation_player = get_node("../Level2/Enemy_1/Sprite2D/AnimationPlayer")
	animation_player.play("fade_in")
	

func battle_enemy_1():
	#print(str(inventory.damage_item_selected))
	
	if enemy.enemy_1_health > 2 and enemy.enemy_1_health <=10:
		enemy.enemy_1_health -= inventory.damage_item_selected
		print(enemy.enemy_1_health)
		player_action = true
	else:
		animation_player.play("fade_out")
				
