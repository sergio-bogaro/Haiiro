extends Node2D

onready var button1 = get_node("Button1")
onready var button2 = get_node("Button2")
onready var button3 = get_node("Button3")
onready var button4 = get_node("Button4")
onready var player1 = get_node("Player")
onready var player2 = get_node("Player2")
onready var player3 = get_node("Player3")
onready var player4 = get_node("Player4")
onready var player5 = get_node("Player5")
onready var player2Col = get_node("Player2/CollisionShape2D")
onready var player3Col = get_node("Player3/CollisionShape2D")
onready var player4Col = get_node("Player4/CollisionShape2D")
onready var player5Col = get_node("Player5/CollisionShape2D")

var myNode = preload('res://Scenes/GameThings/Player.tscn')

func _ready():
	$BaseLevel/Camera.zoom.x = 0.20
	$BaseLevel/Camera.zoom.y = 0.20
	$BaseLevel/WorldWall/Area2D/BottonWall.position.y = 150
	$BaseLevel/WorldWall/Area2D/RightWall.position.x = 250
	player2.remove_from_group("player")
	player2.visible = false
	player2Col.disabled = true
	player3.remove_from_group("player")
	player3.visible = false
	player3Col.disabled = true
	player4.remove_from_group("player")
	player4.visible = false
	player4Col.disabled = true
	player5.remove_from_group("player")
	player5.visible = false
	player5Col.disabled = true
	if TextBox.readed == false:
		TextBox.readed = true
		#information()
	Pause.rulesLabel.text = "Haiiro  = Você\nParede = Pare\nBandeira = \nBotao = Usar"
	TextBox.queue_text("Objetivo:\n	Chegar a Meta")


func buttonFunction(name):
	$Label.text = str(int($Label.text)+1)
	match(name):
		1:
			player1.remove_from_group('player')
			player2.add_to_group("player")
			player2.visible = true
			player2Col.disabled = false
			$Button1/Area2D.monitoring = false
			button1.inside = false
			button2.visible = true
		2:
			player2.remove_from_group('player')
			player3.add_to_group("player")
			player3.visible = true
			player3Col.disabled = false
			$Button2/Area2D.monitoring = false
			button2.inside = false
			button3.visible = true
		3:
			player3.remove_from_group("player")
			player4.add_to_group("player")
			player4.visible = true
			player4Col.disabled = false
			$Button3/Area2D.monitoring = false
			button3.inside = false
			button4.visible = true
		4:
			player4.remove_from_group("player")
			player5.add_to_group("player")
			player5.visible = true
			player5Col.disabled = false
			$Button4/Area2D.monitoring = false
			$Goal/Sprite/Area2D.monitoring = true
			button4.inside = false
			Pause.rulesLabel.text = "Haiiro  = Você\nParede = Pare\nBandeira = Meta \nBotao = Usar"
	#var myNode_instance =  myNode.instance()
	#get_tree().get_root().add_child(myNode_instance)
	#myNode_instance.global_transform = global_transform
