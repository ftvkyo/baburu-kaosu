extends Node2D



func _ready():
	randomize()



func _draw():
	# Draw the world center
	draw_line(Vector2(-10, -10), Vector2(10, 10), Color(0, 0, 0))
	draw_line(Vector2(10, -10), Vector2(-10, 10), Color(0, 0, 0))


func _process(_delta):
	if Input.is_action_just_pressed("ui_reset"):
		var current_bubble = $BubbleContainer.bubbles[$BubbleContainer.current_bubble]
		$PlayerCamera.reset(current_bubble.position)

	if Input.is_action_just_pressed("toggle_fullscreen"):
		OS.set_window_fullscreen(!OS.window_fullscreen)

	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().quit()
