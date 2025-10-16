class_name XRPlayer extends XROrigin3D

@onready var _root: Entry = $/root/Entry
var _teleport: Teleport

static func is_player_body(body: Node3D) -> XRPlayer:
	var parent := body.get_parent()
	if body is CharacterBody3D and parent is XRPlayer:
		return parent as XRPlayer
	return null

func contains_body(body: Node3D) -> bool:
	return body == $PlayerBody

func activate_teleport(teleport: Teleport):
	_teleport = teleport
	%TeleportLabel.show()

func deactivate_teleport(teleport: Teleport):
	if teleport == _teleport:
		%TeleportLabel.hide()
		_teleport = null

func _on_teleport() -> void:
	if _teleport != null:
		_root.teleport_to_room(_teleport.target)

func _on_right_button(name: String) -> void:
	if name == 'trigger_click':
		_on_teleport()

func _ready() -> void:
	XRInit.init(get_viewport())
	#var init := XRInit.new()
	#for tool in find_children('*', 'XRToolsHoldButton'):
	#	tool.xr_start_node = init

'''
var interface = XRServer.find_interface("name of the plugin")
	if interface and interface.initalize():
		get_viewport().arvr = true
		
		OS.vsync_enabled = false
		
		Engine.iterations_per_second = 90                
'''
