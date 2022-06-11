extends Node2D

var GridSize = 16
var inside = false
var complete = false

func _ready():
	$Player/Player.frame = 182
	$BaseLevel/WorldWall/Area2D/BottonWall.disabled = true
	$BaseLevel/WorldWall/Area2D/RightWall.disabled = true
	$BaseLevel/WorldWall/Area2D/LeftWall.disabled = true
	$BaseLevel/WorldWall/Area2D/TopWall.disabled = true
	Pause.rulesLabel.text = "Haiiro  = Você\nBandeira = Meta\nRaio = Recarregar\n\n Int Velocidade"
	TextBox.queue_text("Objetivo:	Chegar a Meta")

func _on_Area2D_body_exited(_body):
	inside = false

func _on_Recharge1_body_entered(_body):
	if inside == false:
		inside = true
		$Player.grid_size = GridSize
		$Label.text = str(GridSize)
		$ResetAndDouble/Recharge1.queue_free()


func _on_Recharge2_body_entered(_body):
	if inside == false:
		inside = true
		$Player.grid_size = GridSize
		$Label.text = str(GridSize)
		$ResetAndDouble/Recharge2.queue_free()


func _on_Recharge3_body_entered(_body):
	if inside == false:
		inside = true
		$Player.grid_size = GridSize
		$Label.text = str(GridSize)
		$ResetAndDouble/Recharge3.queue_free()


func _on_Recharge4_body_entered(_body):
	if inside == false:
		inside = true
		$Player.grid_size = GridSize
		$Label.text = str(GridSize)
		$ResetAndDouble/Recharge4.queue_free()


func _on_Recharge5_body_entered(_body):
	if inside == false:
		inside = true
		$Player.grid_size = GridSize
		$Label.text = str(GridSize)
		$ResetAndDouble/Recharge5.queue_free()

func _on_Area2D_body_entered(_body):
	complete = true


func _on_Timer_timeout():
	$Player.grid_size -= 1
	$Label.text = str($Player.grid_size)
