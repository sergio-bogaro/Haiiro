extends Node2D

func _ready():
	if TextBox.readed == false:
		TextBox.readed = true
		information()

func _process(_delta):
	$Label.text = str($Player.moves)
	if $Player.moves > 10 && $Player.moves != 15:
		$Goal/Sprite/Area2D.monitoring = true
	else:
		$Goal/Sprite/Area2D.monitoring = false

func information():
	TextBox.queue_text("Ja no caso do [b] && [/b] ele tambem é colocado em duas condiçoes e nesse caso o codigo sera executado se ambas condiçoes forem verdadeiras")
