extends Area2D

@export var velocidade: int
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	velocidade = 400

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
		position.x -= velocidade*delta*2


func _on_body_entered(body: Node2D) -> void:
	body.pontos += 1
	queue_free() # Replace with function body.
