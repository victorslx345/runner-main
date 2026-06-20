extends Node2D

@export var velocidade: int
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	velocidade= 400


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$status/vidas.text = 'Vidas: ' + str($player.vidas)
	$status/pontos.text = 'Potassios: ' + str($player.pontos)
	$fundo.position.x -= velocidade*delta*0.02
	$fundo2.position.x -= velocidade*delta*0.1
	if $fundo.position.x < -576:
		$fundo.position.x = 1727
	if $fundo2.position.x < -576:
		$fundo2.position.x = 1727
	$chao.position.x -= velocidade*delta*2
	$chao2.position.x -= velocidade*delta*2
	if $chao.position.x < -576:
		$chao.position.x = 1727
	if $chao2.position.x < -576:
		$chao2.position.x = 1727
	$"cenario-F".position.x -= velocidade*delta*1.5
	$"cenario-F2".position.x -= velocidade*delta*1.5
	if $"cenario-F".position.x < -576:
		$"cenario-F".position.x = 1727
	if $"cenario-F2".position.x < -576:
		$"cenario-F2".position.x = 1727
	$"cenario-M".position.x -= velocidade*delta*0.5
	$"cenario-M2".position.x -= velocidade*delta*0.5
	if $"cenario-M".position.x < -576:
		$"cenario-M".position.x = 1727
	if $"cenario-M2".position.x < -576:
		$"cenario-M2".position.x = 1727
	if $player.vidas <= 0:
		get_tree().change_scene_to_file("res://Cenas/game_over.tscn")
	$fundo.play('fonte_anim')
	
