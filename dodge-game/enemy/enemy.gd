extends Area2D

@export var fall_speed: float = 250.0

func _physics_process(delta: float) -> void:
	position.y += fall_speed * delta
	if position.y > get_viewport_rect().size.y + 50:
		queue_free()

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		queue_free() # temporary — will be replaced with Game Over in v0.3