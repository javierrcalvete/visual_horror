extends Sprite2D


@onready var knife_item: Sprite2D = $"../KnifeItem"
@onready var inventory: Control = $"../Inventory"


	

	
# starts the dialogue for lvl2
func _on_hallway_animation_player_animation_finished(anim_name: StringName) -> void:
	var animation_finishes=anim_name
	DialogueManager.show_dialogue_balloon(load("res://dialogue/main.dialogue"), "level_2")


# func for clicking in the blood and finding the knife
func _on_mouse_signal_knife_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.is_released():
		if !inventory.inventory_dictionary.has("Knife"):
			inventory.inventory_dictionary["Knife"] = knife_item
			DialogueManager.show_dialogue_balloon(load("res://dialogue/main.dialogue"), "knife_found")
			knife_item.visible = true
			$MouseSignalKnife.queue_free()
			#print(Inventory.inventory_dictionary)
			
