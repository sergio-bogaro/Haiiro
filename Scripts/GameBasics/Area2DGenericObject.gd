extends Node2D

export var signText = ""
var inside = false


func _on_Area2D_body_entered(body):
	if(body.is_in_group('player')):
		inside = true

func _on_Area2D_body_exited(body):
	if(body.is_in_group('player')):
		inside = false

func _input(event):
	if inside == true:
		if event.is_action_pressed("ui_accept"):
			TextBox.queue_text(signText)

