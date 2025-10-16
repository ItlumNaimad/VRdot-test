extends Node3D

var _player: AudioStreamPlayer3D
var _markers: Array[Marker3D]
#var _timer: Timer

func _ready():
	_markers = []
	for child in get_children():
		if child is AudioStreamPlayer3D:
			_player = child as AudioStreamPlayer3D
		elif child is Marker3D:
			_markers.push_back(child as Marker3D)
	#_timer = Timer.new()
	#add_child(_timer)
	#queue_timer()

#func queue_timer():
#	var delay := randf_range(15.0, 40.0)

func _physics_process(dt):
	if randi_range(0, 2000) == 1:
		print('WoooOOOOooOo')
		var marker := _markers[randi_range(0, len(_markers) - 1)]
		position = marker.position
		_player.play()
