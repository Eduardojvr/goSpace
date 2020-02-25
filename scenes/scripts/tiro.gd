extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var vel = 500

# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)

func _process(delta):
	set_position(get_position() + Vector2(0, -1) * vel * delta)

	if(get_position().y < -30):
		queue_free()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):	
#	pass


func _on_tiro_area_entered(area):
	# area.queue_free()
	if area.is_in_group(game.GRUPO_INIMIGO):
		area.queue_free()
		self.queue_free()
	pass # Replace with function body.
