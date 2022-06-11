extends Node2D

onready var rootPath = '..'
onready var root = get_node(rootPath)



func _on_Area2D_body_entered(_body):
	root.enterEffect()


func _on_Area2D_body_exited(_body):
	root.exitEffect()


func _on_Area2D_area_entered(_area):
	root.areaEnterEffect()


func _on_Area2D_area_exited(_area):
	root.areaExitEffect()
