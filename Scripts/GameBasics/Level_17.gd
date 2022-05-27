extends Node2D

func _ready():
	if TextBox.readed == false:
		TextBox.readed = true
		information()

func information():
	TextBox.queue_text("Ja no caso do [b] && [/b] ele tambem é colocado em duas condiçoes e nesse caso o codigo sera executado se ambas condiçoes forem verdadeiras")
