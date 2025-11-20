class_name Flashlight extends Node3D

func activate():
	$SpotLight3D.show()
	$Area3D.process_mode = Node.PROCESS_MODE_INHERIT

func deactivate():
	$SpotLight3D.hide()
	$Area3D.process_mode = Node.PROCESS_MODE_DISABLED
