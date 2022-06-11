extends Node

export var nextLevelPath = ''
export var goalNumber = 0
var goalsEntered = 0

onready var levelComplete = get_node("LevelComplete/Control")

func _on_Area2D_body_entered(body):
	print(get_tree().current_scene.name)
	if(body.is_in_group('player')):
		body.remove_from_group('player')
		goalsEntered += 1
		if(goalsEntered == goalNumber):
			SoundPlayer.levelCompleteSound()
			levelComplete.show()
			timer(1.0)

func _on_Area2D_body_exited(body):
	if(body.is_in_group('player')):
		body.remove_from_group('player')
		goalsEntered -= 1

func timer(time):
	yield(get_tree().create_timer(time), "timeout")
	TextBox.readed = false
	Fade.sceneFade(nextLevelPath)



