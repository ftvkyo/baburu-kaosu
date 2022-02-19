extends RigidBody2D


signal bubble_clicked(id)


export var color = Color(1, 1, 1)
export var selectedRingColor = Color(1, 1, 0)
export var selected = false
var id


func _ready():
	get_node("BubbleCollision").shape.radius = Consts.BubbleRadius


func _draw():
	if selected:
		draw_arc($BubbleSprite.position, Consts.BubbleRadius + 10, 0, TAU, 360, selectedRingColor)


func randomize_location():
	var angle = randf() * TAU
	var distance = randf() * (Consts.GameRadius - Consts.BubbleRadius)
	
	position = Vector2(cos(angle) * distance, sin(angle) * distance)


func randomize_velocity():
	var angle = randf() * TAU
	var impulse = randf() * 1000

	apply_impulse(Vector2(0, 0), Vector2(cos(angle) * impulse, sin(angle) * impulse))


func randomize_resources():
	pass


func set_selected(s):
	selected = s
	update()


func _on_Bubble_item_rect_changed():
	update()


func _on_Bubble_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == BUTTON_LEFT:
		emit_signal("bubble_clicked", id)
		get_tree().set_input_as_handled()
