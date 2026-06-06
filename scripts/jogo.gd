extends Node2D

@export var velocidade: int
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	velocidade= 400

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$fundo.position.x -= velocidade*delta*0.1
	$fundo2.position.x -= velocidade*delta*0.1
	if $fundo.position.x < -576:
		$fundo.position.x = 1728
	if $fundo2.position.x < -576:
		$fundo2.position.x = 1728
	$chao.position.x -= velocidade*delta*2
	$chao2.position.x -= velocidade*delta*2
	if $chao.position.x < -576:
		$chao.position.x = 1728
	if $chao2.position.x < -576:
		$chao2.position.x = 1728
	$"cenario-F".position.x -= velocidade*delta*1.5
	$"cenario-F2".position.x -= velocidade*delta*1.5
	if $"cenario-F".position.x < -576:
		$"cenario-F".position.x = 1728
	if $"cenario-F2".position.x < -576:
		$"cenario-F2".position.x = 1728
	$"cenario-M".position.x -= velocidade*delta
	$"cenario-M2".position.x -= velocidade*delta
	if $"cenario-M".position.x < -576:
		$"cenario-M".position.x = 1728
	if $"cenario-M2".position.x < -576:
		$"cenario-M2".position.x = 1728
