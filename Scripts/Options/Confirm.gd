extends CanvasLayer

var function = ''

func showConfirmation(confirmationMessage):
	match confirmationMessage:
		'quit':
			function = 'quit'
			$Control/ColorRect2/ConfirmationMessage.text = 'Tem certeza que deseja sair ?'
		'newGame':
			function = 'newGame'
			$Control/ColorRect2/ConfirmationMessage.text = 'Ao iniciar um novo jogo os dados salvos anterirmente serão perdidos, tem certeza que deseja continuar ?'
		'quitMenu':
			function = 'quitMenu'
			$Control/ColorRect2/ConfirmationMessage.text = 'Tem certeza que deseja voltar ao menu principal ?'
	$Control.show()

func _on_ConfirmQuit_pressed():
	SoundPlayer.clickSound()
	match function:
		'quit':
			get_tree().quit()
		'newGame':
			Fade.sceneFade("res://Scenes/GameLevels/Level-1.tscn")
			$Control.hide()
		'quitMenu':
			Pause.apareceSome()
			get_tree().change_scene("res://Scenes/GameThings/Menu.tscn")
			$Control.hide()

func _on_ConfirmQuit_mouse_entered():
	SoundPlayer.hoverSound()

func _on_NoConfirmQuit_pressed():
	SoundPlayer.clickSound()
	$Control.hide()

func _on_NoConfirmQuit_mouse_entered():
	SoundPlayer.hoverSound()
