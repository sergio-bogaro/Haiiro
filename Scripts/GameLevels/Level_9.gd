extends Node2D

func _ready():
	$BaseLevel/Camera.zoom.x = 0.20
	$BaseLevel/Camera.zoom.y = 0.20
	$BaseLevel/WorldWall/Area2D/BottonWall.position.y = 150
	$BaseLevel/WorldWall/Area2D/RightWall.position.x = 250
	if TextBox.readed == false:
		TextBox.readed = true
		information()
	Pause.rulesLabel.text = "Haiiro  = Você\nParede = Pare\nBandeira = Meta\nPorta = Pare\nCaixa = Empurre\nBotao = Pisar"
	TextBox.queue_text("Objetivo: \n	Chegar a meta")

func information():
	TextBox.queue_text("Quando uma condição dentro da condicional do IF não é cumprida sua função não sera executada, mas")
	TextBox.queue_text("Caso exista um [wave]Else[/wave] então ele será executado no lugar")
	TextBox.queue_text("Sendo possivel tambem criar uma nova condiçao para executar essa nova funçao.\nUtilizando o ELSE IF e criando a condição como feito anteriormente dentro do IF")

func enterEffect():
	SoundPlayer.clickSound()
	$Door/Sprite.frame = 20
	SoundPlayer.openDoorSound()
	$Door/CollisionShape2D.set_deferred("disabled",true)
	$Blocks/Porta/AbertoFechado/Sprite.frame = 20
	Pause.rulesLabel.text = "Haiiro  = Você\nParede = Pare\nBandeira = Meta\nPorta = \nCaixa = Empurre\nBotao = Pisar"

func exitEffect():
	$Door/Sprite.frame = 24
	SoundPlayer.closeDoorSound()
	$Door/CollisionShape2D.set_deferred("disabled",false)
	$Blocks/Porta/AbertoFechado/Sprite.frame = 21
	Pause.rulesLabel.text = "Haiiro  = Você\nParede = Pare\nBandeira = Meta\nPorta = Pare\nCaixa = Empurre\nBotao = Pisar"
