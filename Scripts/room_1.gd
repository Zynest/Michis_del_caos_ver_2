extends Node2D

func _ready():
	Game.reset()
	Game.target_score = 500
	
func _on_time_out():
	get_tree().reload_current_scene()
