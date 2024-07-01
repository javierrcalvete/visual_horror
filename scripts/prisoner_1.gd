extends Node2D


@onready var animation_enter: AnimationPlayer = $Sprite2D/AnimationPlayer
func _ready() -> void:
	print(GameManagerDialogue.prisoner1_enter)
	#if game_manager.prisoner1_enter:
		#animation_enter.play()
	
