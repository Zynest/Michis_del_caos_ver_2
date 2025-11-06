extends CharacterBody2D
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var sound_jump: AudioStreamPlayer = $Sound_jump


const SPEED = 300.0
const JUMP_VELOCITY = 450.0

func _physics_process(delta: float) -> void:
	
	if not is_on_floor():
		velocity += get_gravity() * delta
		animated_sprite_2d.play("jump")

	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = -JUMP_VELOCITY
		sound_jump.play()

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
		
	if velocity.y > 0 and not is_on_floor():
		animated_sprite_2d.play("land")
	elif velocity.y < 0 and not is_on_floor():
		animated_sprite_2d.play("jump")
	
	move_and_slide()
