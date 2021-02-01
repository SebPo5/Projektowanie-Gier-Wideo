extends Node

var game_music = load("res://assets/02 Space Riddle.ogg")

func _ready():
	pass

func play_game_music():
	
	$Music.stream = game_music
	$Music.play()
