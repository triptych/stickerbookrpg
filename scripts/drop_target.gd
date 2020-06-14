extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass



func _on_ColorRect_gui_input(event):
	# print("input", event)
	if event is InputEventMouseButton:
		print("mouse button")
		if event.button_index == BUTTON_LEFT:
			print("button left")
	pass # Replace with function body.


func _on_KinematicBody2D_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		print("kinematic mouse button")
		if event.button_index == BUTTON_LEFT:
			print("kinematic button left")
			if event.pressed:
				print("pressed")
			elif !event.pressed:
				print('unpressed')	
	
	pass # Replace with function body.


func _on_Area2D_area_entered(area):
	print("area entered ", area)
	if area.is_in_group("sticker"): 
		print('is a sticker')
		$ColorRect.color= Color(1,0,0)
		pass # Replace with function body.


func _on_Area2D_area_exited(area):
	print("area exited ", area)
	if area.is_in_group("sticker"):
		print('is a sticker')
		$ColorRect.color = Color(0,1,0)
	pass # Replace with function body.
