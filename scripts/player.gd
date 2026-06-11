extends CharacterBody2D
@onready var character = $char

var dir:Vector2 = Vector2.ZERO
@export var speed:int = 200
@export var cam:Camera2D
func _ready() -> void:
	if cam is Camera2D:
		cam.position_smoothing_enabled = true
		cam.position_smoothing_speed = speed*0.1
	else:
		print("error")
func _physics_process(_delta: float) -> void:
	dir = Input.get_vector("left","right","up","down")
	velocity = dir*speed
	animate()
	move_and_slide()
	
	if Input.is_action_just_pressed("space"):
		print("somthing")
	

func animate():
	if dir:
		character.flip_h = dir.x > 0
		if dir.x != 0:
			character.animation = "left"
		else:
			character.animation = "up" if dir.y <  0 else "down"
	else:
		character.frame = 0
		
