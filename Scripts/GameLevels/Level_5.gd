extends Node2D

func _ready():
	$BaseLevel/Camera.zoom.x = 0.15
	$BaseLevel/Camera.zoom.y = 0.15
	$BaseLevel/WorldWall/Area2D/BottonWall.position.y = 100
	$BaseLevel/WorldWall/Area2D/RightWall.position.x = 200
	Pause.rulesLabel.text = "Haiiro  = Você\nCasa = Pare\nPlaca = interagivel\nBandeira = Meta"
	
