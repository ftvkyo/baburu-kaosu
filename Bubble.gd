extends RigidBody2D


func _ready():
	show()


func _draw():
	draw_arc(position, 50, 0, PI*2, 360, Color(1.0, 1.0, 1.0))
