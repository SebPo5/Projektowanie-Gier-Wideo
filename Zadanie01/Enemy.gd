extends RigidBody2D

export var min_speed = 150
export var max_speed = 250

func _ready():
	var mob_types = $AnimatedSprite.frames.get_animation_names()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
