extends Camera2D


export var CameraSpeed = 1000
export var ZoomSpeed = 2
export var ZoomClosest = 0.25
export var ZoomFurthest= 5


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

	if Input.is_action_pressed("ui_zoom_in"):
		zoom *= 1 - ZoomSpeed * delta
	if Input.is_action_pressed("ui_zoom_out"):
		zoom *= 1 + ZoomSpeed * delta

	zoom.x = clamp(zoom.x, ZoomClosest, ZoomFurthest)
	zoom.y = clamp(zoom.y, ZoomClosest, ZoomFurthest)


func reset(pos):
	position = pos
	zoom = Vector2.ONE
