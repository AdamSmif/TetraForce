extends KinematicBody2D


var player = null
var velocity = Vector2.ZERO
var speed = 50

func _physics_process(delta):
	velocity = Vector2.ZERO
	if player:
		velocity = position.direction_to(player.position) * speed
	velocity = move_and_slide(velocity)

# Attack Mode
func _on_Area2D_area_entered(area):
	player = area
	$AnimatedSprite.play("attack")

# Go Back To Default
func _on_Area2D_area_exited(area):
	player = null
	$AnimatedSprite.play("default")
