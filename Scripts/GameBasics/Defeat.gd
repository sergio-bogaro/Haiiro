extends Node2D

func _on_Area2D_body_entered(body):
	body.visible = false
	body.remove_from_group('player')
