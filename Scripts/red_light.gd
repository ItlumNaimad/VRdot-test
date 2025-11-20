extends Node3D

func _on_area_entered(area: Area3D) -> void:
	if area.get_parent() is Flashlight:
		$Cone.set_instance_shader_parameter('emission', Color.GREEN)
		$Collision.set_deferred(&"process_mode", Node.PROCESS_MODE_DISABLED)
