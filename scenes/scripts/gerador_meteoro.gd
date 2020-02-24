extends Node


var pre_meteoro = preload("res://scenes/meteoro.tscn")
var intervalo = 2


func _ready():
	set_process(true)
	pass # Replace with function body.

func _process(delta):
	if intervalo > 0:
		intervalo -= delta
	else :
		intervalo = rand_range(0.3, 1)
		var meteoro = pre_meteoro.instance()
		meteoro.set_position(Vector2(rand_range(30, 610), -40))
		get_parent().add_child(meteoro)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
