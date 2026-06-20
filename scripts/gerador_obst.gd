extends Node2D

var cena_obst = preload("res://Cenas/obstaculo.tscn")
var timer = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	timer += delta
	if timer >= 4:
		var obst=cena_obst.instantiate()
		obst.position.x = 1240
		obst.position.y = 490
		add_child(obst)
		timer = 0
