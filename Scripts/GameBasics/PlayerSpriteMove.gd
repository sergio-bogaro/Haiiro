extends Sprite

onready var ray = $RayCast2D
var grid_size = 16
var moves = 0
var inputs = {
	'ui_up': Vector2.UP,
	'ui_down': Vector2.DOWN,
	'ui_left': Vector2.LEFT,
	'ui_right': Vector2.RIGHT
}

func _unhandled_input(event):
	if self.is_in_group('player'):
		for dir in inputs.keys():
			if event.is_action_pressed(dir):
				if ($Tween.is_active() == false):
					move(dir)

func move(dir):
	moves += 1
	SoundPlayer.walkSound()
	var vector_pos = inputs[dir] * grid_size
	ray.cast_to = vector_pos
	ray.force_raycast_update()
	$Tween.interpolate_property(
		self, "position",
		position, position + vector_pos, 0.1,
		Tween.TRANS_BACK,
		Tween.EASE_IN_OUT
	)
	if (!ray.is_colliding()):
		$Tween.start()
		position += vector_pos
	else:
		var collider = ray.get_collider()
		if collider.is_in_group('push'):
			if (collider.move(dir)):
				$Tween.start()
				position += vector_pos
