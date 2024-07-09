extends Control





var inventory_dictionary= {}
var damage_item_selected: int
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


# ser for item in enventory in the position (place) and shows the texture
func show_item_slot(place):
	var sprite_2d: Sprite2D = get_node("/root/Level2/Inventory/BoxContainer/Sprite2D")
	var label_weapon: Label = get_node("/root/Level2/Inventory/BoxContainer/Label")
	var label_damage: Label = get_node("/root/Level2/Inventory/BoxContainer/LabelDamage")
	
	
	#var item_inventory_slot: Sprite2D = $/root/Level2/CenterContainer/Sprite2D
	
	sprite_2d.texture = inventory_dictionary.values()[place].texture
	
	label_weapon.text = inventory_dictionary.values()[place].item_name
	label_damage.text = str(inventory_dictionary.values()[place].item_damage)
	damage_item_selected = inventory_dictionary.values()[place].item_damage

