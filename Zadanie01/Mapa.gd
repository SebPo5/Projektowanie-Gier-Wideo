extends Node
var score

func _ready():
	randomize()
	new_game()

func game_over():
	$HUD.show_game_over()
	$ScoreTimer.stop()
	$HUD.show_message("Uqbar cię pochłonął!")

func new_game():
	$HUD.update_score(score)
	$HUD.show_message("Wymknięcie się z Uqbaru zawdzięczam pożyteczności lustra.")
	score = 0
	$Gracz.start($StartPosition.position)
	$StartTimer.start()

func _on_StartTimer_timeout():
	$ScoreTimer.start()

func _on_ScoreTimer_timeout():
	score += 1
	$HUD.update_score(score)
