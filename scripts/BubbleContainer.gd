extends Node2D


export (PackedScene) var bubble_scene


export var bubbles = []
export var current_bubble = -1


func _ready():
	for i in range(Consts.BubblesToSpawn):
		var bubble = bubble_scene.instance()
		bubble.id = i;
		bubble.randomize_location()
		bubble.randomize_velocity()
		bubble.randomize_resources()
		add_child(bubble)
		bubble.connect("bubble_clicked", self, "_on_bubble_clicked")
		bubbles.push_back(bubble)

	bubbles[0].position = Vector2.ZERO


func _on_bubble_clicked(id):
	bubbles[current_bubble].set_selected(false)
	bubbles[id].set_selected(true)
	current_bubble = id
