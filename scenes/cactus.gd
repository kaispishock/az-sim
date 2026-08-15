extends Node2D
@onready var collider: Area2D = $Area2D
@onready var playerArea: Area2D = $playerArea
# Called when the node enters the scene tree for the first time.
func _ready() -> void: # runs once and void means it reutns nothing
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	collider.
	
	
func _on_body_entered(body: Node2D) -> void:
	if body == playerArea:
		print("hi")
		
