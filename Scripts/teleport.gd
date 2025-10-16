class_name Teleport extends Area3D

@export var target: PackedScene

var _player: XRPlayer

func _on_body_entered(body: Node3D) -> void:
	var player := XRPlayer.is_player_body(body)
	if player != null:
		_player = player
		_player.activate_teleport(self)

func _on_body_exited(body: Node3D) -> void:
	if _player != null and _player.contains_body(body):
		_player.deactivate_teleport(self)
		_player = null
