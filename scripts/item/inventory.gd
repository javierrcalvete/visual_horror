extends Control





var inventory_dictionary= {}
var damage_item_selected: int
var count_key_dictionary:int = 0
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
	var button_right: Button = get_node("/root/Level2/Inventory/BoxContainer/Control/Button")
	#var item_inventory_slot: Sprite2D = $/root/Level2/CenterContainer/Sprite2D
	button_right.show()
	sprite_2d.texture = Inventory.inventory_dictionary[place].texture
	
	label_weapon.text = Inventory.inventory_dictionary[place].item_name
	label_damage.text = str(Inventory.inventory_dictionary[place].item_damage)
	damage_item_selected = Inventory.inventory_dictionary[place].item_damage




func _on_button_pressed() -> void:
	# Inventory.show_item_slot(1)
	# var place: int = 0
	# show_item_slot(inventory_dictionary[place+1])
	var name_place_of_key: String
	var keys_dictionary = Inventory.inventory_dictionary.keys()

	
	# print(keys_dictionary[count_key_dictionary])
	print(count_key_dictionary)
	if keys_dictionary.size() > count_key_dictionary:
		name_place_of_key = keys_dictionary[count_key_dictionary]
		count_key_dictionary+=1
		
	else:
		count_key_dictionary =0
	
	print(count_key_dictionary)
	print(name_place_of_key)
	show_item_slot(name_place_of_key)