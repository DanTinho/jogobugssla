extends Area2D

const SPEED := 400
@onready var screen_size = get_viewport_rect().size
@onready var anim: AnimatedSprite2D = $anim


func _ready():
	pass
	
	
func _process(delta):
	var velocity = Input.get_vector("move_left","move_right","move_up","move_down")
	
	if velocity.length() > 0:
		velocity = velocity.normalized() * SPEED
		
	position += velocity * delta
	position = position.clamp(Vector2.ZERO, screen_size)
	
