extends StaticBody2D


func _ready():
	get_node("WorldBorderSegmentCollision").shape.extents = Vector2(Consts.WorldBorderSegmentLength / 2, 10)
