extends Node

onready var menuMusic = $MenuMusic
onready var levelMusic = $"LevelMusic - 1-10"

func menuMusicPlay():
	menuMusic.play()

func menuMusicPause():
	menuMusic.stop()

func levelMusicPlay():
	levelMusic.play()

func levelMusicPause():
	levelMusic.stop()
