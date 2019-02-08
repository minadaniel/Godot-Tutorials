extends Sprite

signal rain

func _ready():
	pass
	
func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT && event.pressed:
			if mouse_inside_cloud():
				emit_signal("rain")
			
func mouse_inside_cloud():
	var mouse_position = get_viewport().get_mouse_position()
	var bottom_left_x = position.x - texture.get_size().x /2
	var bottom_left_y = position.y + texture.get_size().y /2
	var top_right_x = bottom_left_x + texture.get_size().x
	var top_right_y = bottom_left_y - texture.get_size().y
	return mouse_position.x >= bottom_left_x && mouse_position.x <= top_right_x && mouse_position.y <= bottom_left_y && mouse_position.y >= top_right_y
