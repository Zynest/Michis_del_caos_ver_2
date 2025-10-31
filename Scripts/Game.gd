extends Node

var score = 0
var time_left = 5
var target_score = 0

func reset():
	score = 0
	time_left = 5

func add_score(v:int) -> void:
	score += v
	if score >= target_score:
		await get_tree().process_frame
		get_tree().change_scene_to_file("res://Rooms/pantalla_de_ganar.tscn")

func _process(delta):
	time_left -= delta
	if time_left <= 0:
		time_left = 0

func restart_game() -> void:
	reset()
	get_tree().reload_current_scene()
		
