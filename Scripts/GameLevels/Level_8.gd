extends Node2D

var complete = false
var playerCount = 2

func _ready():
	$BaseLevel/Camera.zoom.x = 0.15
	$BaseLevel/Camera.zoom.y = 0.15
	$BaseLevel/WorldWall/Area2D/BottonWall.position.y = 120
	$BaseLevel/WorldWall/Area2D/RightWall.position.x = 195
	if TextBox.readed == false:
		TextBox.readed = true
		information()
	Pause.rulesLabel.text = "Haiiro  = Você\nCaveira = Derrota\n\nInt Quantidade"
	TextBox.queue_text("Objetivo: \n	Tornar a função IF verdadeira")

func information():
	TextBox.queue_text("Outros sinais fazem outras comparações, como: ")
	TextBox.queue_text("O sinal == que ira verificar se o valor é igual ao que esta sendo comparado")
	TextBox.queue_text("E o sinal != ira verificar se o valor é diferente")

func _on_DefeatArea2d_body_entered(body):
	playerCount -= 1
	if playerCount == 0:
		SoundPlayer.levelCompleteSound()
		$Goal.levelComplete.show()
		$Goal.timer(1.0)
	$QtdHaiiro.text = str(int($QtdHaiiro.text) -1)
