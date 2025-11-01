extends AnimatedSprite2D
#@onready var sound: AudioStreamPlayer2D = $AudioStreamPlayer2D

func _ready():
	play()
	#sound.play()
	await get_tree().create_timer(0.8).timeout
	queue_free()
