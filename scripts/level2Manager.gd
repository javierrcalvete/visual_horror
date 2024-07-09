extends Node



@onready var inventory: Control
@onready var knife_item: Node2D
@onready var enemy: Node2D
@onready var player_label_health: Label
var syrenge_item: Node2D

var animation_player: AnimationPlayer
var knife_was_found :bool = false
var player_action:bool = false
var enemy_took_damage_finish:bool = false
#hides the knife when found
func knife_found():
	
	knife_item  = get_node("../Level2/KnifeItem")
	knife_item.hide()
# hardcoded slot for testing
	#inventory.show_item_slot(0)
	knife_was_found = true

func syrenge_found():
	syrenge_item = get_node("../Level2/SyringeItem")
	syrenge_item.show()

func syringe_hide():
	syrenge_item.hide()
#call for animation of the enemy and shows the inventory
func enemy_1_enter():
	inventory = get_node("../Level2/Inventory")
	player_label_health = get_node("../Level2/PlayerHealth")
	player_label_health.text = str(Player.player_health)
	inventory.show_item_slot(0)
	enemy = get_node("../Level2/Enemy_1")
	enemy.show()
	animation_player = get_node("../Level2/Enemy_1/Sprite2D/AnimationPlayer")
	animation_player.play("fade_in")
	


# damage enemy and loads dialogue for enemy damage to him and to you
func battle_enemy_1():
	#print(str(inventory.damage_item_selected))
		
		if enemy.enemy_1_health > 2 and enemy.enemy_1_health <=10:
			enemy.enemy_1_health -= inventory.damage_item_selected
			#print(enemy.enemy_1_health)
			DialogueManager.show_dialogue_balloon(load("res://dialogue/main.dialogue"), "enemy_1_damage")
			#if  enemy_took_damage_finish == true:
				#enemy_does_damage()
		else:
			animation_player.play("fade_out")
			player_label_health.hide()
	
				

func enemy_does_damage():
	
	Player.player_health -= enemy.enemy_damage
	player_label_health.text = str(Player.player_health)
	DialogueManager.show_dialogue_balloon(load("res://dialogue/main.dialogue"), "enemy_1_does_damage")


