extends Label


var camera
var bubble_container
var debug_enabled


func _ready():
	bubble_container = get_node("/root/Main/BubbleContainer")
	camera = get_node("/root/Main/PlayerCamera")


func _process(delta):
	text = ""
	if debug_enabled:
		text += "Camera: (%+.1f, %+.1f), zoom: %.2f\n" % [camera.position.x, camera.position.y, camera.zoom.x]
		var bubble = bubble_container.current_bubble
		text += "Selected bubble: %s" % (str(bubble) if bubble >= 0 else "None")


func _on_DebugToggle_pressed():
	debug_enabled = get_node("../DebugToggle").pressed
