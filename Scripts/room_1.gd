extends Node2D

func _ready():
	Game.reset()
	Game.target_score = 500
	Game.last_level_path = get_tree().current_scene.scene_file_path
	Game.Nivel = 1
