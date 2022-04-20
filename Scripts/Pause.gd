extends Control

func _on_QuitButton_pressed():
	get_tree().paused = not get_tree().paused
	get_tree().change_scene("res://Scenes/Menu.tscn")

func aparece():
	get_tree().paused = not get_tree().paused
	visible = not visible


func _on_OptionsButton_pressed():
	get_node("../Options").show()


func _on_ResumeButton_pressed():
	aparece()
