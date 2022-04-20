extends Control

func aparece():
		get_tree().paused = not get_tree().paused
		visible = not visible
