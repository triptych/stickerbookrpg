extends Node

var sticker = preload("res://scenes/sticker.tscn")


func _ready():
	randomize()
	for x in range(10):
		print(x)
		generateSticker(Vector2(rand_range(0,600) , rand_range(0,400)))	
	
	
	
	pass
	
func generateSticker(vector):
	var main = get_tree().current_scene
	var stickerInstance = sticker.instance()
	main.add_child(stickerInstance)
	stickerInstance.position = vector	
