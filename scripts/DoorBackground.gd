extends Sprite2D





func _ready() -> void:
	$AnimationPlayer.play("fade_in")
	


func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	var animation_finishes=anim_name

	DialogueManager.show_dialogue_balloon(load("res://dialogue/main.dialogue"), "start")




func _on_control_mouse_entered():
	pass
	#get_tree().change_scene_to_file("res://scenes/level_2.tscn")


func _on_control_mouse_exited() -> void:
	print("mouse exit")

# func for clicking the door and changin scenes,
func _on_mouse_signal_door_gui_input(event) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.is_released() and Level1Manager.prisioner1_dialogue_finish:
		
			get_tree().change_scene_to_file("res://scenes/level_2.tscn")
