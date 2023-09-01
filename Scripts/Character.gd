extends CharacterBody2D
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

var speed = 400
@onready var body: CharacterBody2D = $"."
var pushForce = 1000
func getInput():
	var dir = Input.get_vector("left","right","up","down")
	velocity = dir * speed
	if Input.is_action_just_pressed("down"):
		animated_sprite_2d.play("front_idle")
	elif Input.is_action_just_released("down"):
		animated_sprite_2d.stop()
	elif Input.is_action_just_pressed("right"):
		animated_sprite_2d.play("walking_right")
	elif Input.is_action_just_released("right"):
		animated_sprite_2d.stop()
	elif Input.is_action_just_pressed("left"):
		animated_sprite_2d.play("walking_left")
	elif Input.is_action_just_released("left"):
		animated_sprite_2d.stop()
func _physics_process(delta):
	getInput()
	
	if body.move_and_slide(): # true if collided
		for i in body.get_slide_collision_count():
			var col = body.get_slide_collision(i)
			if col.get_collider() is RigidBody2D:
				col.get_collider().apply_force(col.get_normal() * -pushForce)
