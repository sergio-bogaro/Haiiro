extends Node2D

func _ready():
	if TextBox.readed == false:
		TextBox.readed = true
		information()

func information():
	TextBox.queue_text("Uma funçao IF obtem um resultado negativo quando sua condiçao é falsa, nesse caso o codigo vai seguir sua execuçao")
	TextBox.queue_text("Caso exista a funçao ELSE ela vai ser executada")
	TextBox.queue_text("Sendo possivel tambem criar uma nova condiçao para executar essa nova funçao da mesma forma que no IF.\nUtilizando o ELSE IF")
