extends Label


var camera;
var debug_toggle


func _ready():
	camera = get_node("/root/Main/PlayerCamera")
	debug_toggle = get_node("../DebugToggle")


func _process(delta):
	text = ""
	if debug_toggle.pressed:
		text += "Camera: %+.1f, %+.1f\n" % [camera.position.x, camera.position.y]
