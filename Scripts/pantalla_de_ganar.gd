extends Control

func _ready() -> void:
	process_mode = Node.PROCESS_MODE_WHEN_PAUSED

func _on_restart_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Rooms/Room_1.tscn")
