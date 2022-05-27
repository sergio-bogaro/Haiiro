extends Node2D

var complete = false

func _ready():
	if TextBox.readed == false:
		TextBox.readed = true
		information()

func information():
	TextBox.queue_text("Os outros sinais representam outras comparações para se fazer, como: ")
	TextBox.queue_text("O sinal == que ira verificar se o valor é igual com o que esta sendo comparado")
	TextBox.queue_text("Ja o sinal != ira verificar se o valor é diferente")

func _process(delta):
	if complete == false:
		if $Player.visible == false:
			complete = true
			SoundPlayer.levelCompleteSound()
			$Goal.levelComplete.show()
			$Goal.timer(1.0)
