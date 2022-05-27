extends Node2D

var newMusic = preload("res://Assets/Sounds/Music/The Verdant Grove LOOP.wav")

func _ready():
	if TextBox.readed == false:
		MusicPlayer.levelMusic.stream = newMusic
		MusicPlayer.levelMusicPlay()
		TextBox.readed = true
		information()

func _process(_delta):
	$Label.text = str($Player.moves)
	if $Player.moves > 10:
		$Player.moves = 0
		Fade.fade()
		yield(get_tree().create_timer(0.5), "timeout")
# warning-ignore:return_value_discarded
		get_tree().reload_current_scene()

func information():
	TextBox.queue_text("Neste mundo existem tambem outras regras que criam condições e alteram os valores que antes eram fixos")
	TextBox.queue_text("O IF é um operador logico, usado para criar estruturas condicionais.\nSe a afirmaçao for verdadeira então o codigo dentro do IF será executado")
	TextBox.queue_text("Para se fazer essa verificação são utilzados valores ou variaveis e um sinal para a verificação")
	TextBox.queue_text("O sinal > ira verificar se o valor é maior do qual esta sendo comparado, podenedo ser utilizado como >= verificando assim se ele é maior ou igual ao outro valor")
	TextBox.queue_text("O mesmo vale para o sinal < ou <= que nesse caso verificando se o valor é menor com o qual esta sendo comparado")
