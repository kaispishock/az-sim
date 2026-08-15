extends Node2D
@export var speed: int = 5
@export var friction: float = 0.8
@export var velocity: Vector2
@export var textures: AnimatedSprite2D
@export var collider: Area2D
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
	handlePlayerColissions()

func handlePlayerColissions():
	
	if collider.get_overlapping_areas() == null:
		return
	var colissions: Array[Area2D] = collider.get_overlapping_areas()
	var collide:  Array[String] = []
	for i in colissions:
		collide.append(i.name)
	if "cactusArea" in collide:
		globals.health = 0
		
	if "houseCollider" in collide:
		position -= velocity*2
		
		
func die():
	position = Vector2(0, 150)
	globals.health = 100
