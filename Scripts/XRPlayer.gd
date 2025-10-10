extends XROrigin3D

func _ready() -> void:
	XRInit.init(get_viewport())

'''
var interface = XRServer.find_interface("name of the plugin")
	if interface and interface.initalize():
		get_viewport().arvr = true
		
		OS.vsync_enabled = false
		
		Engine.iterations_per_second = 90                
'''
