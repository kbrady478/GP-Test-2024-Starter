extends RigidBody2D


@onready var explosion = $Explosion

# Called when the node enters the scene tree for the first time.
func _ready():
	explosion.visible = false



func _physics_process(delta):
	# If goes out of screen boundary 
	if (position.y >= 648):
		explosion.visible = true
		print("reached")
		queue_free()
		

		


	
