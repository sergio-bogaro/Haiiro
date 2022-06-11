extends Node2D

onready var Player = get_node("Player2/Player")

func _ready():
	$BaseLevel/Camera.zoom.x = 0.20
	$BaseLevel/Camera.zoom.y = 0.20
	$BaseLevel/WorldWall/Area2D/BottonWall.position.y = 150
	$BaseLevel/WorldWall/Area2D/RightWall.position.x = 250
	$Goal/Sprite/Area2D.monitoring = false
	Player.frame = 182
	$"Blocks/Bandeira = Meta/StaticBody2D4".visible = false
	Pause.rulesLabel.text = "Haiiro  = Você\nGhostin  = Você\nGrade = Pare\nBandeira = \nCaveira = Derrota"

func _on_Area2D_body_entered(body):
	SoundPlayer.hitSound()
	body.queue_free()
	if body.is_in_group('haiiro'):
		$Label.text = "0"
		$"Blocks/Bandeira = Meta/StaticBody2D4".visible = true
		Pause.rulesLabel.text = "Haiiro  = Você\nGhostin  = Você\nGrade = Pare\nBandeira = Meta \nCaveira = Derrotar"
		$Goal/Sprite/Area2D.monitoring = true
