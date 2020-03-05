extends Node2D

export var max_enemies = 5
export var probability = 0.3

onready var Enemy1 = ("res://Scenes/Enemy1.tscn")
onready var Enemy2 = ("res://Scenes/Enemy2.tscn")


func _ready():
	randomize()

func _on_Timer_timeout():
	if get_child_count() < max_enemies + 1:
		if randf() < probability:
			if randf() < 0.5:
				var e = Enemy1.instance()
				add_child(e)
			else:
				var e = Enemy2.instance()
				add_child(e)

