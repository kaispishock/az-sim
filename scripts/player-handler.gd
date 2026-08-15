extends Node2D
@export var speed: int = 20
@export var friction: float = 0.8
@export var velocity: Vector2
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	velocity += Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down") * speed
	velocity *= friction
	position += velocity
