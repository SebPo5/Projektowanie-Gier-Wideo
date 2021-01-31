extends Node2D

func _ready():
	$Name/PlayerName.text = global.yourName

func new_game():
	$Player.start($StartPosition.position)


func _on_Player_endGame():
	get_tree().change_scene("res://WinScene.tscn")
