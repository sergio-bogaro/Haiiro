extends Node2D


func _ready():
	$AcceptDialog.popup()


func _on_Area2D_body_entered(body):
	if(body.is_in_group('player')):
		$Popup.popup()
		timer(2.0)


func timer(time):
	yield(get_tree().create_timer(time), "timeout")
	get_tree().change_scene("res://Scenes/Levels/Level2.tscn")
