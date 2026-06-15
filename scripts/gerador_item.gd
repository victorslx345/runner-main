extends Node2D

var cena_item = preload("res://Cenas/item.tscn")
var timer = 0
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	timer += delta
	if timer >= 1.5:
		var item= cena_item.instantiate()
		item.position.y = randi_range(200,500)
		item.position.x = 1250
		add_child(item)
		timer = 0
