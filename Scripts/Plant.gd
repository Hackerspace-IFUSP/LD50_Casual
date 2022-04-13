extends Area2D

var line
var colum

func _ready():
	pass


func _on_timer_timeout():
	modulate.a -= .2
	
	if modulate.a <= 0:
		print("morreu")
		get_parent().get_parent().matrix[line][colum] = 0
		get_parent().get_parent().points += 10
		queue_free()
