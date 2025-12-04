@tool class_name Screw extends PickableMasked

@onready var _init_transform = global_transform

func _on_body_entered(body: Node) -> void:
	if body is CollisionObject3D and (body as CollisionObject3D).collision_layer & 5:
		print('O nie! Kolizja')
		if is_picked_up():
			get_picked_up_by_controller().trigger_haptic_pulse('haptic', 10.0, 5.0, 0.5, 0.0)
			drop()
		global_transform = _init_transform
		freeze = true
