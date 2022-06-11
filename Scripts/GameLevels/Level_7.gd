extends Node2D

var newMusic = preload("res://Assets/Sounds/Music/The Verdant Grove LOOP.wav")

func _ready():
	$BaseLevel/Camera.zoom.x = 0.18
	$BaseLevel/Camera.zoom.y = 0.18
	$BaseLevel/WorldWall/Area2D/BottonWall.position.y = 150
	$BaseLevel/WorldWall/Area2D/RightWall.position.x = 250
	if TextBox.readed == false:
		MusicPlayer.levelMusic.stream = newMusic
		MusicPlayer.levelMusicPlay()
		TextBox.readed = true
		information()
	TextBox.queue_text("Objetivo: \n	Chegar a Meta")
	Pause.rulesLabel.text = "Haiiro  = Você\nParede = Pare\nBandeira = Meta\n\nInt Movimentos"

func _process(_delta):
	$Label.text = str($Player.moves)
	if $Player.moves > 10:
		$Player.moves = 0
		Fade.fade()
		yield(get_tree().create_timer(0.5), "timeout")
# warning-ignore:return_value_discarded
		get_tree().reload_current_scene()

func information():
	TextBox.queue_text("Existem tambem diversos comandos dentro de algoritimos como o [wave]IF[/wave]")
	TextBox.queue_text("O IF é um operador logico, usado para criar estruturas condicionais.\nSe a afirmação for verdadeira então o codigo dentro do IF será executado")
	TextBox.queue_text("Para se fazer essa verificação são utilzados valores ou variaveis e um sinal para a verificação")
	TextBox.queue_text("O sinal > ira verificar se o valor é maior do qual esta sendo comparado, podendo ser utilizado como >= verificando assim se ele é maior ou igual ao outro valor")
	TextBox.queue_text("O mesmo vale para o sinal < ou <= que nesse caso verificando se o valor é menor com o qual esta sendo comparado")
