extends Control

var settings_file_path = "res://Scripts/Data/setting.json"
var language_file_path = "res://Scripts/Data/Language.json"

func _ready():
	%MasterVolumeHSlider.value = db_to_linear(AudioServer.get_bus_volume_db(0))
	%MusicVolumeHSlider.value = db_to_linear(AudioServer.get_bus_volume_db(1))
	%SoundEffectsVolumeHSlider.value = db_to_linear(AudioServer.get_bus_volume_db(2))

func _on_exit_setting_pressed() -> void:
	get_tree().change_scene_to_file("res://SCENES/Main/Game.tscn")

func _on_master_volume_h_slider_mouse_exited() -> void:
	release_focus()

func _on_music_volume_h_slider_mouse_exited() -> void:
	release_focus()

func _on_sound_effects_volume_h_slider_mouse_exited() -> void:
	release_focus()
