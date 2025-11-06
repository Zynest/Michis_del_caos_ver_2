extends Area2D

func _on_body_entered(_body: Node2D) -> void:
	queue_free()
	Game.time_left += 2
