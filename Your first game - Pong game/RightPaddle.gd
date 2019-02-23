extends Area2D

var speed = 150

func _process(delta):
	if Input.is_action_pressed("right_move_up"):
		position.y -= speed * delta
	if Input.is_action_pressed("right_move_down"):
		position.y += speed * delta


func _on_RightPaddle_area_entered(area):
	randomize()
	if area.get_name() == "Ball":
		var ball_x_direction = -1
		var ball_y_direction = rand_range(-1, 1)
		area.direction = Vector2(ball_x_direction, ball_y_direction)
