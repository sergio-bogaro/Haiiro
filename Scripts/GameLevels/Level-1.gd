extends Node2D

func _ready():
	MusicPlayer.menuMusicPause()
	MusicPlayer.levelMusicPlay()
	$BaseLevel/Camera.zoom.x = 0.13
	$BaseLevel/Camera.zoom.y = 0.13
	$BaseLevel/WorldWall/Area2D/BottonWall.position.y = 100
	$BaseLevel/WorldWall/Area2D/RightWall.position.x = 200
	Pause.rulesLabel.text = "Haiiro  = Você\nParede = Pare"
	TextBox.queue_text("Ola ...")
	TextBox.queue_text("Neste mundo as regras estão sempre mudando, elas são definidas pelas [wave]Variaveis[/wave], que são representadas pelos blocos")
	TextBox.queue_text("Elas tem [wave]Valores[/wave] que representam o que essas variaveis irão fazer")
	TextBox.queue_text("No menu de Pausa é possivel ver todas as variaveis e valores, para acessá-lo aperte Esc.\nCaso tenha alguma duvida sobre uma função acesse o menu de ajuda apertando H")
	TextBox.queue_text("Siga as instuções completando os objetivos para chegar até o final")
	TextBox.queue_text("Objetivo: \n	Sair da Casa")
