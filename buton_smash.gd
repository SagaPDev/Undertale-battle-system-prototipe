extends Node2D
var strenght = 0
func _ready():
	pass # Replace with function body.
	

func _physics_process(delta):
	$ProgressBar.value = strenght

func _on_Button_pressed():
	strenght = strenght + 1
	$Timer.start()
	pass # Replace with function body.


func _on_Timer_timeout():
	strenght = strenght - 1
	pass # Replace with function body.
