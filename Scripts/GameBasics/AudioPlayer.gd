extends Node

onready var hover = get_node("ButtonHover")
onready var click = get_node("ButtonClick")
onready var enterLevel = get_node("EnterLevel")
onready var levelComplete = get_node("LevelComplete")
onready var pause = get_node("PauseMenu")
onready var textWrite = get_node("TextWriting")
onready var textChange = get_node("TextChange")
onready var walk = get_node("Walk")
onready var openDoor = get_node("OpenDoor")
onready var closeDoor = get_node("CloseDoor")
onready var laught = get_node("Laught")
onready var hit = get_node("Hit")

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

func openDoorSound():
	openDoor.play(0)

func closeDoorSound():
	closeDoor.play(0)

func laughtSound():
	laught.play()
	
func hitSound():
	hit.play()
