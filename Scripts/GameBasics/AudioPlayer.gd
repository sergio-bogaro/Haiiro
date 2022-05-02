extends Node

onready var hover = get_node("ButtonHover")
onready var click = get_node("ButtonClick")

func hoverSound():
	hover.play()

func clickSound():
	click.play()
