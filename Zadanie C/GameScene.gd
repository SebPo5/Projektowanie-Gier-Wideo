extends Control

var rng = RandomNumberGenerator.new()
var tries = 10

func _ready():
	
	rng.randomize()
	var my_random_number = rng.randi_range(1, 100)
	get_node("SpinBoxTool").value = my_random_number
	print(my_random_number)
	
	get_node("SpinBoxTries").value = tries

#	if liczba==2: print("dwa")
#	elif  liczba==1: print("jeden!")
#	elif liczba ==10: print("dziesięć!")
#	else: print("inna")

func _on_SpinBoxGuess_value_changed(try):
	tries = tries - 1
	get_node("SpinBoxTries").value = tries
	if try == $SpinBoxTool.value:
		get_tree().change_scene("res://WinScene.tscn")
	if try > $SpinBoxTool.value:
		get_node("Label").text = "too high!"
	if try < $SpinBoxTool.value:
		get_node("Label").text = "too low!"
	if tries == 0:
		get_tree().change_scene("res://LoseScene.tscn")
