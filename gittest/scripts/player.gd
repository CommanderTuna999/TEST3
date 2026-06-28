extends CharacterBody2D
var speed = 500


func _process(delta):
	velocity.x = int(Input.is_action_pressed("move_right")) - int(Input.is_action_pressed("move_left"))
	velocity.y = int(Input.is_action_pressed("move_down")) - int(Input.is_action_pressed("move_up"))
	move_and_slide() #no clue what this is but after some research it fixed collisions somehow

	
	velocity = velocity.normalized()

	global_position += speed * velocity * delta





func _on_hurt_area_area_entered(body):
	get_tree().reload_current_scene()
