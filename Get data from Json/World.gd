extends Node

var enemy_scene = preload("res://Enemy.tscn")

func _ready():
	init_enemies()
	
func init_enemies():
	var level = File.new()
	level.open("res://level_01.json", File.READ)
	var level_dict = parse_json(level.get_as_text())
	
	var enemies_count = level_dict["enemies count"]
	
	var enemies_pos = level_dict["enemies positions"]
	
	for i in range(enemies_count):
		var enemy = enemy_scene.instance()
		var enemyX = enemies_pos[str(i)][0]
		var enemyY = enemies_pos[str(i)][1]
		
		enemy.set_startPosition(enemyX, enemyY)
		add_child(enemy)
	level.close()