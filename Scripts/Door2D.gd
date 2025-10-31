extends Node2D
@export_file("*.tscn") var next_room
@onready var trigger: Area2D = $DoorTrigger

#func _on_enter(body):
	#if body.name == "Cat" and next_room != "res://Rooms/Room_2.tscn":
		#Game.reset()
		#get_tree().change_scene_to_file(next_room)
