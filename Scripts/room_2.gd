extends Node2D

func _ready():
	Game.reset()
	Game.target_score = 1100  # ajusta por sala

#func _on_time_out():
	#get_tree().reload_current_scene()
