extends Node2D

var car_scene = preload("res://scenes/car.tscn")


func _on_car_timer_timeout() -> void:
	var car = car_scene.instantiate() as Area2D
	var pos_marker = $CarStartPositions.get_children().pick_random()  as Marker2D
	car.position = pos_marker.position
	$objs.add_child(car)
	car.connect("body_entered",go_to_title)
	car.y_sort_enabled = true

func go_to_title(body):
	print(body)
	print("player car collsiion")


func _on_finish_body_entered(body: Node2D) -> void:
	print(str(body)+"has entered")
