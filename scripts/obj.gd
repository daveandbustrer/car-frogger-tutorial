extends StaticBody2D

@export var img:CompressedTexture2D
enum shape_type {RectangleShape2D}
@export var type:shape_type
@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print(type,RectangleShape2D)
	#collision_shape_2d.shape = type
	$Sprite2D.texture = img
	var size = img.get_size()- Vector2(0,2)
	var shape = collision_shape_2d.shape
	if shape is RectangleShape2D:
		shape.size = size
