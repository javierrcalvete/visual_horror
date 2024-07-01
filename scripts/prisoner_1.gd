extends Node2D


@onready var animation_enter: AnimationPlayer = $Sprite2D/AnimationPlayer

func _ready() -> void:
	animation_enter.stop()
	
	
	
	

func start_prisoner1():
	animation_enter.play()
	
