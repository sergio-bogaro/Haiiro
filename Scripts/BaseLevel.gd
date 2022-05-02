extends Node2D

var save_path = "user://save.dat"
var savedData = {}

onready var level_path = "res://Scenes/GameLevels/" + get_tree().current_scene.name + ".tscn"

func _ready():
	var file = File.new()
	var error = file.open(save_path, File.WRITE)
	if error == OK:
		savedData["current_level"] = level_path
		file.store_var(savedData)
		file.close()

func _input(event):
	if event.is_action_pressed("ui_reset"):
		Fade.fade()
		yield(get_tree().create_timer(0.5), "timeout")
# warning-ignore:return_value_discarded
		get_tree().reload_current_scene()
		
	if event.is_action_pressed("ui_cancel"):
		if TextBox.textboxContainer.visible == false:
			Pause.apareceSome()
