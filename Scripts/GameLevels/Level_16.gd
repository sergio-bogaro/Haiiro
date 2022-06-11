extends Node2D

var caveira = 2

func _ready():
	if TextBox.readed == false:
		TextBox.readed = true
		information()

func information():
	TextBox.queue_text("Uma outra forma de se criar uma extrutura de repetiçao é utilizando o [wave]FOR[/wave]")
	TextBox.queue_text("A extrutura do FOR funciona executando o código um numero de vezes definido durante sua implementaçao")


func _on_Timer_timeout():
	if caveira <= 10:
		var newCaveira = get_node("Defeats/Caveira"+str(caveira)+"/DefeatArea2d")
		newCaveira.visible = true
		newCaveira.monitoring = true
		caveira += 1
		$Timer.start()
