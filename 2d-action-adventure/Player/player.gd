extends CharacterBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#create a vector for the move and slide function
	var move_vector: Vector2 = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	var speed: float = 40
	
	velocity = move_vector * speed
	
	if velocity.x > 0:
		$AnimatedSprite2D.play("move_right")
		
		
	if velocity.x < 0 :
		$AnimatedSprite2D.play("move_left")
		
	if velocity.y < 0 :
		$AnimatedSprite2D.play("move_up")
		
	if velocity.y > 0 :
		$AnimatedSprite2D.play("move_down")
		
	if velocity == Vector2(0,0):
		$AnimatedSprite2D.stop()
		
	
		
		
	
	move_and_slide()
