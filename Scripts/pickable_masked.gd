@tool class_name PickableMasked extends XRToolsPickable

## Mask for this object while picked up
@export_flags_3d_physics var picked_up_mask : int = 0

func _init() -> void:
	picked_up.connect(func(pickable):
		collision_mask = picked_up_mask
	)
