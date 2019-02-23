extends Area2D

export(int) var y_direction

func _on_area_entered(area):
	if area.get_name() == "Ball":
		area.direction.y = y_direction
