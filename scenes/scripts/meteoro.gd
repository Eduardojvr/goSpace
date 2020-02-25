extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var vel = 100
var rot = 0
var vida = 2

# Called when the node enters the scene tree for the first time.
func _ready():
	add_to_group(game.GRUPO_INIMIGO)
	randomize()
	set_process(true)
	rot = rand_range(-20, 20)
	pass # Replace with function body.

func _process(delta):
	set_position(get_position() + Vector2(0 ,1) * vel * delta)
	rotate(rot * delta)
	if get_position().y > 500:
		queue_free()
		
func tira_vida(valor):
	vida -= valor
	if vida <= 0:
		set_process(false)
		remove_from_group(game.GRUPO_INIMIGO)
		get_node("anim").play("destroy")
		#self.queue_free()

