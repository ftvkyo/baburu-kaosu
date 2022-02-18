extends Camera2D


export var CameraSpeed = 1000


func _ready():
	pass


func _process(delta):
	if Input.is_action_pressed("ui_up"):
		position.y -= CameraSpeed * delta
	if Input.is_action_pressed("ui_down"):
		position.y += CameraSpeed * delta
	if Input.is_action_pressed("ui_left"):
		position.x -= CameraSpeed * delta
	if Input.is_action_pressed("ui_right"):
		position.x += CameraSpeed * delta
