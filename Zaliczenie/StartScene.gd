extends Control

var scene_path_to_load

func _ready():


func _on_FadeIn_fade_finished():
	get_tree().change_scene(scene_path_to_load)
