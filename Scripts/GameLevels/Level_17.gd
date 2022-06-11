extends Node2D

var myNode = preload('res://Scenes/GameThings/Player.tscn')

func _ready():
	$BaseLevel/Camera.zoom.x = 0.20
	$BaseLevel/Camera.zoom.y = 0.20
	$BaseLevel/WorldWall/Area2D/BottonWall.position.y = 150
	$BaseLevel/WorldWall/Area2D/RightWall.position.x = 250
	Pause.rulesLabel.text = "Haiiro  = Você\nParede = Pare\nBandeira = Meta\nBotao = pisar\nPorta = Fechado"
	TextBox.queue_text("É possivel criar funções personalizadas que podem ser chamadas de diversas formas, como dentro de um IF, While ou com um botão")
	TextBox.queue_text("Ao se criar uma função pode se definir um valor para ser recebido que será utilizado em seu funcionamento, nesse caso esse valor precisa ser enviado junto do chamado da função")
	TextBox.queue_text("Objetivo:\n	Chegar a Meta")


func enterEffect():
	$Goal/Sprite.add_to_group('player')
	Pause.rulesLabel.text = "Haiiro  = Você\nParede = Pare\nBandeira = [Meta, Você]\nBotao = pisar\nPorta = Fechado"

func exitEffect():
	pass

func areaEnterEffect():
	SoundPlayer.clickSound()
	$Door/Sprite.frame = 20
	SoundPlayer.openDoorSound()
	$Door/CollisionShape2D.set_deferred("disabled",true)
	Pause.rulesLabel.text = "Haiiro  = Você\nParede = Pare\nBandeira = Meta\nBotao = pisar\nPorta = Aberto "

func areaExitEffect():
	$Door/Sprite.frame = 24
	SoundPlayer.closeDoorSound()
	$Door/CollisionShape2D.set_deferred("disabled",false)
	Pause.rulesLabel.text = "Haiiro  = Você\nParede = Pare\nBandeira = Meta\nBotao = pisar\nPorta = Pare"

func buttonFunction(buttonNumber):
	$Button1.frame = 305
	$Door/Sprite.frame = 20
	SoundPlayer.openDoorSound()
	$Door/CollisionShape2D.set_deferred("disabled",true)
	Pause.rulesLabel.text = "Haiiro  = Você\nParede = Pare\nBandeira = Meta\nBotao = pisar\nPorta = Aberto"
