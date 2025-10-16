class_name XRInit extends Object

static var xr_interface: XRInterface

static func init(vp: Viewport):
	if xr_interface != null:
		return
	xr_interface = XRServer.find_interface("OpenXR")
	if xr_interface and xr_interface.is_initialized():
		print("OpenXR initialized successfully")

		# Turn off v-sync!
		DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_DISABLED)

		# Change our main viewport to output to the HMD
		vp.use_xr = true
	else:
		print("OpenXR not initialized, please check if your headset is connected")

static func is_xr_active() -> bool:
	return xr_interface != null
