extends RigidBody

func _ready():
	pass # Replace with function body.

func _process(delta):
	var bodies = get_colliding_bodies()
	print(bodies)


