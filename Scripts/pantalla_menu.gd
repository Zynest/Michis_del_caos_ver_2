extends Control

func _ready() -> void:
	process_mode = Node.PROCESS_MODE_WHEN_PAUSED

func _on_play_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://Rooms/Room_1.tscn")
