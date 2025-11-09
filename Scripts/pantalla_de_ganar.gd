extends Control

func _ready() -> void:
	process_mode = Node.PROCESS_MODE_WHEN_PAUSED

func _on_menu_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Rooms/pantalla_menu.tscn")

func _on_next_level_pressed() -> void:
	get_tree().change_scene_to_file("res://Rooms/room_2.tscn")
