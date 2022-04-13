extends Node
var points = 0 
var matrix = []
var plant = preload("res://Objects/Plant.tscn")

func _ready():
	var pos = Vector2()
	for x in range(5):
		matrix.append([])
		matrix[x]=[]        
		for y in range(5):
			matrix[x].append([])
			matrix[x][y] = 0

func _process(delta):
	$label.text = str("Points: ", points)
