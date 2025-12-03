extends StaticBody3D

@export var move_offset: Vector3
@export var duration: float

func move():
	var mesh: MeshInstance3D = $MeshInstance3D
	var material: StandardMaterial3D = mesh.get_active_material(0).duplicate()
	mesh.set_surface_override_material(0, material)
	material.albedo_color.a = 0.5
	var tween := create_tween().set_parallel(true)
	tween.tween_property(self, ^"position", move_offset, duration).as_relative()
	tween.tween_property(material, ^"albedo_color:a", 0.0, duration)
	tween.chain().tween_callback(self.queue_free)
