extends Node2D

onready var Player = get_node("Player/Player")
onready var Goal = get_node("Goal/Sprite")

func _ready():
	Pause.rulesLabel.text = "xxxxxx  = Você\nParede = Pare\nCaveira = Meta"
	Player.frame = 82
	Goal.frame = 197
	$BaseLevel/Camera.zoom.x = 0.15
	$BaseLevel/Camera.zoom.y = 0.15
	$BaseLevel/WorldWall/Area2D/BottonWall.position.y = 100
	$BaseLevel/WorldWall/Area2D/RightWall.position.x = 200
	Pause.rulesLabel.text = "Haiiro  = Você\nBandeira = Meta"
