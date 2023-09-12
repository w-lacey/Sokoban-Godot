extends Node2D

@onready var main: Node2D = $"."
const boxClass = preload("res://Scripts/Box.gd")

var boxes = []
var checkPoints = []

func _ready() -> void:
	for node in main.get_children():
		if node.is_class("RigidBody2D"):
			print(node)
			boxes.append(node)
		elif node is BoxCheckPoint:
			print(node)
			checkPoints.append(node)
	
