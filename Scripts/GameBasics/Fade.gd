extends CanvasLayer

onready var animation = $AnimationPlayer
var sceneGo = ''

func sceneFade(scene):
	animation.play("ChangeScene")
	sceneGo = scene

func fade():
	animation.play("Fade")

func changeScene():
	get_tree().change_scene(sceneGo)
