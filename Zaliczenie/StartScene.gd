extends Control

var scene_path_to_load

func _ready():
	MusicController.play_game_music()
	$VBoxContainer/Name.text = global.yourName
	$Button/ButtonPlay.grab_focus()
	for button in $Button.get_children():
		button.connect("pressed", self, "_on_Button_pressed", [button.scene_to_load])

func _on_Button_pressed(scene_to_load):
	scene_path_to_load = scene_to_load

func _on_LineEdit_text_entered(new_text):
	$VBoxContainer/Name.text = new_text
	global.yourName = new_text
	
	if new_text.length() > 0:
		$VBoxContainer/LineEdit.clear()
