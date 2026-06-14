extends Area2D

var dir = Vector2.LEFT
var speed = 50

func _ready() -> void:
	if position.x < 0:
		dir.x = 1
		$Sprite2D.flip_h = true
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position += dir*speed*delta


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	if position.x <-200 or position.x >200:
		queue_free()
