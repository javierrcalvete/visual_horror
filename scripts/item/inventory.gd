extends Control




var inventory_dictionary= {}

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


# ser for item in enventory in the positio (place) and shows the texture
func show_item_slot(place):
	var sprite_2d: Sprite2D = $BoxContainer/Sprite2D
	var label_weapon: Label = $BoxContainer/Label
	
	#var item_inventory_slot: Sprite2D = $/root/Level2/CenterContainer/Sprite2D
	
	sprite_2d.texture = inventory_dictionary.values()[place].texture
	print(inventory_dictionary.values()[place].item_name)
	label_weapon.text = inventory_dictionary.values()[place].item_name

