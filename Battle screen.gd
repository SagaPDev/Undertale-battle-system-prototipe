extends CanvasLayer

#Flags

#items list flag

export (bool) var knive_carry = false
export (int) var knive_ATK = 30

export (bool) var gun_carry = false
export (int) var gun_ATK = 60


#Stats
var BASE_ATK
var BASE_DEF

var ATK
var DEF

var strenght = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_Atack_btn_pressed():
	
	

	
	get_node("Control/MarginContainer/CenterContainer/VBoxContainer/VBoxContainer/Menu/Main Buttons").visible = false
	
	$"Control/MarginContainer/CenterContainer/VBoxContainer/VBoxContainer/Menu/Main Buttons/Atack_btn".disabled = true
	
	$"Control/MarginContainer/CenterContainer/VBoxContainer/VBoxContainer/Menu/Main Buttons/Utilities_btn".disabled = false

	$"Control/MarginContainer/CenterContainer/VBoxContainer/VBoxContainer/Menu/Main Buttons/Enchant_btn".disabled = false

	$"Control/MarginContainer/CenterContainer/VBoxContainer/VBoxContainer/Menu/Main Buttons/Health_btn".disabled = false

	$"Control/MarginContainer/CenterContainer/VBoxContainer/VBoxContainer/Menu/Main Buttons/Flee_btn".disabled = false
	
	if gun_carry == true:
		
		$"Control/MarginContainer/CenterContainer/VBoxContainer/VBoxContainer/Menu/Atack_comands/Gun".visible = true
		$"Control/MarginContainer/CenterContainer/VBoxContainer/VBoxContainer/Menu/Atack_comands/Gun".disabled = false
		
	if knive_carry == true:
		$"Control/MarginContainer/CenterContainer/VBoxContainer/VBoxContainer/Menu/Atack_comands/Knive".visible = true
		$"Control/MarginContainer/CenterContainer/VBoxContainer/VBoxContainer/Menu/Atack_comands/Knive".disabled = false
	

func _on_Back_btn_pressed():
	$"Control/MarginContainer/CenterContainer/VBoxContainer/VBoxContainer/Menu/Main Buttons".visible = true
	
	$"Control/MarginContainer/CenterContainer/VBoxContainer/VBoxContainer/Menu/Main Buttons/Atack_btn".disabled = false
	
	$"Control/MarginContainer/CenterContainer/VBoxContainer/VBoxContainer/Menu/Main Buttons/Utilities_btn".disabled = false

	$"Control/MarginContainer/CenterContainer/VBoxContainer/VBoxContainer/Menu/Main Buttons/Enchant_btn".disabled = false

	$"Control/MarginContainer/CenterContainer/VBoxContainer/VBoxContainer/Menu/Main Buttons/Health_btn".disabled = false

	$"Control/MarginContainer/CenterContainer/VBoxContainer/VBoxContainer/Menu/Main Buttons/Flee_btn".disabled = false
	
	$"Control/MarginContainer/CenterContainer/VBoxContainer/VBoxContainer/Menu/Atack_comands/Gun".visible = false
	$"Control/MarginContainer/CenterContainer/VBoxContainer/VBoxContainer/Menu/Atack_comands/Gun".disabled = true
	
	$"Control/MarginContainer/CenterContainer/VBoxContainer/VBoxContainer/Menu/Atack_comands/Knive".visible = false
	$"Control/MarginContainer/CenterContainer/VBoxContainer/VBoxContainer/Menu/Atack_comands/Knive".disabled = true
	pass # Replace with function body.


func _on_Button_pressed():
	strenght = strenght + 1
	pass # Replace with function body.
