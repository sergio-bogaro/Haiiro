extends KinematicBody2D

onready var ray = $RayCast2D
var grid_size = 16
var inputs = {
	'ui_up': Vector2.UP,
	'ui_down': Vector2.DOWN,
	'ui_left': Vector2.LEFT,
	'ui_right': Vector2.RIGHT
}

func move(dir):
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
		position += inputs[dir] * grid_size
		return true
	else:
		var collider = ray.get_collider()
		if collider.is_in_group('push'):
			if (collider.move(dir)):
				$Tween.start()
				position += vector_pos
				return true	
			
		else:
			return false
