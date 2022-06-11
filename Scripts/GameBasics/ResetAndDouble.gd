extends Node

func _on_Area2D_body_entered(body):
	remove_child(self)
