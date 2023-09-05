extends Area2D
var box_scene = preload("res://Scenes/Box.tscn")
@onready var box_destination: Area2D = $"."
var boxes

func _ready() -> void:
	
	pass


func _process(delta: float) -> void:
	pass
	#if box_destination.body_entered:
	#	if box_destination.get_overlapping_bodies().get_typed_class_name() == "RigidBody2D":
	#		box.sleeping = true;
	#		box.get_node("Sprite2D").texture = load("res://Assets/box_disabled.png")
			
