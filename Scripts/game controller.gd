extends Node

var total_coins: int = 0
var lives = 3
@export var Heart : Array[Node]

func coin_collected(value:int):
	if value != -1:
		total_coins += value
		EventController.emit_signal("coin_collected", total_coins)
		print(Heart)
	else:
		if value == -1:
			total_coins = 0

func decrease_health():
	lives -= 1
	print(lives)
	if Heart.is_empty():
		return
	else:
		if (lives == 0):
			GameController.coin_collected(-1) 
			get_tree().reload_current_scene()
		else:
			for h in 3:
				if (h < lives):
					Heart[h].show()
				else:
					Heart[h].hide()
