extends KinematicBody2D

var motion = Vector2()
export (int) var speed


func _ready():
	pass # Replace with function body.


func _physics_process(delta):
	
	if Input.is_action_pressed("ui_right"):
		motion.x = speed
		$AnimatedSprite.flip_h = false
	elif Input.is_action_pressed("ui_left"):
		motion.x = -speed
		$AnimatedSprite.flip_h = true
	else:
		motion.x = 0
	if Input.is_action_pressed("ui_up"):
		motion.y = -speed
		$AnimatedSprite.animation = "Tamaki Back Walk"
	elif Input.is_action_pressed("ui_down"):
		motion.y = speed
		$AnimatedSprite.animation = "Tamaki Front Walk"
	
	else:
		motion.y = 0
	if motion.length() > 0:
		$AnimatedSprite.play()
		pass
	else:
		$AnimatedSprite.stop()
		pass
		
	if motion.x != 0:
		$AnimatedSprite.animation = "Tamaki Side Walk"
		
	move_and_slide(motion)