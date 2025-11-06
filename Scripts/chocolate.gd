extends Area2D
@onready var cat: CharacterBody2D = $"../Cat"

@export var slow_amount: float = 0.5  # 50% (de la velocidad original para el michi)
@export var slow_duration: float = 5.0  #(que dure no se xd, 5 segundos?)

func _on_body_entered(_body: Node) -> void:
	call_deferred("queue_free")

func _nerfeo():
	call_deferred("queue_free")
