extends Control
@onready var button: AudioStreamPlayer2D = $Sound/Button

func _ready() -> void:
	process_mode = Node.PROCESS_MODE_WHEN_PAUSED

func _on_play_pressed() -> void:
	button.play()
	await get_tree().create_timer(0.3).timeout
	#get_tree().change_scene_to_file("res://Rooms/Room_1.tscn")
	FadeTransicion.fade_to_scene("res://Rooms/Room_1.tscn")
