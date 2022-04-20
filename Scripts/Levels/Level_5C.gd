extends Node2D

func _ready():
	timer(2.0)

func timer(time):
	yield(get_tree().create_timer(time), "timeout")
	loop()


func loop():
	for n in 4:
		var Wall = get_node("Walls/Generic Movable"+str(1+n))
		Wall.add_to_group('player')
