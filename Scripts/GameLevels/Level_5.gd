extends Node2D

onready var Goal1 = get_node("Goals/Goal/Sprite/Area2D")
onready var Goal2 = get_node("Goals/Goal2/Sprite/Area2D")
var wall = ''
var changed = false

func _ready():
	for i in 4:
		wall = get_node("Walls/GenericObject" + str(i) +'/Sprite')
		if i < 2:
			wall.frame = 195
		else:
			wall.frame = 196
		
	get_node("Goals/Goal2/Sprite").frame = 19
	Goal2.monitoring = false
	Pause.rulesLabel.text = "Haiiro  = Você\nCasa = Pare\nPlaca = interagivel\nBandeira = Meta"

func _on_Area2D_body_entered(body):
	if(body.is_in_group('player')):
		if changed == false:
			changed = true
			$Player.remove_from_group('player')
			Fade.fade()
			yield(get_tree().create_timer(0.5), "timeout")
			changePlayer()

func changePlayer():
	Goal1.monitoring = false
	Goal2.monitoring = true
	for i in 4:
		wall = get_node("Walls/GenericObject" + str(i))
		wall.add_to_group('player')


