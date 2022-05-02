extends CanvasLayer

var visible = false

onready var Options = get_node("Options")
onready var pause = get_node("PauseScript")

func apareceSome():
	get_tree().paused = not get_tree().paused
	if visible == false:
		pause.show()
		visible = true
	elif visible == true:
		pause.hide()
		visible = false

func _on_OptionsButton_pressed():
	SoundPlayer.clickSound()
	Fade.fade()
	yield(get_tree().create_timer(0.5), "timeout")
	Options.show()


func _on_ResumeButton_pressed():
	SoundPlayer.clickSound()
	apareceSome()

func _on_QuitButton_pressed():
	SoundPlayer.clickSound()
	Confirm.showConfirmation('quitMenu')

func _on_OptionsButton_mouse_entered():
	SoundPlayer.hoverSound()

func _on_ResumeButton_mouse_entered():
	SoundPlayer.hoverSound()

func _on_QuitButton_mouse_entered():
	SoundPlayer.hoverSound()
