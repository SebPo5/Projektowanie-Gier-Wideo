extends Button

export(String) var scene_to_load

func _on_ButtonPlay_pressed():
	get_tree().change_scene("res://GameScene1.tscn")
