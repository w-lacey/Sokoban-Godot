extends Area2D

class_name BoxCheckPoint
@onready var box_destination = $"."
var box = preload("res://Scenes/Box.tscn")
func _ready() -> void:
	pass

func _process(delta):
	if box_destination.body_entered:
		for i in box_destination.get_overlapping_bodies():
			if i is Box:
				i.freeze = true
				#i.position = box_destination.position - box_destination.
				i.get_node("Sprite2D").texture = load("res://Assets/box_disabled.png")
