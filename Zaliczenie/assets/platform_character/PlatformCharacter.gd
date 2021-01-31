extends KinematicBody2D

const UP = Vector2(0, -1)
const GRAVITY = 20
const MAXFALLSPEED = 300
const ACCELERATION = 100
const MAX_SPEED = 300
const JUMP_HEIGHT = -500

var motion = Vector2()
var screen_size

signal endGame

func start(pos):
	position = pos
	show()


func _physics_process(delta):
	motion.y += GRAVITY
	if motion.y > MAXFALLSPEED:
		motion.y = MAXFALLSPEED
	
	var friction = false
	
	if Input.is_action_pressed("ui_right"):
		motion.x += ACCELERATION
		motion.x = min(motion.x, MAX_SPEED)
		$Sprite.flip_h = false
		$Sprite.play("run")
	elif Input.is_action_pressed("ui_left"):
		motion.x -= ACCELERATION
		motion.x = max(motion.x, -MAX_SPEED)
		$Sprite.flip_h = true
		$Sprite.play("run")
	else:
		$Sprite.play("basic")
		friction = true
	
	if is_on_floor():
		if Input.is_action_just_pressed("ui_up"):
			motion.y = JUMP_HEIGHT
		if friction == true:
			motion.x = lerp(motion.x, 0, 0.2)
	else:
		if motion.y < 0:
			$Sprite.play("jump")
		if motion.y > 0:
			$Sprite.play("fall")
		if friction == true:
			motion.x = lerp(motion.x, 0, 0.05)
	
	motion = move_and_slide(motion, UP)
	pass
	
func _on_GameFail_body_entered(body):
	hide() 
	emit_signal("endGame")

func _on_EndGame_body_entered(body):
	get_tree().change_scene("res://WinScene.tscn")


func _on_SwitchLevel_body_entered(body):
	get_tree().change_scene("res://GameScene2.tscn")
