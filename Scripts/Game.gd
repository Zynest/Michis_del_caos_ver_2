extends Node

var score = 0
var time_left = 21
var target_score = 0
var is_game_over = false

func _ready() -> void:
	get_tree().paused = true

func reset():
	score = 0
	time_left = 21
	is_game_over = false
	get_tree().paused = false

func add_score(x:int) -> void:
	score += x
	if score >= target_score and not is_game_over:
		is_game_over = true
		await get_tree().process_frame
		get_tree().change_scene_to_file("res://Rooms/pantalla_de_ganar.tscn")
		await get_tree().process_frame
		get_tree().paused = true

func _process(delta):
	if is_game_over:
		return
	time_left -= delta
	if time_left <= 0:
		game_over()

func game_over():
	is_game_over = true
	#await get_tree().process_frame
	get_tree().change_scene_to_file("res://Rooms/pantalla_de_perder.tscn")
	#await get_tree().process_frame
	get_tree().paused = true

func restart_game() -> void:
	reset()
	get_tree().reload_current_scene()
	get_tree().paused = false

		
