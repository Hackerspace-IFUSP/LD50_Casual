extends Button

export(int,"L1", "L2", "L3", "L4", "L5") var line
export(int,"C1", "C2", "C3", "C4", "C5") var colum


var plant = preload("res://Objects/Plant.tscn")

func _ready():
	pass


func _on_crop_pressed():
	var pl = plant.instance()
	pl.position = rect_position + Vector2(38,40)
	get_parent().get_parent().matrix[line][colum] = 1
	pl.line = line
	pl.colum = colum
	get_parent().add_child(pl)
	disabled = true
	visible = false

func _process(delta):
	if get_parent().get_parent().matrix[line][colum] == 0:
		disabled = false
		visible = true 
