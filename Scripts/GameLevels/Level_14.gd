extends Node2D

var complete = false

func _ready():
	$BaseLevel/WorldWall/Area2D/BottonWall.disabled = true
	$BaseLevel/WorldWall/Area2D/RightWall.disabled = true
	$BaseLevel/WorldWall/Area2D/LeftWall.disabled = true
	$BaseLevel/WorldWall/Area2D/TopWall.disabled = true
	if TextBox.readed == false:
		TextBox.readed = true
		#information()
	Pause.rulesLabel.text = "Haiiro  = Você\nBandeira = Meta\nCaveira = Derrota\n\n Int Velocidade"

func information():
	TextBox.queue_text("Existem tambem as extruturas de repetição, dentro dessas extruturas o codigo é executado varias vez seguindo suas condições")
	TextBox.queue_text("Para se criar essas extruturas são utilizadas as funções WHILE e FOR")
	TextBox.queue_text("A função [wave]WHILE[/wave] funciona executando o codigo diversas vezes enquanto sua condição for verdadeira")
	TextBox.queue_text("Nessa fase é possivel sair para fora da tela")
	TextBox.queue_text("Objetivo:	Chegar a Meta")

func _on_DefeatArea2d_body_entered(body):
	$Timer.stop()
	SoundPlayer.hitSound()
	remove_child(body)
	Fade.fade()
	yield(get_tree().create_timer(0.5), "timeout")
	# warning-ignore:return_value_discarded
	get_tree().reload_current_scene()

func _on_AreaWall_body_entered(body):
	if body.is_in_group("player"):
		if complete == false:
			Fade.fade()
			yield(get_tree().create_timer(0.5), "timeout")
		# warning-ignore:return_value_discarded
			get_tree().reload_current_scene()


func _on_Area2D_body_entered(body):
	complete = true


func _on_Timer_timeout():
	$Player.grid_size += 5
	$Label.text = str($Player.grid_size)
	$Timer.start()
