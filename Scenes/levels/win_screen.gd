extends Node

@onready var end_screen: Panel = %Screen

# Called when the node enters the scene tree for the first time.
#func _ready() -> void:
#	pass # Replace with function body.

func _ready():
	EventController.connect("level_finished", on_event_level_finished)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func on_event_level_finished(value: int) -> void:
	print("screen")
	#$WinScreen/Screen.visible = true
	#$UI/Coin/Coin.visible = false
	#$UI/Hearts/Hearts.visible = false
	#coin.hide()
	end_screen.visible=true
	get_tree().paused = true
