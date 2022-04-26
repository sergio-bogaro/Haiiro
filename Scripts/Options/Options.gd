extends Control

onready var masterVol = get_node("VBox/HBox/VBoxAudio/Master/HBoxMaster/MasterVolume")
onready var musicVol = get_node("VBox/HBox/VBoxAudio/Music/HBoxMusic/MusicVolume")
onready var sfxVol = get_node("VBox/HBox/VBoxAudio/SFX/HBoxSFX/SFXVolume")

func _on_BackButton_pressed():
	self.hide()

func _on_ControlsButton_pressed():
	$Controls.show()

func _on_BackControls_pressed():
	$Controls.hide()

func _on_ApplyButton_pressed():
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
