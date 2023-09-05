extends Node2D

@onready var main: Node2D = $"."
var boxes = []

func _ready() -> void:
	for node in main.get_children():
		if node.is_class("RigidBody2D"):
			print(node)
			boxes.append(node)
			
		
	print(boxes.size())
	

func _process(delta: float) -> void:
	pass
