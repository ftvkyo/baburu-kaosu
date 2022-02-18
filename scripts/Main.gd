extends Node


export (PackedScene) var bubble_scene


var bubbles = []
var current_bubble = 0


func _ready():
	randomize()

	var first_bubble = bubble_scene.instance()
	first_bubble.position = Vector2.ZERO;
	bubbles.push_back(first_bubble)
	
	for _i in range(Consts.BubblesToSpawn - 1):
		var bubble = bubble_scene.instance()
		bubble.randomize_location()
		bubble.randomize_color()
		bubble.randomize_resources()
		bubbles.push_back(bubble)

	for i in range(Consts.BubblesToSpawn):
		add_child(bubbles[i])


func _process(delta):
	if Input.is_action_just_pressed("ui_reset"):
		$PlayerCamera.reset(bubbles[current_bubble].position)

	if Input.is_action_just_pressed("toggle_fullscreen"):
		OS.set_window_fullscreen(!OS.window_fullscreen)

	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().quit()
