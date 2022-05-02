extends Control

var save_path = "user://config.dat"
var savedData = {}

onready var masterVol = get_node("VBox/HBox/VBoxAudio/Master/HBoxMaster/MasterVolume")
onready var musicVol = get_node("VBox/HBox/VBoxAudio/Music/HBoxMusic/MusicVolume")
onready var sfxVol = get_node("VBox/HBox/VBoxAudio/SFX/HBoxSFX/SFXVolume")
onready var fullScreen = get_node("VBox/HBox/VBoxVideo/FullScreen/HBoxContainer/CheckButton")
onready var vSync = get_node("VBox/HBox/VBoxVideo/VSync/HBoxContainer/CheckButton")

func _ready():
	var file = File.new()
	var error = file.open(save_path, File.READ)
	if error == OK:
		savedData = file.get_var()
		file.close()
		masterVol.text = savedData.masterVol
		musicVol.text = savedData.musicVol
		sfxVol.text = savedData.sfxVol
		fullScreen.pressed = savedData.fullScreen
		vSync.pressed = savedData.vSync
		changeSettings()
	$VBox/HBox/VBoxAudio.setValues()

func _on_BackButton_pressed():
	SoundPlayer.clickSound()
	Fade.fade()
	yield(get_tree().create_timer(0.5), "timeout")
	self.hide()

func _on_BackButton_mouse_entered():
	SoundPlayer.hoverSound()

func _on_ControlsButton_pressed():
	SoundPlayer.clickSound()
	$Controls.show()

func _on_ControlsButton_mouse_entered():
	SoundPlayer.hoverSound()

func _on_BackControls_pressed():
	SoundPlayer.clickSound()
	$Controls.hide()

func _on_BackControls_mouse_entered():
	SoundPlayer.hoverSound()

func _on_ApplyButton_pressed():
	SoundPlayer.clickSound()
	changeSettings()	
	savedData['masterVol'] = masterVol.text
	savedData['musicVol'] = musicVol.text
	savedData['sfxVol'] = sfxVol.text
	savedData['fullScreen'] = fullScreen.pressed
	savedData['vSync'] = vSync.pressed
	var file = File.new()
	var error = file.open(save_path, File.WRITE)
	if error == OK:
		print(savedData)
		file.store_var(savedData)
		file.close()

func _on_ApplyButton_mouse_entered():
	SoundPlayer.hoverSound()

func changeSettings():
	match(int(masterVol.text)):
		10:
			AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), 0)
		09:
			AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), -4)
		08:
			AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), -8)
		07:
			AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), -12)
		06:
			AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), -16)
		05:
			AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), -20)
		04:
			AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), -24)
		03:
			AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), -28)
		02:
			AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), -32)
		01:
			AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), -46)
		00:
			AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), -80)
	
	match(int(musicVol.text)):
		10:
			AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Music"), 0)
		09:
			AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Music"), -4)
		08:
			AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Music"), -8)
		07:
			AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Music"), -12)
		06:
			AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Music"), -16)
		05:
			AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Music"), -20)
		04:
			AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Music"), -24)
		03:
			AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Music"), -28)
		02:
			AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Music"), -32)
		01:
			AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Music"), -46)
		00:
			AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Music"), -80)
	
	match(int(sfxVol.text)):
		10:
			AudioServer.set_bus_volume_db(AudioServer.get_bus_index("SFX"), 0)
		09:
			AudioServer.set_bus_volume_db(AudioServer.get_bus_index("SFX"), -4)
		08:
			AudioServer.set_bus_volume_db(AudioServer.get_bus_index("SFX"), -8)
		07:
			AudioServer.set_bus_volume_db(AudioServer.get_bus_index("SFX"), -12)
		06:
			AudioServer.set_bus_volume_db(AudioServer.get_bus_index("SFX"), -16)
		05:
			AudioServer.set_bus_volume_db(AudioServer.get_bus_index("SFX"), -20)
		04:
			AudioServer.set_bus_volume_db(AudioServer.get_bus_index("SFX"), -24)
		03:
			AudioServer.set_bus_volume_db(AudioServer.get_bus_index("SFX"), -28)
		02:
			AudioServer.set_bus_volume_db(AudioServer.get_bus_index("SFX"), -32)
		01:
			AudioServer.set_bus_volume_db(AudioServer.get_bus_index("SFX"), -46)
		00:
			AudioServer.set_bus_volume_db(AudioServer.get_bus_index("SFX"), -80)

	if fullScreen.pressed == true:
		OS.window_fullscreen = true
	else:
		OS.window_fullscreen = false
		
	if vSync.pressed == true:
		OS.vsync_enabled == true
	else:
		OS.vsync_enabled == false

