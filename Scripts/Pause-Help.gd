extends CanvasLayer

func _input(event):
	if event.is_action_pressed("ui_reset"):
		get_tree().reload_current_scene()
		
	if event.is_action_pressed("ui_cancel"):
		if $Help.visible == false:
			$Pause.aparece()
	
	if event.is_action_pressed("Help"):
		if $Pause.visible == false:
			$Help.aparece()
			
	if event.is_action_pressed("ui_objective"):
		$Objetivo.aparece()

