extends Node2D

# Colocar as Caixas de todos e alterar as texturar tambem 

var newPlayer = preload("res://Assets/goal.png")
# var newPlayerBox = preload("res://Assets/goal.png")
onready var Player = get_node("Player/Player")
# onready var playerBox = get_node("Player/Player")

var newWall = preload("res://Assets/player.png")
# var newWallBox = preload("res://Assets/goal.png")
onready var Wall = get_node("Walls/Wall/Wall")
onready var Wall2 = get_node("Walls/Wall2/Wall")
onready var Wall3 = get_node("Walls/Wall3/Wall")
onready var Wall4 = get_node("Walls/Wall4/Wall")
onready var Wall5 = get_node("Walls/Wall5/Wall")
onready var Wall6 = get_node("Walls/Wall6/Wall")
onready var Wall7 = get_node("Walls/Wall7/Wall")
onready var Wall8 = get_node("Walls/Wall8/Wall")
# onready var WallBox = get_node("Player/Player")

var newGoal = preload("res://Assets/wall.png")
# var newGoalBox = preload("res://Assets/goal.png")
onready var Goal = get_node("Goal")
# onready var GoalBox = get_node("Player/Player")

func _ready():
	timer(2.0)

func timer(time):
	yield(get_tree().create_timer(time), "timeout")
	Player.set_texture(newPlayer)
	Wall.set_texture(newWall)
	Wall2.set_texture(newWall)
	Wall3.set_texture(newWall)
	Wall4.set_texture(newWall)
	Wall5.set_texture(newWall)
	Wall6.set_texture(newWall)
	Wall7.set_texture(newWall)
	Wall8.set_texture(newWall)
	Goal.set_texture(newGoal)

