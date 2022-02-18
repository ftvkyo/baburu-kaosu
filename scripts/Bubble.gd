extends RigidBody2D


export var color = Color(1.0, 1.0, 1.0)


func _ready():
	show()


func _draw():
	draw_arc(position, 50, 0, PI*2, 360, color)


func randomize_location():
	position.x = Consts.GameArea.position.x + randf() * Consts.GameArea.size.x
	position.y = Consts.GameArea.position.y + randf() * Consts.GameArea.size.y


func randomize_color():
	pass


func randomize_resources():
	pass
