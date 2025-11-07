extends Area2D

@onready var pickup_time: AudioStreamPlayer2D = $"../Sound/Pickup_Time"

func _on_body_entered(_body: Node2D) -> void:
	pickup_time.play()
	queue_free()
	Game.time_left += 2
