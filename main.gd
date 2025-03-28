extends Node

func _input(event: InputEvent) -> void:
	if event is InputEventKey and event.pressed:
		if event.keycode == KEY_SPACE:
			$bird.flap();


func _on_ground_hit() -> void:
	pass
