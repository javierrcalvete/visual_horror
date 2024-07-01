extends Node

@onready var prisoner_1: Node2D = get_node("../GAME/Level_1/Prisoner1")

var prisoner1_enter : bool = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func prisoner1_start():
	
		prisoner_1.start_prisoner1()
	

