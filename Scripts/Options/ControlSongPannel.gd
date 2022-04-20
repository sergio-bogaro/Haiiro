extends VBoxContainer


onready var masterVolLabel = get_node("Master/HBoxMaster/MasterVolume")
onready var musicVolLabel = get_node("Music/HBoxMusic/MusicVolume")
onready var sfxVolLabel = get_node("SFX/HBoxSFX/SFXVolume")

var masterVol 
var musicVol
var sfxVol

func _ready():
	masterVol = int(masterVolLabel.text)
	musicVol = int(musicVolLabel.text)
	sfxVol = int(sfxVolLabel.text)

func _on_MasterMinus_pressed():
	masterVol -= 1
	if masterVol <= 0:
		masterVol = 0
		masterVolLabel.text = "0" + str(masterVol)
	else:
		masterVolLabel.text = "0" + str(masterVol)

func _on_MasterPlus_pressed():
	masterVol += 1
	if masterVol >= 10:
		masterVol = 10
		masterVolLabel.text = str(masterVol)
	else:
		masterVolLabel.text = "0" + str(masterVol)

func _on_MusicMinus_pressed():
	musicVol -= 1
	if musicVol <= 0:
		musicVol = 0
		musicVolLabel.text = "0" + str(musicVol)
	else:
		musicVolLabel.text = "0" + str(musicVol)

func _on_MusicPlus_pressed():
	musicVol += 1
	if musicVol >= 10:
		musicVol = 10
		musicVolLabel.text = str(musicVol)
	else:
		musicVolLabel.text = "0" + str(musicVol)

func _on_SFXMinus_pressed():
	sfxVol -= 1
	if sfxVol <= 0:
		sfxVol = 0
		sfxVolLabel.text = "0" + str(sfxVol)
	else:
		sfxVolLabel.text = "0" + str(sfxVol)

func _on_SFXPlus_pressed():
	sfxVol += 1
	if sfxVol >= 10:
		sfxVol = 10
		sfxVolLabel.text = str(sfxVol)
	else:
		sfxVolLabel.text = "0" + str(sfxVol)
