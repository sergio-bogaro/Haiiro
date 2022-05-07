extends CanvasLayer

onready var animation = $AnimationPlayer
var sceneGo = ''
var oldLevel = ''

func sceneFadeMenu(scene, currentLevel):
	animation.play("ChangeScene")
	sceneGo = scene
	oldLevel = currentLevel

func sceneFade(scene):
	animation.play("ChangeScene")
	sceneGo = scene
	oldLevel = ''

func fade():
	animation.play("Fade")

func changeScene():
# warning-ignore:return_value_discarded
	get_tree().change_scene(sceneGo)

func changeMusic():
	if oldLevel == "Menu":
		MusicPlayer.menuMusicPause()
		MusicPlayer.levelMusicPlay()
	elif sceneGo == "res://Scenes/GameThings/Menu.tscn":
		MusicPlayer.levelMusicPause()
		MusicPlayer.menuMusicPlay()
	else:
		pass
