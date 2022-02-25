extends Control



func _on_VideoButton_pressed():
	$VideoPannel.show()


func _on_SongButton_pressed():
	$SongPannel.show()


func _on_BackButton_pressed():
	get_tree().change_scene("res://Scenes/Menu.tscn")
