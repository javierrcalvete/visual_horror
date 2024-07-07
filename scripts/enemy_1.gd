extends Node2D

@onready var animation_player: AnimationPlayer = $Sprite2D/AnimationPlayer
@onready var health_label: Label = $Sprite2D/Health

var death_animation_finish:bool = false
var enemy_damage:int = 1

func _ready() -> void:
	self.hide()

var enemy_1_health: int = 10
var click_on_enemy: bool = false
var finish_fade_out:bool = false

# click in the img to deal damage
func _on_damage_area_gui_input(event: InputEvent) -> void:
	
		if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.is_released():
			
			Level2Manager.battle_enemy_1()
			health_label.text = str(enemy_1_health)
			



func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	if anim_name == "fade_out":
		self.queue_free()
		death_animation_finish = true
		DialogueManager.show_dialogue_balloon(load("res://dialogue/main.dialogue"), "enemy_1_death")
