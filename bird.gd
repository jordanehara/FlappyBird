extends CharacterBody2D

const START_POS = Vector2(100, 400);
const GRAVITY: int = 10;
const FLAP_SPEED: int = -5;
const falling: bool = false; # collided with something and is falling

func _ready() -> void:
	position = START_POS;
	$flying_animation.play();

func _physics_process(delta: float) -> void:
	velocity.y += GRAVITY * delta;
	set_rotation(deg_to_rad(velocity.y * 5));
	move_and_collide(velocity);

func flap() -> void:
	velocity.y = FLAP_SPEED;
	move_and_collide(velocity);
