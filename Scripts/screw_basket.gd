extends Node3D

var _total_screws: int
var _contained_screws: int = 0
@onready var _label: Label3D = $Label3D
@onready var _area: Area3D = $Area3D

func _ready():
	_total_screws = get_tree().get_nodes_in_group(&'screw').size()
	_set_label()

func _set_label():
	_contained_screws = 0
	for body in _area.get_overlapping_bodies():
		if body is Screw:
			_contained_screws += 1
	_label.text = "🔩 {0}/{1}".format([_contained_screws, _total_screws])

func _on_body_entered(body: Node3D) -> void:
	_set_label()

func _on_body_exited(body: Node3D) -> void:
	_set_label()
