extends CharacterBody2D

var velocidade_pulo = -700
var vidas = 5
var pontos = 0

func _physics_process(delta: float) -> void:
	velocity += get_gravity()*delta
	if is_on_floor():
		$player_anim.play('kris')
		if Input.is_action_pressed('ui_select'):
			velocity.y = velocidade_pulo
	else:
		$player_anim.play("kris_pulo")
		if velocity.y >= 0:
			$player_anim.play("kris_caindo")
	move_and_slide()
