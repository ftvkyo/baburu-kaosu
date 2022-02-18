extends Node


func _ready():
	randomize()


func _process(delta):
	if Input.is_action_just_pressed("toggle_fullscreen"):
		OS.set_window_fullscreen(!OS.window_fullscreen)

	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().quit()
