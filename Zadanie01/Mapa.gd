extends Node
var score
var position
var motion

func _ready():
	randomize()
	new_game()

func new_game():
	$HUD.update_score(score)
	$HUD.show_message("Ruszaj!")
	score = 0
	$Gracz.start($StartPosition.position)
	$StartTimer.start()

func _on_StartTimer_timeout():
	$ScoreTimer.start()

func _on_ScoreTimer_timeout():
	score += 1
	$HUD.update_score(score)

func EndGame_win():
	$HUD.show_game_over()
	$Gracz.end($EndPosition.position)
	$ScoreTimer.stop()
	print(score)
	$HUD.show_message("I wiesz już, że koncept tej gry jest jak Uqbar: na próżno poszukiwany.")
