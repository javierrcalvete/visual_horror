extends Sprite2D


@onready var knife_item: Sprite2D = $"../KnifeItem"


	

	

func _on_hallway_animation_player_animation_finished(anim_name: StringName) -> void:
	var animation_finishes=anim_name
	DialogueManager.show_dialogue_balloon(load("res://dialogue/main.dialogue"), "level_2")


# func for clicking in the blood and finding the knife
func _on_mouse_signal_knife_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.is_released():
		if !Inventory.inventory_dictionary.has("Knife"):
			Inventory.inventory_dictionary["Knife"] = knife_item
			DialogueManager.show_dialogue_balloon(load("res://dialogue/main.dialogue"), "knife_found")
			knife_item.visible = true
			print(Inventory.inventory_dictionary)
