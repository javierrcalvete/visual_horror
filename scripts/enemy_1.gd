extends Node2D

@onready var animation_player: AnimationPlayer = $Sprite2D/AnimationPlayer

func _ready() -> void:
	self.hide()

var enemy_1_health: int = 10
var click_on_enemy: bool = false

# click in the img to deal damage
func _on_damage_area_gui_input(event: InputEvent) -> void:
	
		if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.is_released():
			
			Level2Manager.battle_enemy_1()
			

