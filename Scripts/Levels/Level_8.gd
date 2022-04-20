extends Node2D


var myNode = preload("res://Scenes/Player.tscn")

func buttonFunction():
	var myNode_instance =  myNode.instance()
	get_tree().get_root().add_child(myNode_instance)
	myNode_instance.global_transform = global_transform

