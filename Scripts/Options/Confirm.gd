extends Control


func _on_ConfirmQuit_pressed():
	get_tree().quit()


func _on_NoConfirmQuit_pressed():
	self.hide()
