extends Control

onready var root = get_node(".")

func _on_BackButton_pressed():
	self.hide()


func _on_ControlsButton_pressed():
	$Controls.show()


func _on_BackControls_pressed():
	$Controls.hide()

