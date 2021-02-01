extends CanvasLayer

func _ready():
	pass

func show_message(text):
	$Message.text = text
	$Message.show()
	$MessageTimer.start()


func _on_MessageTimer_timeout():
	$Message.hide()
