extends CanvasLayer
@onready var hud: Label = $HudLabel

func _process(_delta):
	hud.text = "Score: %d      Time: %d" % [Game.score, int(Game.time_left)]
