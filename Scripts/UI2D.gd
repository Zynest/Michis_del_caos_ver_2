extends CanvasLayer
@onready var hud: Label = $HudLabel

func _process(_delta):
	hud.text = "Puntos: %d     Tiempo: %d" % [Game.score, int(Game.time_left)]
