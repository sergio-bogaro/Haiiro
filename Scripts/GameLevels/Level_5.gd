extends Node2D

onready var Goal1 = get_node("Goals/Goal/Sprite/Area2D")
onready var Goal2 = get_node("Goals/Goal2/Sprite/Area2D")
var wall = ''
var changed = false

func _ready():
	$BaseLevel/Camera.zoom.x = 0.20
	$BaseLevel/Camera.zoom.y = 0.20
	$BaseLevel/WorldWall/Area2D/BottonWall.position.y = 150
	$BaseLevel/WorldWall/Area2D/RightWall.position.x = 250
	$"Node/Haiiro = Pare".visible = false
	$"Node/Caverna = Meta".visible = false
	$"Node/Plantas = vc"/.visible = false
	for i in 4:
		wall = get_node("Walls/GenericObject" + str(i) +'/Sprite')
		if i < 2:
			wall.frame = 195
		else:
			wall.frame = 196
		
	get_node("Goals/Goal2/Sprite").frame = 19
	Goal2.monitoring = false
	Pause.rulesLabel.text = "Haiiro  = Você\nPlanta = Pare\nBandeira = Meta"
	TextBox.queue_text("Objetivo: \n	Chegar a Meta")

func _on_Area2D_body_entered(body):
	if(body.is_in_group('player')):
		if changed == false:
			changed = true
			$Player.remove_from_group('player')
			SoundPlayer.laughtSound()
			Fade.fade()
			yield(get_tree().create_timer(0.5), "timeout")
			$"Node/Haiiro = Pare".visible = true
			$"Node/Caverna = Meta".visible = true
			$"Node/Plantas = vc"/.visible = true
			$"Node/Haiiro = vc".visible = false
			$"Node/Bandeira = Meta".visible = false
			$"Node/Plantas = Pare".visible = false
			changePlayer()
			Pause.rulesLabel.text = "Planta  = Você\nHaiiro = Pare\nCaverna = Meta"

func changePlayer():
	Goal1.monitoring = false
	Goal2.monitoring = true
	for i in 4:
		wall = get_node("Walls/GenericObject" + str(i))
		wall.add_to_group('player')


