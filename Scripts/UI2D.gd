extends CanvasLayer
@onready var hud: Label = $HudLabel
@onready var reloj: Sprite2D = $Reloj

func _process(_delta):
	hud.text = "Puntos: %d      : %d" % [Game.score, int(Game.time_left)]
	reloj.show()
