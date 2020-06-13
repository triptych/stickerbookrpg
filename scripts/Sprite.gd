extends Sprite

var rng = RandomNumberGenerator.new()

func _ready():
	randomize()
	rng.randomize()
	frame = rng.randi_range(60, 360)
