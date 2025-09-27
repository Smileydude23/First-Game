extends Node

var total_coins: int = 0
var lives = 3

#@onready var n1 = get_node("")
#@onready var n2 = get_node("UI/Hearts/HBoxContainer/Heart2")
#@onready var n3 = get_node("UI/Hearts/HBoxContainer/Heart3") 
#var Heart: Array[Node] = []


#func _ready():
#	Heart.append(n1)
#	Heart.append(n2)
#	Heart.append(n3)
@export var value: int = 0

func coin_collected(value:int):
	if value != -1:
		total_coins += value
		EventController.emit_signal("coin_collected", total_coins)
		print(total_coins)
#		Portal.coin_checker(total_coins)
#		print(total_coins)
	else:
			if value == -1:
				total_coins = 0

func decrease_health(value:int):
	if value != -1:
		lives -= value
		EventController.emit_signal("decrease_health", lives)
		print(lives)
	else:
		if value == -1:
			lives = 0
			
	if (lives == 0):
		GameController.coin_collected(-1)
		GameController.decrease_health(-3)
		get_tree().reload_current_scene()
#	lives -= 1
#	print(lives)
#	print(Heart)
#	if (lives == 0):
#		GameController.coin_collected(-1) 
#		get_tree().reload_current_scene()
#	else:
#		for h in 3:
#			if (h < lives):
#				Heart[h].show()
#			else:
#				Heart[h].hide()
