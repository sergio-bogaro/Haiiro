extends CanvasLayer

onready var visible = false

func showHide():
	if Pause.visible == false:
		get_tree().paused = not get_tree().paused
		if visible == false:
			$Help.show()
			visible = true
			Pause.helpVisible = true
		else:
			$Help.hide()
			visible = false
			Pause.helpVisible = false
