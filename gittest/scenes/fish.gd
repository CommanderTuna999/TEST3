extends CharacterBody2D
var speed = 10
var aggro = false
var chase_subject = null




func _on_aggro_area_body_entered(body):
	chase_subject = body
	aggro = true
	
	
	
	
func _on_aggro_area_body_exited():
	chase_subject = null
	aggro = false



func _physics_process(_delta):
	if aggro:
		position += (chase_subject.position - position)/speed
		move_and_slide()
		
		
		
		
		
		
		
 
