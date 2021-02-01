extends Control

var scene_path_to_load

func _ready():
	$Buttons/ButtonReady.grab_focus()
	for button in $Buttons.get_children():
		button.connect("pressed", self, "_on_Button_pressed", [button.scene_to_load])

func _on_Button_pressed(scene_to_load):
	scene_path_to_load = scene_to_load
