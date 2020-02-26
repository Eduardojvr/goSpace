extends Node

const GRUPO_INIMIGO = "Inimigos"

var score = 0 setget setScore 
var lifes = 3 setget setLifes

signal score_change
signal lifes_change

func _ready():
	randomize()
	pass # Replace with function body.

func setScore(valor):
	if valor > 0:
		score = valor
		emit_signal("score_change")
		
func setLifes(valor):
	lifes = valor
	emit_signal("lifes_change")
