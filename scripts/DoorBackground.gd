extends Sprite2D



func _ready() -> void:
	$AnimationPlayer.play("fade_in")
	


func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	var animation_finishes=anim_name

	DialogueManager.show_dialogue_balloon(load("res://dialogue/main.dialogue"), "start")


func _on_area_2d_mouse_entered() -> void:
	print("mouse enter")


func _on_area_2d_mouse_exited() -> void:
	print("mouse exit")
