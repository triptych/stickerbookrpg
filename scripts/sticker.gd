extends KinematicBody2D


var dragging = false
var rng = RandomNumberGenerator.new()

signal dragsignal


func _ready():
	randomize()
	rng.randomize()
	$sprite.frame = rng.randi_range(60, 360)
	pass

func _process(delta):
	#print(dragging)
	if dragging:
		print('dragging')
		var mousepos = get_viewport().get_mouse_position()
		self.position = mousepos
		

func _on_sticker_dragsignal():
	# print('dragsignal')
	dragging = !dragging
	pass # Replace with function body.


func _on_sticker_input_event(viewport, event, shape_idx):
	# print("input")
	if event is  InputEventMouseButton:
		# print('mousebutton')
		if event.button_index == BUTTON_LEFT and event.pressed:
			# print("left button pressed")
			emit_signal("dragsignal") # turn on dragging
		elif event.button_index == BUTTON_LEFT and !event.pressed:
			emit_signal("dragsignal") # turn off dragging
	elif event is InputEventScreenTouch:
		if event.pressed and event.get_index() == 0:
			self.position = event.get_position()
