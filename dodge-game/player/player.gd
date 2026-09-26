extends CharacterBody2D

@export var speed: float = 400.0

func _physics_process(delta: float) -> void:
	var direction := Input.get_axis("move_left", "move_right")
	velocity.x = direction * speed
	move_and_slide()
	_clamp_to_screen()

func _clamp_to_screen() -> void:
	var half_width: float = 24.0
	var screen_width: float = get_viewport_rect().size.x
	position.x = clamp(position.x, half_width, screen_width - half_width)