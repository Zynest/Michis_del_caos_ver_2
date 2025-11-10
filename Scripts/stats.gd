extends Control
@onready var score: Label = $score
@onready var time: Label = $time

func _process(_delta):
	score.text = "%d" % [Game.score]
	time.text = "%d" % [int(Game.time_left)]
