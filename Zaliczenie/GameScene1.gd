extends Control


func _ready():
	$Player/VBoxContainer/Name.text = global.yourName


func _on_Player_endGame():
	get_tree().change_scene("res://GameScene2.tscn")
