extends Node2D


export (PackedScene) var world_border_segment


func _ready():
	var world_circle_length = Consts.GameRadius * TAU
	var world_border_segments_needed = ceil(world_circle_length / Consts.WorldBorderSegmentLength)

	for i in range(world_border_segments_needed):
		var wbs = world_border_segment.instance()

		var angle = (TAU / world_border_segments_needed) * i
		var pos = Vector2(cos(angle) * Consts.GameRadius, sin(angle) * Consts.GameRadius)

		wbs.position = pos
		wbs.rotation = angle - PI / 2

		add_child(wbs)
