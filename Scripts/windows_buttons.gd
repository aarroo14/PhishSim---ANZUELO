extends Control

func _on_tasks_pressed() -> void:
	get_tree().change_scene_to_file("res://SCENES/Main/Task.tscn")


func _on_settings_pressed() -> void:
	get_tree().change_scene_to_file("res://SCENES/Main/Setting.tscn")


func _on_upgrades_pressed() -> void:
	get_tree().change_scene_to_file("res://SCENES/Main/upgrades.tscn")


func _on_quit_pressed() -> void:
	get_tree().change_scene_to_file("res://SCENES/Main/menu.tscn")
