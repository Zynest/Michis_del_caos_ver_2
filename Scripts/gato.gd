extends CharacterBody2D
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

const SPEED = 300.0
const JUMP_VELOCITY = 450.0

func _physics_process(delta: float) -> void:
	
	#if (velocity.x > 1 || velocity.x < -1):
		#animated_sprite_2d.play("run")
	#else:
		#animated_sprite_2d.play("idle")
	
	if not is_on_floor():
		velocity += get_gravity() * delta
		animated_sprite_2d.play("jump")

	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = -JUMP_VELOCITY

	var direction := Input.get_axis("move_left", "move_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, 10)
		
	var isLeft = velocity.x < 0
	animated_sprite_2d.flip_h = isLeft

	if velocity.x != 0:
		animated_sprite_2d.play("run")
	else:
		animated_sprite_2d.play("idle")
		
	if velocity.y > 0:
		animated_sprite_2d.play("land")
	
	move_and_slide()
