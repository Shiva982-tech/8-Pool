extends Node

@export var ball_scene : PackedScene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	new_game()
	
func new_game():
	generate_balls()
	
func generate_balls():
	#setup game balls
	var rows : int = 5
	var dia = 36
	for col in range(5):
		for row in range(rows):
			var b = ball_scene.instantiate()
			add_child(b)
			b.get.node("Sprite2D").texture = load("res://assests/ball_1.png")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
