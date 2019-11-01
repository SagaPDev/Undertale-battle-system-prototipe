extends Node2D

export (PackedScene) var Proyectiles



func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_RIGHT:
			var proyectile = Proyectiles.instance()
			add_child(proyectile)
			
func _physics_process(delta):
	
	pass
