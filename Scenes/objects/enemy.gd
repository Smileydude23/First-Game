extends RigidBody2D

#@onready var label = $Label
#@onready var gamecontroller = %GameController

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

@export var value: int = 1

func _on_area_2d_body_entered(body):
	if (body.name == "Player"):
		var y_delta = position.y - body.position.y
		var x_delta = body.position.x - position.x 
		if (y_delta > 88):
			print("Destroy Enemy")
			queue_free()
			body.boing()
		else:
			print("Decrease player health")
			GameController.decrease_health(value)
			if (x_delta > 0):
				body.boing_side(500)
			else:
				body.boing_side(-500)
