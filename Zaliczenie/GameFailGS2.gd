extends Area2D


func _ready():
	pass # Replace with function body.


func _on_Area2D_body_entered(body):
	get_tree().change_scene("res://LoseScene.tscn")
