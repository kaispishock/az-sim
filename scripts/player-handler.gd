extends Node2D
@export var speed: int = 5
@export var friction: float = 0.8
@export var velocity: Vector2
@export var textures: AnimatedSprite2D
var is_Dying = false
var car = preload("res://scripts/car.tscn")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#if is_Dying:
		#return
	velocity += Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down") * speed

	velocity *= friction
	position += velocity
	if globals.health == 0:
		die()
	if (position.x < 40 or position.x > 930) and is_Dying == false:
		is_Dying = true
		var cod = car.instantiate()
		add_child(cod)
		cod.position = Vector2(self.position.x, self.position.y + 50)
		await get_tree().create_timer(0.15).timeout
		die()
		
func die():
	position = Vector2(500, 500)
	globals.health = 100
	is_Dying = false
