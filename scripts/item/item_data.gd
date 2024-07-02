class_name  ItemData
extends Resource

enum Type {WEAPON, HEALTH, MAIN}

@export var type: Type

@export var item_name: String

@export var item_damage: int

@export_multiline var description: String

@export var item_texture: Texture2D
