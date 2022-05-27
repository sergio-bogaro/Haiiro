extends Node2D

func _ready():
	if TextBox.readed == false:
		TextBox.readed = true
		information()

func information():
	TextBox.queue_text("Uma outra forma de se criar uma extrutura de repetiçao é utilizando o FOR")
	TextBox.queue_text("A funçao FOR funciona executando o codigo um numero X de vezes que é definido durante sua implementaçao")
