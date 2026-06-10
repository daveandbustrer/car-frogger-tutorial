extends Node2D
var size = Vector2(1,1)
var speed = 0.1
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	scale += size*speed
