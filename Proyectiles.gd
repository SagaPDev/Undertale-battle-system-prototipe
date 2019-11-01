extends Area2D
var proyectileSpeed = 200#not yet imlementded
var proyectileDestination = Vector2(0,0)
var proyectileStart = Vector2(0,0)
var t = 0.0


func _ready():
	proyectileStart = get_global_mouse_position() - $"../".position
	proyectileDestination = $"../Player".position

func _physics_process(delta):
	t += delta * 0.4
	position = proyectileStart.linear_interpolate(proyectileDestination, t)
	
func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
