extends Node2D
@onready var spirte: Sprite2D = $Map # obtaining asset
var cactus = preload("res://scenes/cactus.tscn")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	#print("TEST")
	for i in range (50):
		var init = cactus.instantiate()
		add_child(init)
		init.position = Vector2(randi() % 950, -(randi() % 1000 + 150))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
