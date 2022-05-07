extends Control

var save_path = "user://save.dat"
var savedData = ""
var currentLevel = ''

func _ready():
	MusicPlayer.menuMusicPlay()
	var file = File.new()
	var error = file.open(save_path, File.READ)
	if error == OK:
		savedData = file.get_var()
		currentLevel = savedData.current_level
		$VBoxContainer/HBoxContainer/VBoxContainer/ContinueButton.disabled = false
		file.close()

func _on_StartButton_pressed():
	if currentLevel != '':
		SoundPlayer.clickSound()
		Confirm.showConfirmation('newGame')
	else:
		Fade.sceneFadeMenu('res://Scenes/GameLevels/Level_1.tscn', get_tree().current_scene.name)
		SoundPlayer.startSound()

func _on_StartButton_mouse_entered():
	SoundPlayer.hoverSound()
	
func _on_QuitButton_pressed():
	SoundPlayer.clickSound()
	Confirm.showConfirmation('quit')

func _on_QuitButton_mouse_entered():
	SoundPlayer.hoverSound()

func _on_OptionButton_pressed():
	SoundPlayer.clickSound()
	Fade.fade()
	yield(get_tree().create_timer(0.5), "timeout")
	$Options.show()

func _on_OptionButton_mouse_entered():
	SoundPlayer.hoverSound()

func _on_ContinueButton_pressed():
	Fade.sceneFadeMenu(currentLevel, get_tree().current_scene.name)
	SoundPlayer.startSound()

func _on_ContinueButton_mouse_entered():
	if $VBoxContainer/HBoxContainer/VBoxContainer/ContinueButton.disabled == false:
		SoundPlayer.hoverSound()
