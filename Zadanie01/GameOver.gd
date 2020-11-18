extends Area2D

func _ready():
	pass


func _on_GameOver_body_entered(body):
	get_tree().reload_current_scene()
