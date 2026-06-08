extends Area2D

@export var velocidade: int
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	velocidade = 400 # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x -= velocidade*delta*2
	if position.x < -60:
		position.x = 1240
