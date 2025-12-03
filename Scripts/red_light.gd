extends Node3D

signal area_lit

@export var strength: float = 1.0
@export_color_no_alpha var color: Color = Color.RED:
	get(): return color
	set(v):
		color = v
		_update_color()
@export_color_no_alpha var final_color: Color = Color.GREEN

func _update_color():
	$Cone.set_instance_shader_parameter('emission', color * strength)

func _on_area_entered(area: Area3D) -> void:
	if area.get_parent() is Flashlight:
		$Collision.set_deferred(&"process_mode", Node.PROCESS_MODE_DISABLED)
		create_tween().tween_property(self, ^'color', final_color, 1.0)
		area_lit.emit()
