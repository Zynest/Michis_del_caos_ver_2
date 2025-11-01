extends Control

func _ready() -> void:
	process_mode = Node.PROCESS_MODE_WHEN_PAUSED

func _on_salir_button_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://Rooms/pantalla_menu.tscn")
