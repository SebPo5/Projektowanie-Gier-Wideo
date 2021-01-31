extends Control


func _ready():
	$VBoxContainer/Name.text = "Comrade " + global.yourName + "!"
