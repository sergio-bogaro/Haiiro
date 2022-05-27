extends Node2D

func _ready():
	if TextBox.readed == false:
		TextBox.readed = true
		information()

func information():
	TextBox.queue_text("Os ********* servem para adicionar mais uma verificaçao nas funçoes vistas anteriormente")
	TextBox.queue_text("Os principais e mais utilizados sao o [b] || [/b] que representa o sinal logica OU e o [b] && [/b] que representa o sinal logico E ")
	TextBox.queue_text("Utilizando o [b] || [/b] entre duas condiçoes fara com que o codigo seja executado se uma OU outra for verdadeira")
