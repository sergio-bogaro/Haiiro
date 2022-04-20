extends Sprite

var inside

onready var porta = get_node("../Door")

func _on_Area2D_body_entered(body):
	inside = true

