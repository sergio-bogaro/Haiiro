extends Control

func _ready():
	pass # Replace with function body.

func _on_StartButton_pressed():
	get_tree().change_scene("res://Scenes/Levels/Level1.tscn")

func _on_OptionsButton_pressed():
	get_tree().change_scene("res://Scenes/Options.tscn")

func _on_QuitButton_pressed():
	get_tree().quit()
