extends Sprite2D


const KnifeItem = preload("res://inventory/resources/knife.tres")

var stats: ItemData = null:
	set(value):
		stats = value
		
		if value != null:
			texture = value.item_texture
		


func _ready():
	stats = KnifeItem
	print(KnifeItem.item_damage)
	
