extends Button

export(String) var scene_to_load


func _on_ButtonStart_pressed():
	get_tree().change_scene("res://Scene2.tscn")
