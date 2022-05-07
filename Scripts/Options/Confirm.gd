extends CanvasLayer

var function = ''
onready var confirmNode = get_node("ConfirmNode")
onready var confirmText = get_node("ConfirmNode/ColorRect2/ConfirmationMessage")

func showConfirmation(confirmationMessage):
	match confirmationMessage:
		'quit':
			function = 'quit'
			confirmText.text = 'Tem certeza que deseja sair ?'
		'newGame':
			function = 'newGame'
			confirmText.text = 'Ao iniciar um novo jogo os dados salvos anterirmente serão perdidos, tem certeza que deseja continuar ?'
		'quitMenu':
			function = 'quitMenu'
			confirmText.text = 'Tem certeza que deseja voltar ao menu principal ?'
	confirmNode.show()

func _on_ConfirmQuit_pressed():
	SoundPlayer.clickSound()
	match function:
		'quit':
			get_tree().quit()
		'newGame':
			Fade.sceneFadeMenu("res://Scenes/GameLevels/Level_1.tscn", get_tree().current_scene.name)
			SoundPlayer.startSound()
			confirmNode.hide()
		'quitMenu':
			Pause.apareceSome()
			# warning-ignore:return_value_discarded
			Fade.sceneFadeMenu("res://Scenes/GameThings/Menu.tscn", get_tree().current_scene.name)
			confirmNode.hide()

func _on_ConfirmQuit_mouse_entered():
	SoundPlayer.hoverSound()

func _on_NoConfirmQuit_pressed():
	SoundPlayer.clickSound()
	confirmNode.hide()

func _on_NoConfirmQuit_mouse_entered():
	SoundPlayer.hoverSound()
