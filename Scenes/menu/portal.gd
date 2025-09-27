extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

@onready var coin_requirement:int
@export var value: int = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

#func coin_checker(value:int):
#	print(value)
#	if value > 1:
#		coin_requirement = value
#		print(coin_requirement)
		
func _on_body_entered(body):
	if body is Player:
		if (GameController.total_coins==15): # Check if the player has the required item
			#emit_signal("level_finished")
			print("Level Complete!")
			EventController.emit_signal("level_finished",0)
# Signal to indicate that the level is finished
			
# In the Area2D's script
#func _ready() -> void:
#	if get_parent() is Node2D: # Assuming the parent is a Node2D
#	coin_check = get_node("res://Scripts/game controller.gd").total_coins
