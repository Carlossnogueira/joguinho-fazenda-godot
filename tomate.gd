extends Area2D

var semente: int = 1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	hide()
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$"../segura_informações/semente_tomate".text = str("semente: ", semente)
	pass


func _on_body_entered(body: Node2D) -> void:
	
	if semente == 1:
		semente -= 1
		show()
		$AnimatedSprite2D.frame = 0
		await get_tree().create_timer(3.0).timeout
		$AnimatedSprite2D.frame = 1
		await get_tree().create_timer(3.0).timeout
		$AnimatedSprite2D.frame = 2
		await get_tree().create_timer(3.0).timeout
		$AnimatedSprite2D.frame = 3
		await get_tree().create_timer(3.0).timeout
		$AnimatedSprite2D.frame = 4
	
