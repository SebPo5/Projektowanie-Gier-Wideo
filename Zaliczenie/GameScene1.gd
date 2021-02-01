extends Control


func _ready():
	$Name/PlayerName.text = global.yourName
	$HUD.show_message("Fall off the platform = game over. Enemy hits you = the level starts again. You can kill enemies by jumping on them.")

func _on_Player_endGame():
	get_tree().change_scene("res://GameScene2.tscn")
