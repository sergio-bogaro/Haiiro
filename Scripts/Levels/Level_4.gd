extends Node2D

var inside
var open = false

func _on_Area2D_body_entered(body):
	inside = true
	
func _on_Area2D_body_exited(body):
	inside = false

func _input(event):
	if inside == true:
		if event.is_action_pressed("ui_select"):
			if open == false:
				$Door/AnimationPlayer.play("OpenDoor")
				$Door.add_to_group("Pass")
				open = true
					
			else:
				$Door/AnimationPlayer.play_backwards("OpenDoor")
				$Door.remove_from_group("Pass")
				open = false


