extends Node2D

func _ready():
	$BaseLevel/Camera.zoom.x = 0.13
	$BaseLevel/Camera.zoom.y = 0.13
	$BaseLevel/WorldWall/Area2D/BottonWall.position.y = 100
	$BaseLevel/WorldWall/Area2D/RightWall.position.x = 200
	Pause.rulesLabel.text = "Haiiro  = Você\nParede = Pare"
	TextBox.queue_text("Ola Haiiro ...")
	TextBox.queue_text("Neste mundo as regras são definidas pelas VARIAVEIS que sao representadas pelo blocos sagrados")
	TextBox.queue_text("Siga as instruções e conseguirá chegar até seu objetivo, mas fique atento que seus VALORES estão sempre mudando")
	TextBox.queue_text("Boa Sorte, e tome cuidado com o *****")
