extends Control

@onready var label = $Label

func _ready():
	EventController.connect("decrease_health", on_event_decrease_health)
	
	
func on_event_decrease_health(value: int) -> void:
			label.text = str(value)
			print("decrease")
