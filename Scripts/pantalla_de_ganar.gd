extends Control

func _on_restart_button_pressed() -> void:
	# Despausar por si la escena estaba pausada
	get_tree().paused = false
	# Reinicia la última escena jugada
	get_tree().change_scene_to_file("res://Rooms/Room_1.tscn")
