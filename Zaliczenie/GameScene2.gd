extends Node2D


func _ready():
	$Player.start($StartPosition.position)


func _on_Player_endGame():
	get_tree().change_scene("res://WinScene.tscn")
