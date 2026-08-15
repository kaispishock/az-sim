extends Node

@export var heartCount: int= 10
@export var maxHealth: int = 100
@export var heart_full: Texture2D
@export var heart_empty: Texture2D
@onready var canvas = $canvas
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var difference = maxHealth / heartCount
	for i in range(heartCount):
		if globals.health < difference * i:
			heart_empty.draw(canvas, Vector2((i-1) * 10, 0))
		else:
			heart_full.draw(canvas, Vector2((i-1)* 10, 0))
	pass
