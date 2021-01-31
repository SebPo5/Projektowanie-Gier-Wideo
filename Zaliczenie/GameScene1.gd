extends Control


func _ready():
	$Name/PlayerName.text = global.yourName

func _on_Player_endGame():
	get_tree().change_scene("res://GameScene2.tscn")
