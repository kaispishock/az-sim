extends Node2D
var amount: int = 24
@onready var dustImage: Sprite2D = $DustStorm
@onready var dustArea: Area2D = $dustArea

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x += 5
	print(position.x)
	if position.x >= 700:
		position = Vector2(-700, position.y)
			
	var overlaps = dustArea.get_overlapping_areas()
	for i in overlaps:
		if i.name == "playerArea":
			await get_tree().create_timer(0.3).timeout
			globals.health = 0
	#amount -= 1
	#if amount < 1:
		#amount = 24
		#var newDust: Sprite2D = dustImage.duplicate()
		#newDust.position = Vector2(dustArea.position.x-(dustArea.scale.x)/2, dustArea.position.y)
		#task_id = WorkerThreadPool.add_task(my_heavy_task)
#func dustCreate()

	
