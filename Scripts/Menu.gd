extends Control

func _ready():
	pass # Replace with function body.

func _on_StartButton_pressed():
	get_tree().change_scene("res://Scenes/Levels/Level_1.tscn")
	
func _on_QuitButton_pressed():
	get_tree().quit()

func _on_OptionButton_pressed():
	$Options.show()

func _on_ContinueButton_pressed():
	pass # Replace with function body.
