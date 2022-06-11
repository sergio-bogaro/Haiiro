extends Node2D

func _ready():
	TextBox.queue_text("No caso do operador [b] && [/b] ele tambem é colocado entre duas condiçoes ou mais condições e nesse caso o codigo sera executado se todas as condiçoes forem verdadeiras")
	Pause.rulesLabel.text = "Haiiro  = Você\nParede = Pare\nBandeira = Meta\n\n Int Quantidade de Movimentos\n Int Quantidade\nInt Movimentos"
	TextBox.queue_text("Objetivo:	Chegar a todas as Metas em menos de 50 movimentos")
	

func _process(_delta):
	$Label2.text = str($Goal.goalsEntered)
	$Label.text = str($Player.moves)
	if $Player.moves > 60:
		$Goal.goalNumber = 10
