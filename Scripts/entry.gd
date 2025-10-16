class_name Entry extends Node

var _player: XRPlayer
var _rooms: Array[Node]
var _active_room: Node
@onready var _root := $/root

func _ready():
	_rooms = []
	for child in get_children():
		if child is XRPlayer:
			_player = child as XRPlayer
		else:
			_rooms.push_back(child)
			remove_child(child)
	activate_scene.call_deferred(_rooms[0])

func teleport_to_room(room: PackedScene) -> void:
	for child in _rooms:
		if child.scene_file_path == room.resource_path:
			return activate_scene(child)

func activate_scene(node: Node) -> void:
	assert(node in _rooms)
	if _active_room != null:
		_player.reparent(self, false)
		_root.remove_child(_active_room)
		_active_room = null
	_active_room = node
	_root.add_child(_active_room)
	var spawn: Marker3D = _active_room.get_node(^'PlayerSpawn')
	_player.get_parent().remove_child(_player)
	spawn.add_sibling(_player)
	_player.position = spawn.position
