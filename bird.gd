extends CharacterBody2D

const START_POS = Vector2(100, 400);
const GRAVITY: int = 10;
const FLAP_SPEED: int = -5;
var active: bool = true;

func _ready() -> void:
	position = START_POS;
	$flying_animation.play();

func _physics_process(delta: float) -> void:
	if active:
		velocity.y += GRAVITY * delta;
		set_rotation(deg_to_rad(velocity.y * 5));
		move_and_collide(velocity);
	else:
		$flying_animation.stop();

func flap() -> void:
	velocity.y = FLAP_SPEED;
	move_and_collide(velocity);
