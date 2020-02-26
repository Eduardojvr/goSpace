extends Node

const GRUPO_INIMIGO = "Inimigos"

var score = 0 setget setScore 

signal score_change

func _ready():
	randomize()
	pass # Replace with function body.

func setScore(valor):
	if valor > 0:
		score = valor
		emit_signal("score_change")
