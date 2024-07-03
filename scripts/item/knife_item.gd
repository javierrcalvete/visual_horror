extends Sprite2D


const KnifeItem = preload("res://inventory/resources/knife.tres")

var item_name = KnifeItem.item_name
var item_damage =KnifeItem.item_damage

var stats: ItemData = null:
	set(value):
		stats = value
		
		if value != null:
			texture = value.item_texture
		


func _ready():
	self.visible = false
	stats = KnifeItem
	



