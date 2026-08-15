extends Node2D
@export var speed: int = 10
@export var friction: float = 0.8
@export var velocity: Vector2
@export var textures: AnimatedSprite2D
<<<<<<< HEAD
=======

>>>>>>> 7174af721347cdd560abe53ba1b6a280d087de6b
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	velocity += Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down") * speed
	velocity *= friction
	position += velocity
	textures.play(&"idle", 1.0)
