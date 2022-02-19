extends Label


var camera;
var debug_enabled;


func _ready():
	camera = get_node("/root/Main/PlayerCamera")


func _process(delta):
	text = ""
	if debug_enabled:
		text += "Camera: (%+.1f, %+.1f), zoom: %.2f\n" % [camera.position.x, camera.position.y, camera.zoom.x]


func _on_DebugToggle_pressed():
	debug_enabled = get_node("../DebugToggle").pressed
