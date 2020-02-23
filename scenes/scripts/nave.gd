extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var vel = 400


# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)
	pass

func _process(delta):
	var d = 0
	var e = 0
	var c = 0
	var b = 0

	if Input.is_action_pressed("direita"):
		d = 1
	
	if Input.is_action_pressed("esquerda"):
		e = -1
		
	if Input.is_action_pressed("cima"):
		c = -1	
	
	if Input.is_action_pressed("baixo"):
		b = 1	

	if get_position().x > 270:
		d = 0 
		
	if get_position().x < -250:
		e = 0 
		
	
		
	set_position(get_position() + Vector2(vel, 0) * delta * (d + e))
	set_position(get_position() + Vector2(0, vel) * delta * (c + b))
	pass
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
