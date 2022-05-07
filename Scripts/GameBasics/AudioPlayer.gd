extends Node

onready var hover = get_node("ButtonHover")
onready var click = get_node("ButtonClick")
onready var enterLevel = get_node("EnterLevel")
onready var levelComplete = get_node("LevelComplete")
onready var pause = get_node("PauseMenu")
onready var textWrite = get_node("TextWriting")
onready var textChange = get_node("TextChange")
onready var walk = get_node("Walk")

func hoverSound():
	hover.play()

func clickSound():
	click.play()

func startSound():
	enterLevel.play()

func levelCompleteSound():
	levelComplete.play()

func pauseSound():
	pause.play()
	
func writeSoundPlay():
	textWrite.play()

func writeSoundStop():
	textWrite.stop()

func nextTextSound():
	textChange.play()

func walkSound():
	walk.play(0)
