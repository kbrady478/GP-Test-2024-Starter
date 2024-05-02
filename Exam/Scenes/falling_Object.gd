extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func _physics_process(delta):
	# If goes out of screen boundary 
	if (position.y >= 648):
		# Trigger explosion
		print("Obj deleted")
		queue_free() 
		
