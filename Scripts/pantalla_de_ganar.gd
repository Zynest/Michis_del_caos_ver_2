extends Control
@onready var button: AudioStreamPlayer2D = $Sound/Button
@onready var next_level: TextureButton = $Next_level


func _ready() -> void:
	process_mode = Node.PROCESS_MODE_WHEN_PAUSED
	if Game.current_scene_name == 2:
		next_level.hide()

func _on_menu_button_pressed() -> void:
	button.play()
	await get_tree().create_timer(0.3).timeout
	get_tree().change_scene_to_file("res://Rooms/pantalla_menu.tscn")

func _on_next_level_pressed() -> void:
	#Game.Level + 1
	button.play()
	await get_tree().create_timer(0.3).timeout
	get_tree().change_scene_to_file("res://Rooms/room_2.tscn")
	

#func ContadorLvl():
	#if Game.Level >= 1:
		#next_level.hide()
