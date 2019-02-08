extends Node

var raindrop_scene = preload("res://RainDrop.tscn")

func _ready():
	$Cloud.connect("rain", self, "_on_cloud_pressed")
	
func _on_cloud_pressed():
	var raindrop = raindrop_scene.instance()
	raindrop.position = get_viewport().get_mouse_position()
	add_child(raindrop)