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

var ATK_T
var DEF_T


func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_Atack_btn_pressed():
	
	

	
	get_node("MarginContainer/CenterContainer/VBoxContainer/VBoxContainer/Menu/Main Buttons").visible = false
	
	$"MarginContainer/CenterContainer/VBoxContainer/VBoxContainer/Menu/Main Buttons/Atack_btn".disabled = true
	
	$"MarginContainer/CenterContainer/VBoxContainer/VBoxContainer/Menu/Main Buttons/Utilities_btn".disabled = false

	$"MarginContainer/CenterContainer/VBoxContainer/VBoxContainer/Menu/Main Buttons/Enchant_btn".disabled = false

	$"MarginContainer/CenterContainer/VBoxContainer/VBoxContainer/Menu/Main Buttons/Health_btn".disabled = false

	$"MarginContainer/CenterContainer/VBoxContainer/VBoxContainer/Menu/Main Buttons/Flee_btn".disabled = false
	
	if gun_carry == true:
		
		$"MarginContainer/CenterContainer/VBoxContainer/VBoxContainer/Menu/Atack_comands/Gun".visible = true
		$"MarginContainer/CenterContainer/VBoxContainer/VBoxContainer/Menu/Atack_comands/Gun".disabled = false
		
	if knive_carry == true:
		$"MarginContainer/CenterContainer/VBoxContainer/VBoxContainer/Menu/Atack_comands/Knive".visible = true
		$"MarginContainer/CenterContainer/VBoxContainer/VBoxContainer/Menu/Atack_comands/Knive".disabled = false
	

func _on_Back_btn_pressed():
	$"MarginContainer/CenterContainer/VBoxContainer/VBoxContainer/Menu/Main Buttons".visible = true
	
	$"MarginContainer/CenterContainer/VBoxContainer/VBoxContainer/Menu/Main Buttons/Atack_btn".disabled = false
	
	$"MarginContainer/CenterContainer/VBoxContainer/VBoxContainer/Menu/Main Buttons/Utilities_btn".disabled = false

	$"MarginContainer/CenterContainer/VBoxContainer/VBoxContainer/Menu/Main Buttons/Enchant_btn".disabled = false

	$"MarginContainer/CenterContainer/VBoxContainer/VBoxContainer/Menu/Main Buttons/Health_btn".disabled = false

	$"MarginContainer/CenterContainer/VBoxContainer/VBoxContainer/Menu/Main Buttons/Flee_btn".disabled = false
	
	$"MarginContainer/CenterContainer/VBoxContainer/VBoxContainer/Menu/Atack_comands/Gun".visible = false
	$"MarginContainer/CenterContainer/VBoxContainer/VBoxContainer/Menu/Atack_comands/Gun".disabled = true
	
	$"MarginContainer/CenterContainer/VBoxContainer/VBoxContainer/Menu/Atack_comands/Knive".visible = false
	$"MarginContainer/CenterContainer/VBoxContainer/VBoxContainer/Menu/Atack_comands/Knive".disabled = true