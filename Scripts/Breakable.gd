extends RigidBody2D
@export var score_value = 100
#Importo escena de explosión.
@export var explosion_scene: PackedScene = preload("res://Rooms/explosion.tscn")
@onready var audio_stream_player_2d: AudioStreamPlayer2D = $"../../AudioStreamPlayer2D"



func _on_body_entered(body: Node) -> void:
	if body.is_in_group("Ground"):
		audio_stream_player_2d.play()
		_break()

func _break():
	Game.add_score(score_value)
	
	if explosion_scene:
		var explosion = explosion_scene.instantiate()
		explosion.global_position = global_position
		get_tree().current_scene.add_child(explosion)

	call_deferred("queue_free")
