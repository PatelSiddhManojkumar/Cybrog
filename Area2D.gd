extends Area2D
var speed = 50
const JUMP =100
const GRAVITY =50
func _process(delta):
	position.x += speed + delta
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("jump"):
		velocity.y=JUMP
	velocity.y=velocity.y + GRAVITY
