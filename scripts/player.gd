extends Node2D

var dir:Vector2 = Vector2.ZERO
@export var speed = 5

func _physics_process(delta: float) -> void:
	position += dir *speed
