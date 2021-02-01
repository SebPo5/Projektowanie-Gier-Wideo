extends Node2D

func _ready():
	$Name/PlayerName.text = global.yourName
	$HUD.show_message("Fall off the platform = game over.     Jump on platforms to escape the reactor!")
	
func new_game():
	$Player.start($StartPosition.position)


func _on_Player_endGame():
	get_tree().change_scene("res://WinScene.tscn")
