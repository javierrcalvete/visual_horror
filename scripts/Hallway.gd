extends Sprite2D




	

	

func _on_hallway_animation_player_animation_finished(anim_name: StringName) -> void:
	var animation_finishes=anim_name
	DialogueManager.show_dialogue_balloon(load("res://dialogue/main.dialogue"), "level_2")


#func _on_mouse_signal_knife_mouse_entered() -> void:
		#if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.is_released():
		#pass
