extends Node2D

onready var Player = get_node("Player/Player")
onready var Goal = get_node("Goal/Sprite")

func _ready():
	Pause.rulesLabel.text = "Ghostin = Você\nHaiiro = Pare\nCaveira = Meta"
	Player.frame = 182
	Goal.frame = 197
	$BaseLevel/Camera.zoom.x = 0.15
	$BaseLevel/Camera.zoom.y = 0.15
	$BaseLevel/WorldWall/Area2D/BottonWall.position.y = 110
	$BaseLevel/WorldWall/Area2D/RightWall.position.x = 200
	TextBox.queue_text("Objetivo: \n	Chegar a Meta")
