extends Node

var save_path = "user://save.dat"
var savedData = {}

onready var level_path = "res://Scenes/GameLevels/" + get_tree().current_scene.name

func _ready():
	var file = File.new()
	var error = file.open(save_path, File.WRITE)
	if error == OK:
		savedData["current_level"] = level_path
		file.store_var(savedData)
		file.close()
