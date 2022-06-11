extends Sprite

export var buttonNumber = 0
onready var level = get_node("..")
var inside = false

func _on_Area2D_body_entered(body):
	if body.is_in_group('player'):
		inside = true
	
func _on_Area2D_body_exited(body):
	if body.is_in_group('player'):
		inside = false

func _input(event):
	if event.is_action_pressed("ui_select"):
		if inside == true:
			SoundPlayer.clickSound()
			level.buttonFunction(buttonNumber)


func _on_Area2D_area_entered(area):
	inside = true


func _on_Area2D_area_exited(area):
	inside = false
