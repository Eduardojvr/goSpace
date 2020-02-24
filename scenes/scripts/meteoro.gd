extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var vel = 250
var rot = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	set_process(true)
	rot = rand_range(-20, 20)
	pass # Replace with function body.

func _process(delta):
	set_position(get_position() + Vector2(0 ,1) * vel * delta)
	rotate(rot * delta)
	if get_position().y > 500:
		queue_free()
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
