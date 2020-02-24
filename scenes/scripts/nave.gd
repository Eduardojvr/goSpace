extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var pre_tiro = preload("res://scenes/tiro.tscn")
var vel = 400
var intervalo = .3
var ultimo_disparo = 0


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

	if get_position().x > 590:
		d = 0 
		
	if get_position().x < 56:
		e = 0 
		
	if get_position().y > 440:
		b = 0 
		
	if get_position().y < 40:
		c = 0 

	set_position(get_position() + Vector2(1, 0) * vel * delta * (d + e))
	set_position(get_position() + Vector2(0, 1) * vel * delta * (c + b))
	

	if Input.is_action_pressed("tiro"):
		if ultimo_disparo <= 0:
			dispara(get_node("canhao1"))
			dispara(get_node("canhao2"))
			ultimo_disparo = intervalo
		if ultimo_disparo > 0:
			ultimo_disparo -= delta

func dispara(node):
	var tiro = pre_tiro.instance()
	tiro.set_global_position(node.get_global_position())
	get_parent().add_child(tiro)

	
