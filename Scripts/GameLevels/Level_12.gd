extends Node2D

func _ready():
	if TextBox.readed == false:
		TextBox.readed = true
		information()

func information():
	TextBox.queue_text("Neste mundo existem tambem as extruturas de repetiçao, dentro dessas extruturas o codigo é executado varias vez seguindo suas condições")
	TextBox.queue_text("Para se criar essas extruturas soa utilizadas as funções WHILE e FOR")
	TextBox.queue_text("Cada uma dessas funçoes tem seus pontos fortes e fracos que devem ser analisados no momento da implementaçao")
	TextBox.queue_text("A funçao WHILE funciona executando o codigo diversas vezes enquanto sua condiçao for verdadeira")
