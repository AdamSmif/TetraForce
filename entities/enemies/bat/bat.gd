extends KinematicBody2D


var player = null
const SPEED = 200

func _physics_process(delta):
	if player:
		var player_direction = (player.position - self.position).normalized()
		move_and_slide(SPEED * player_direction)

func _on_Area2D_area_entered(area):
	queue_free()
# body isn't declared in the current scope
#	if body.name == "Player":
#		$AnimatedSprite.play("attack")
#		player = body


func _on_Area2D_area_exited(area):
	queue_free()
# body isn't declared in the current scope
#	if body.name == "Player":
#		$AnimatedSprite.play("default")
#		player = body
