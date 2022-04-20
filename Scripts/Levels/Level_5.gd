extends Node2D

var pos
var num = 0

func _ready():
	pass


func _on_Area2D_body_entered(body):
	$Player2.show()


func _on_Area2D_body_exited(body):
	$Player2.hide()


func _on_Goal_body_entered(body):
	num = num + 1
	if num == 2:
		$Goal/Popup.popup()
		timer(2.0)

func _on_Goal_body_exited(body):
	num = num - 1

func _on_Goal2_body_entered(body):
	num = num + 1
	if num == 2:
		$Goal/Popup.popup()
		timer(2.0)

func _on_Goal2_body_exited(body):
	num = num - 1


func timer(time):
	yield(get_tree().create_timer(time), "timeout")
	return(get_tree().change_scene("res://Scenes/Levels/Level_" + str(1 + int(get_tree().current_scene.name)) + ".tscn"))

