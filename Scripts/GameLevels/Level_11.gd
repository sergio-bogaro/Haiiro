extends Node2D

onready var meta = get_node('Blocks/Bandeira = Meta/StaticBody2D4/Sprite')

func _ready():
	$BaseLevel/Camera.zoom.x = 0.15
	$BaseLevel/Camera.zoom.y = 0.15
	$BaseLevel/WorldWall/Area2D/BottonWall.position.y = 150
	$BaseLevel/WorldWall/Area2D/RightWall.position.x = 250
	if TextBox.readed == false:
		TextBox.readed = true
		information()
	meta.visible = false
	Pause.rulesLabel.text = "Haiiro  = Você\nParede = Pare\nBandeira = \nBotao = Pisar"
	TextBox.queue_text("Objetivo:	Chegar a Meta")

func _process(_delta):
	$Label.text = str($Player.moves)
	if $Player.moves < 10 || $Player.moves > 15:
		Pause.rulesLabel.text = "Haiiro  = Você\nParede = Pare\nBandeira = \nBotao = Pisar"
		$Goal/Sprite/Area2D.monitoring = false
		meta.visible = false
	else:
		Pause.rulesLabel.text = "Haiiro  = Você\nParede = Pare\nBandeira = Meta \nBotao = Pisar"
		$Goal/Sprite/Area2D.monitoring = true
		meta.visible = true

func information():
	TextBox.queue_text("Dentro das condições criadas é possivel fazer mais de uma verificação, para isso são utilizados os operadores logicos:")
	TextBox.queue_text("Os principais são o [b] || [/b] que representa o operador logico OU e o [b] && [/b] que representa o E")
	TextBox.queue_text("Utilizando o operador || (OU) entre duas condiçoes fara com que o codigo seja executado se uma OU outra for verdadeira")

func enterEffect():
	Fade.fade()
	yield(get_tree().create_timer(0.5), "timeout")
	get_tree().reload_current_scene()

func exitEffect():
	pass
