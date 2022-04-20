extends Sprite

onready var level = get_node("..")
var inside = false

func _on_Area2D_body_entered(body):
	inside = true
	
func _on_Area2D_body_exited(body):
	inside = false

func _input(event):
	if event.is_action_pressed("ui_select"):
		if inside == true:
			level.buttonFunction()
