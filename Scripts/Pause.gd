extends CanvasLayer


func _on_QuitButton_pressed():
	get_node("../Confirm").show()

func pauseCommand():
	get_tree().paused = not get_tree().paused


func _on_OptionsButton_pressed():
	Fade.fade()
	yield(get_tree().create_timer(0.5), "timeout")
	get_node("../Options").show()


func _on_NoConfirmQuit_pressed():
	get_node("../Confirm").hide()


func _on_ConfirmQuit_pressed():
	get_tree().paused = not get_tree().paused
	get_tree().change_scene("res://Scenes/Menu.tscn")
