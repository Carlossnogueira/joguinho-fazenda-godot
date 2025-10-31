extends Area2D

var terra : bool = false

func _ready() -> void:
	hide()
	
func _process(delta: float) -> void:
	$"../segura_informações/semente_tomate".text = str("semente: ",  Dados.semente)

	if terra == true:
		if  Dados.semente >= 1 and Input.is_action_just_released("ui_accept"):
			show()
			Dados.semente -= 1
			$AnimatedSprite2D.frame = 0
			await get_tree().create_timer(3.0).timeout
			$AnimatedSprite2D.frame = 1
			await get_tree().create_timer(3.0).timeout
			$AnimatedSprite2D.frame = 2
			await get_tree().create_timer(3.0).timeout
			$AnimatedSprite2D.frame = 3
			await get_tree().create_timer(3.0).timeout
			$AnimatedSprite2D.frame = 4
	
func _on_body_entered(body: Node2D) -> void:
	terra = true
	
	
func _on_body_exited(body: Node2D) -> void:
	terra = false
