extends Node

export var goalNumber = 0
var goalsEntered = 0

onready var levelComplete = get_node("LevelComplete")
onready var path = get_tree().change_scene("res://Scenes/GameLevels/Level-" + str(1 + int(get_tree().current_scene.name)) + ".tscn")

func _on_Area2D_body_entered(body):
	if(body.is_in_group('player')):
		goalsEntered += 1
		if(goalsEntered == goalNumber):
			levelComplete.show()
			timer(1.0)

func _on_Area2D_body_exited(body):
	if(body.is_in_group('player')):
		goalsEntered -= 1

func timer(time):
	yield(get_tree().create_timer(time), "timeout")
	Fade.sceneFade(path)



