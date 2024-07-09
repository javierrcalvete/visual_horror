extends Sprite2D


const SyrengeItem = preload("res://inventory/resources/syringe.tres")


var item_name = SyrengeItem.item_name
var item_damage =SyrengeItem.item_damage

var stats: ItemData = null:
	set(value):
		stats = value
		
		if value != null:
			texture = value.item_texture
		


func _ready():
	self.visible = false
	stats = SyrengeItem
	
