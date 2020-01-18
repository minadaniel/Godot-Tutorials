extends Area2D

var movementTime = 0
var elapsedTime = 0
var speed = 50
var current_direction = Vector2()
var start_position = Vector2()

func _ready():
	randomize()
	movementTime = rand_range(2, 5)
	current_direction = Vector2(pow(-1, randi() % 2), pow(-1, randi() % 2))
	
func _process(delta):
	if int(elapsedTime) + 0.5 >= int(movementTime):
		current_direction = Vector2(pow(-1, randi() % 2), pow(-1, randi() % 2))
		elapsedTime = 0
	
	position += current_direction * speed * delta
	position.x = clamp(position.x, 32, get_viewport_rect().size.x - 32)
	position.y = clamp(position.y, 32, get_viewport_rect().size.y - 32)
	
	elapsedTime += delta
	
func set_startPosition(x, y):
	self.position.x = x
	self.position.y = y
	
	
	
	