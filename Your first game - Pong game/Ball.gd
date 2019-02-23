extends Area2D

export var speed = 200
export(int) var x_direction = 1
var direction = Vector2()
var initial_position

func _ready():
	initial_position = self.position
	direction = Vector2(x_direction, 0)

func _process(delta):
	position += direction * speed * delta
	
func reset():
	self.position = initial_position
	direction = Vector2(x_direction, 0)

