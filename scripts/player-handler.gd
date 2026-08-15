extends Node2D
@export var speed: int = 5
@export var friction: float = 0.8
@export var velocity: Vector2
@export var textures: AnimatedSprite2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	velocity += Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down") * speed
	velocity *= friction
	position += velocity
	if globals.health == 0:
		die()
		
func die():
	position = Vector2(500, 500)
	globals.health = 100
